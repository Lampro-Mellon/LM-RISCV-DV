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
module _EVAL_135(
  output  _EVAL,
  output  _EVAL_0,
  input   _EVAL_1,
  input   _EVAL_2,
  input   _EVAL_3,
  input   _EVAL_4,
  input   _EVAL_5,
  output  _EVAL_6,
  output  _EVAL_7,
  input   _EVAL_8,
  input   _EVAL_9,
  output  _EVAL_10
);
  reg  _EVAL_11;
  reg [31:0] _RAND_0;
  reg  _EVAL_12;
  reg [31:0] _RAND_1;
  wire  ridx_gray__EVAL;
  wire  ridx_gray__EVAL_0;
  wire  ridx_gray__EVAL_1;
  wire  ridx_gray__EVAL_2;
  wire  _EVAL_13;
  reg  _EVAL_14;
  reg [31:0] _RAND_2;
  reg  _EVAL_15;
  reg [31:0] _RAND_3;
  wire  _EVAL_16;
  reg  _EVAL_17;
  reg [31:0] _RAND_4;
  wire  _EVAL_18;
  reg  _EVAL_19;
  reg [31:0] _RAND_5;
  wire [1:0] _EVAL_20;
  wire  _EVAL_21;
  _EVAL_130 ridx_gray (
    ._EVAL(ridx_gray__EVAL),
    ._EVAL_0(ridx_gray__EVAL_0),
    ._EVAL_1(ridx_gray__EVAL_1),
    ._EVAL_2(ridx_gray__EVAL_2)
  );
  assign _EVAL_0 = _EVAL_12;
  assign _EVAL_18 = _EVAL_20[0];
  assign _EVAL = _EVAL_15;
  assign ridx_gray__EVAL = _EVAL_1;
  assign ridx_gray__EVAL_2 = _EVAL_8;
  assign _EVAL_20 = _EVAL_17 + _EVAL_21;
  assign _EVAL_10 = _EVAL_11;
  assign _EVAL_13 = _EVAL_16 ^ 1'h1;
  assign _EVAL_21 = _EVAL & _EVAL_4;
  assign _EVAL_16 = ridx_gray__EVAL_1;
  assign _EVAL_7 = _EVAL_19;
  assign ridx_gray__EVAL_0 = _EVAL_9;
  assign _EVAL_6 = _EVAL_14;
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
  _EVAL_11 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_12 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_14 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_15 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_17 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_19 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_8) begin
    _EVAL_11 = 1'h0;
  end
  if (_EVAL_8) begin
    _EVAL_15 = 1'h0;
  end
  if (_EVAL_8) begin
    _EVAL_17 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_9) begin
    if (_EVAL_21) begin
      _EVAL_12 <= _EVAL_5;
    end
    if (_EVAL_21) begin
      _EVAL_14 <= _EVAL_3;
    end
    if (_EVAL_21) begin
      _EVAL_19 <= _EVAL_2;
    end
  end
  always @(posedge _EVAL_9 or posedge _EVAL_8) begin
    if (_EVAL_8) begin
      _EVAL_11 <= 1'h0;
    end else begin
      _EVAL_11 <= _EVAL_20[0];
    end
  end
  always @(posedge _EVAL_9 or posedge _EVAL_8) begin
    if (_EVAL_8) begin
      _EVAL_15 <= 1'h0;
    end else begin
      _EVAL_15 <= _EVAL_18 != _EVAL_13;
    end
  end
  always @(posedge _EVAL_9 or posedge _EVAL_8) begin
    if (_EVAL_8) begin
      _EVAL_17 <= 1'h0;
    end else begin
      _EVAL_17 <= _EVAL_20[0];
    end
  end
endmodule
