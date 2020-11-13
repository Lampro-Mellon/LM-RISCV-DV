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
module _EVAL_50_assert(
  input         _EVAL_1,
  input         _EVAL_16,
  input  [31:0] _EVAL_28,
  input         _EVAL_34,
  input  [31:0] _EVAL_85,
  input         _EVAL_145,
  input         _EVAL_163,
  input         _EVAL_201
);
  reg [31:0] _EVAL_36;
  reg [31:0] _RAND_0;
  wire  _EVAL_55;
  wire  _EVAL_76;
  wire  _EVAL_84;
  wire  _EVAL_105;
  wire  _EVAL_111;
  wire  _EVAL_129;
  reg  _EVAL_130;
  reg [31:0] _RAND_1;
  wire [31:0] _EVAL_132;
  wire  _EVAL_144;
  wire  _EVAL_152;
  assign _EVAL_129 = ~_EVAL_130;
  assign _EVAL_55 = _EVAL_36 == _EVAL_132;
  assign _EVAL_84 = ~_EVAL_111;
  assign _EVAL_111 = _EVAL_76 | _EVAL_1;
  assign _EVAL_144 = _EVAL_145 & _EVAL_163;
  assign _EVAL_132 = _EVAL_201 ? _EVAL_28 : _EVAL_85;
  assign _EVAL_105 = _EVAL_34 & _EVAL_152;
  assign _EVAL_152 = ~_EVAL_144;
  assign _EVAL_76 = _EVAL_129 | _EVAL_55;
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
  _EVAL_36 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_130 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_16) begin
    if (_EVAL_201) begin
      _EVAL_36 <= _EVAL_28;
    end else begin
      _EVAL_36 <= _EVAL_85;
    end
    if (_EVAL_1) begin
      _EVAL_130 <= 1'h0;
    end else begin
      _EVAL_130 <= _EVAL_105;
    end
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_84) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_84) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(e0099984)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
