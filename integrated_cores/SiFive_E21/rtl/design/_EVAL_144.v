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
module _EVAL_144(
  input         _EVAL,
  output        _EVAL_0,
  output [1:0]  _EVAL_1,
  output [31:0] _EVAL_2,
  input         _EVAL_3,
  input         _EVAL_4,
  input  [31:0] _EVAL_5,
  input         _EVAL_6,
  output [2:0]  _EVAL_7,
  input  [1:0]  _EVAL_8,
  output        _EVAL_9,
  input         _EVAL_10,
  input  [2:0]  _EVAL_11,
  output        _EVAL_12
);
  wire  _EVAL_13;
  wire  _EVAL_14;
  reg [31:0] _EVAL_15;
  reg [31:0] _RAND_0;
  wire  _EVAL_16;
  wire  _EVAL_17;
  reg [2:0] _EVAL_18;
  reg [31:0] _RAND_1;
  wire  ridx_gray__EVAL;
  wire  ridx_gray__EVAL_0;
  wire  ridx_gray__EVAL_1;
  wire  ridx_gray__EVAL_2;
  wire [1:0] _EVAL_19;
  reg  _EVAL_20;
  reg [31:0] _RAND_2;
  reg [1:0] _EVAL_21;
  reg [31:0] _RAND_3;
  wire  _EVAL_22;
  reg  _EVAL_23;
  reg [31:0] _RAND_4;
  reg  _EVAL_24;
  reg [31:0] _RAND_5;
  reg  _EVAL_25;
  reg [31:0] _RAND_6;
  _EVAL_140 ridx_gray (
    ._EVAL(ridx_gray__EVAL),
    ._EVAL_0(ridx_gray__EVAL_0),
    ._EVAL_1(ridx_gray__EVAL_1),
    ._EVAL_2(ridx_gray__EVAL_2)
  );
  assign _EVAL_16 = _EVAL_12 & _EVAL;
  assign _EVAL_9 = _EVAL_23;
  assign _EVAL_14 = _EVAL_19[0];
  assign ridx_gray__EVAL_0 = _EVAL_4;
  assign _EVAL_2 = _EVAL_15;
  assign _EVAL_13 = ridx_gray__EVAL_1;
  assign _EVAL_1 = _EVAL_21;
  assign _EVAL_22 = _EVAL_6;
  assign _EVAL_7 = _EVAL_18;
  assign _EVAL_12 = _EVAL_24;
  assign _EVAL_19 = _EVAL_25 + _EVAL_16;
  assign ridx_gray__EVAL = _EVAL_6;
  assign _EVAL_17 = _EVAL_13 ^ 1'h1;
  assign _EVAL_0 = _EVAL_20;
  assign ridx_gray__EVAL_2 = _EVAL_3;
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
  _EVAL_15 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_18 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_20 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_21 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_23 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_24 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _EVAL_25 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_22) begin
    _EVAL_23 = 1'h0;
  end
  if (_EVAL_22) begin
    _EVAL_24 = 1'h0;
  end
  if (_EVAL_22) begin
    _EVAL_25 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_4) begin
    if (_EVAL_16) begin
      _EVAL_15 <= _EVAL_5;
    end
    if (_EVAL_16) begin
      _EVAL_18 <= _EVAL_11;
    end
    if (_EVAL_16) begin
      _EVAL_20 <= _EVAL_10;
    end
    if (_EVAL_16) begin
      _EVAL_21 <= _EVAL_8;
    end
  end
  always @(posedge _EVAL_4 or posedge _EVAL_22) begin
    if (_EVAL_22) begin
      _EVAL_23 <= 1'h0;
    end else begin
      _EVAL_23 <= _EVAL_19[0];
    end
  end
  always @(posedge _EVAL_4 or posedge _EVAL_22) begin
    if (_EVAL_22) begin
      _EVAL_24 <= 1'h0;
    end else begin
      _EVAL_24 <= _EVAL_14 != _EVAL_17;
    end
  end
  always @(posedge _EVAL_4 or posedge _EVAL_22) begin
    if (_EVAL_22) begin
      _EVAL_25 <= 1'h0;
    end else begin
      _EVAL_25 <= _EVAL_19[0];
    end
  end
endmodule
