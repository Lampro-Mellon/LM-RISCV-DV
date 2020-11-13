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
//VCS coverage exclude_file
module SiFive_DebugCompatibility_DebugCompatibility(
  input   clock,
  input   reset,
  input   debug_outer_reset,
  output  debug_clock,
  output  debug_reset,
  input   debug_dmactive,
  output  debug_dmactiveAck,
  output  debug_resetctrl_hartIsInReset_0
);
  wire  debug_reset_sync_clock;
  wire  debug_reset_sync_reset;
  wire  debug_reset_sync_io_q;
  wire  dmactiveAck_clock;
  wire  dmactiveAck_reset;
  wire  dmactiveAck_io_d;
  wire  dmactiveAck_io_q;
  wire  debug_clock_gate_in;
  wire  debug_clock_gate_test_en;
  wire  debug_clock_gate_en;
  wire  debug_clock_gate_out;
  wire  _T_1;
  wire  _T_3;
  reg  _T_5;
  reg [31:0] _RAND_0;
  SiFive_DebugCompatibility_AsyncResetSynchronizerShiftReg_w1_d3_i0 debug_reset_sync (
    .clock(debug_reset_sync_clock),
    .reset(debug_reset_sync_reset),
    .io_q(debug_reset_sync_io_q)
  );
  SiFive_DebugCompatibility_ResetSynchronizerShiftReg_w1_d3_i0_1 dmactiveAck (
    .clock(dmactiveAck_clock),
    .reset(dmactiveAck_reset),
    .io_d(dmactiveAck_io_d),
    .io_q(dmactiveAck_io_q)
  );
  EICG_wrapper debug_clock_gate (
    .in(debug_clock_gate_in),
    .test_en(debug_clock_gate_test_en),
    .en(debug_clock_gate_en),
    .out(debug_clock_gate_out)
  );
  assign _T_1 = debug_reset_sync_io_q;
  assign _T_3 = ~_T_1;
  assign debug_clock = debug_clock_gate_out;
  assign debug_reset = ~_T_1;
  assign debug_dmactiveAck = dmactiveAck_io_q;
  assign debug_resetctrl_hartIsInReset_0 = reset;
  assign debug_reset_sync_clock = clock;
  assign debug_reset_sync_reset = debug_outer_reset;
  assign dmactiveAck_clock = clock;
  assign dmactiveAck_reset = ~_T_1;
  assign dmactiveAck_io_d = debug_dmactive;
  assign debug_clock_gate_in = clock;
  assign debug_clock_gate_test_en = 1'h0;
  assign debug_clock_gate_en = _T_5;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_5 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_T_3) begin
    _T_5 = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock or posedge _T_3) begin
    if (_T_3) begin
      _T_5 <= 1'h1;
    end else begin
      _T_5 <= dmactiveAck_io_q;
    end
  end

endmodule
