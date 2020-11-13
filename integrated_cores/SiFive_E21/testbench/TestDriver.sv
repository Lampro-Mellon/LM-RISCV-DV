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


//`include "rtl/testbench/TestFinisher.sv"

// NOTE: because chisel/firrtl creates unique identfiers for each status_reg
//       instead of an unpacked array of status_regs, we use the
//       streaming-concatenation-operator to assign a vector to an unpacked
//       array of vectors
bind `INDICATOR
     TestFinisher #(.NCONCURRENT(1),
                    .REGBYTES(4))
     i_TF (.reset(reset),
           .clock(clock),
`ifndef VERILATOR
           .status_regs({>>{status_regs_0}}));
`else
           .status_regs('{status_regs_0}));

`endif


`ifdef VCS
  `define DUMPFILE(file) $vcdplusfile(file);
  `define DUMPON(i) $vcdpluson(i);
  `define DUMPMEMON(i) $vcdplusmemon(i);
  `define DUMPOFF $vcdplusclose; $dumpoff;
`else
  `define DUMPFILE(file) $dumpfile(file);
  `define DUMPON(i) $dumpvars(i); $dumpon;
  `define DUMPMEMON(i)
  `define DUMPOFF $dumpflush; $dumpoff;
`endif // not VCS

module TestDriver(
`ifdef VERILATOR
  clock,
  reset
`endif // VERILATOR
);
  timeunit 1ns;
  timeprecision 100ps;

`ifdef VERILATOR
  input bit clock /*verilator clocker*/;
  input bit reset;
`else
  bit clock = 1'b0;
  bit reset = 1'b1;

  always #1 clock = ~clock;
  initial #(777.7) reset = 0;

  initial begin
    $assertkill;
    #1
    $asserton;
  end

  initial begin: dump_control
    bit [255:0] [7:0] vcdplusfile = '0;
    if ($value$plusargs("vcdplusfile=%s", vcdplusfile))
    begin
      `DUMPFILE(vcdplusfile)
      `DUMPON(0)
      `DUMPMEMON(0)
    end
  end : dump_control
`endif // VERILATOR else
  
  // NOTE: The following logic is used to enable or disable the dumping of 
  // instruction trace by using a verbose flag in simulation runs. This 
  // is the instruction commit log generated during simulation.
  //
  // To duplicate this functionality in your own test environment,
  // this logic should be replicated in the testbenches and the 
  // +define+PRINTF_COND=TestDriver.printf_cond 
  // above define should be set in simulator compilation command.
  
  bit verbose = |($test$plusargs("verbose"));
  bit printf_cond;
  assign printf_cond = verbose && !reset;

  always @(negedge reset) begin: load_program
    bit [255:0] [7:0] testfile = '0;
    if ($value$plusargs("testfile=%s", testfile))
    begin
      $readmemh(testfile, testHarness.testRAM.sram.testharness.testharness_ext.ram);
    end
  end: load_program

  longint unsigned trace_count;
  always @(posedge clock)
  begin
    if (reset) begin
      trace_count <= '0;
    end else begin
      trace_count <= trace_count + 64'd1;
    end
  end

  `MODEL testHarness(
    .clock(clock),
    .reset(reset),
    .io_success()
  );

endmodule: TestDriver
