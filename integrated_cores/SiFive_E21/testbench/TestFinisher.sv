//
// Copyright (c) 2016-2020 SiFive, Inc. -- Proprietary and Confidential
// All Rights Reserved.
//
// NOTICE: All information contained herein is, and remains the
// property of SiFive, Inc. The intellectual and technical concepts
// contained herein are proprietary to SiFive, Inc. and may be covered
// by U.S. and Foreign Patents, patents in process, and are protected by
// trade secret or copyright law.
//
// This work may not be copied, modified, re-published, uploaded,
// executed, or distributed in any way, in any medium, whether in whole
// or in part, without prior written permission from SiFive, Inc.
//
// The copyright notice above does not evidence any actual or intended
// publication or disclosure of this source code, which includes
// information that is confidential and/or proprietary, and is a trade
// secret, of SiFive, Inc.
//
// Instance ID: b21cef66-00f3-44d5-a188-807f478b1270, 00000000-0000-0000-0000-000000000000, 00000000-0000-0000-0000-000000000000
// See LICENSE.SiFive for license details.

/** This black-boxes verilog machinery for ending simulations
  * based on test results.
  *
  * This interacts with a TLTestIndicator widget in the core-subsystem.
  *  
  *  @param NCONCURRENT number of concurrent test(s)
  *  @param CODEBITS Width of error code
  *  @param REGBYTES number of bytes in the status register
  *  @param STATUS_REG_t typedef of each status register (derived from above)
  *  
  */


`ifdef VERILATOR
  `define EDGE edge
  `define STATIC
`else
  `define EDGE
  `define STATIC static
`endif

`ifdef VCS
  `define ASSERT_FINAL assert final
`else
  `define ASSERT_FINAL assert
`endif


interface TestFinisher #(
  parameter NCONCURRENT = 1,
  parameter CODEBITS    = 16,
  parameter REGBYTES    = 4,
  parameter type STATUS_REG_t = bit [8*REGBYTES-1:0]
) (
  input STATUS_REG_t status_regs [NCONCURRENT],
  input bit clock,
  input bit reset
);

  typedef bit [CODEBITS-1:0] STATUS_t;
  typedef bit [CODEBITS-1:0] ERRCODE_t;

  typedef struct packed {
    bit complete;
    bit success;
    struct packed {
      int       idx;
      ERRCODE_t code;
    } first_error;
  } result_t;

  // use some local parameters as constants
  localparam integer unsigned STDERR_fh = 32'h80000002;
  localparam STATUS_t SUCCESSCODE       = 16'h5555;
  localparam STATUS_t FAILCODE          = 16'h3333;
  localparam STATUS_t PEND              = 16'h0;

  initial begin
    `STATIC string instance_path = $sformatf("%m");
    $display("TestFinisher instance path is %s\n", instance_path);
  end


  // Note: these could probably just use the let-construct in SV, but doubtful
  //       whether the let-construct is supported in all simulators 
  //       (i.e. Verilator)
  function STATUS_t f_status (STATUS_REG_t s);
    return s[CODEBITS-1:0];
  endfunction : f_status

  function bit f_pending (STATUS_REG_t s);
    return (f_status(s) === PEND); 
  endfunction : f_pending

  function bit f_succeeded (STATUS_REG_t s);
    return (f_status(s) === SUCCESSCODE);
  endfunction : f_succeeded

  function bit f_failed (STATUS_REG_t s);
    return (f_status(s) === FAILCODE);
  endfunction : f_failed

  function ERRCODE_t f_error(STATUS_REG_t s);
    return s[CODEBITS +: CODEBITS];
  endfunction : f_error

  function void report_result(result_t r, longint unsigned cycle);
    // NOTE: there is a non-zero chance that a test might write randomly write
    //       this register with the value that results in a false-pass
    if (r.success) begin : finish_on_success
      $fdisplay(STDERR_fh, "\n*** PASSED *** all tests passed after %0d simulation cycles (in %m)", cycle);
      $finish;
    end : finish_on_success
    else begin : FAIL
      $fdisplay(STDERR_fh, "\n*** FAILED *** test %0d had error code %0d (0x%0x) after %0d simulation cycles (in %m)", 
                r.first_error.idx, r.first_error.code, r.first_error.code, cycle);
      $fatal;
    end : FAIL
  endfunction : report_result

  bit [NCONCURRENT-1:0] pending;
  always_comb begin
    foreach (status_regs [ index ] ) begin
      pending[index] = f_pending(status_regs[index]);
    end
  end

  // '$time() > 1' qualification needed to block propagation of time-0 
  //     glitches on 'clock'/'reset' to 'done'
  bit done /*verilator clock_enable*/;
  always_ff @(posedge clock or `EDGE reset) begin
    done <= ($time() > 1) && !reset && !(|pending);
  end

  longint unsigned  max_cycles  = '1; // default value is max-longint
  initial begin: set_max_cycle
    // if present, get value from +max-cycles, otherwise reset to default
    if ($value$plusargs("max-cycles=%d", max_cycles) === 0) begin
      max_cycles = '1;
    end
  end: set_max_cycle

  longint unsigned trace_count;
  always_ff @(posedge clock) begin
    if (reset) begin
      trace_count <= '0;
    end else begin
      trace_count <= trace_count + 64'd1;
    end

    // max_cycle_error assertion can be disabled with assertion control
    max_cycle_error : `ASSERT_FINAL (trace_count < max_cycles) else begin
      $fdisplay(STDERR_fh, "\n*** FAILED *** timeout after %0d simulation cycles (in %m)", trace_count);
      $fatal(2, "\n*** FAILED *** timeout after %0d simulation cycles (in %m)", trace_count);
    end
  end

  result_t result;
  always_comb begin
    bit       success;
    int       idx;
    ERRCODE_t code;

    if (done === 1'b1) begin
      bit [NCONCURRENT-1:0] ftmp, stmp;

      foreach (status_regs [ index ] ) begin
        stmp[index] = f_succeeded(status_regs[index]);
        ftmp[index] = f_failed(status_regs[index]);
        if (ftmp[index] == 1'b1) begin
          idx = index;
          break;
        end
      end

      success = &stmp;
      code    = f_error(status_regs[idx]);
    end else begin
      success = 1'b0;
      code    = 16'hDEAD;
      idx     = -1;
    end
    result = '{
      complete: done,
      success: success,
      first_error: '{
        idx: idx,
        code: code
      }
    };
  end

`ifdef VERILATOR
  bit done_clk;
  assign done_clk = done && clock;
  always @(negedge done_clk) begin : send_result
    if (done === 1'b1) begin
      report_result(result, trace_count);
    end
  end : send_result
`else
  // model send_result action as a one-shot because non-Verilator simulations can also contain
  // multiple-tops and UVM tests
  initial begin : send_result
    wait(done === 1'b1);
    report_result(result, trace_count);
  end : send_result
`endif

endinterface : TestFinisher

`undef EDGE
`undef STATIC
