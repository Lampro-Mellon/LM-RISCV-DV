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
module _EVAL_147(
  output       _EVAL,
  output       _EVAL_0,
  input        _EVAL_1,
  input        _EVAL_2,
  input        _EVAL_3,
  input        _EVAL_4,
  output       _EVAL_5,
  input        _EVAL_6,
  input        _EVAL_7,
  output       _EVAL_8,
  output [9:0] _EVAL_9,
  output       _EVAL_10
);
  wire [2:0] _EVAL_11;
  wire [1:0] _EVAL_12;
  wire  widx_gray__EVAL;
  wire  widx_gray__EVAL_0;
  wire  widx_gray__EVAL_1;
  wire  widx_gray__EVAL_2;
  wire [11:0] _EVAL_13;
  wire [14:0] deq_bits_reg__EVAL;
  wire  deq_bits_reg__EVAL_0;
  wire  deq_bits_reg__EVAL_1;
  wire [14:0] deq_bits_reg__EVAL_2;
  wire  _EVAL_14;
  wire [14:0] _EVAL_15;
  wire  _EVAL_16;
  reg  _EVAL_17;
  reg [31:0] _RAND_0;
  reg  _EVAL_18;
  reg [31:0] _RAND_1;
  reg  _EVAL_19;
  reg [31:0] _RAND_2;
  wire  _EVAL_20;
  _EVAL_140 widx_gray (
    ._EVAL(widx_gray__EVAL),
    ._EVAL_0(widx_gray__EVAL_0),
    ._EVAL_1(widx_gray__EVAL_1),
    ._EVAL_2(widx_gray__EVAL_2)
  );
  _EVAL_146 deq_bits_reg (
    ._EVAL(deq_bits_reg__EVAL),
    ._EVAL_0(deq_bits_reg__EVAL_0),
    ._EVAL_1(deq_bits_reg__EVAL_1),
    ._EVAL_2(deq_bits_reg__EVAL_2)
  );
  assign deq_bits_reg__EVAL = {_EVAL_13,_EVAL_11};
  assign _EVAL = _EVAL_15[3];
  assign deq_bits_reg__EVAL_0 = _EVAL_6;
  assign _EVAL_14 = widx_gray__EVAL_1;
  assign _EVAL_0 = _EVAL_15[0];
  assign _EVAL_9 = _EVAL_15[13:4];
  assign _EVAL_11 = {2'h0,_EVAL_7};
  assign _EVAL_15 = deq_bits_reg__EVAL_2;
  assign _EVAL_8 = _EVAL_15[14];
  assign _EVAL_10 = _EVAL_18;
  assign widx_gray__EVAL_2 = _EVAL_3;
  assign _EVAL_13 = {_EVAL_1,10'h0,_EVAL_2};
  assign deq_bits_reg__EVAL_1 = _EVAL_20 != _EVAL_14;
  assign widx_gray__EVAL = _EVAL_4;
  assign widx_gray__EVAL_0 = _EVAL_6;
  assign _EVAL_20 = _EVAL_12[0];
  assign _EVAL_16 = _EVAL_4;
  assign _EVAL_5 = _EVAL_19;
  assign _EVAL_12 = _EVAL_17 + _EVAL_5;
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
  _EVAL_17 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_18 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_19 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_16) begin
    _EVAL_17 = 1'h0;
  end
  if (_EVAL_16) begin
    _EVAL_18 = 1'h0;
  end
  if (_EVAL_16) begin
    _EVAL_19 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_6 or posedge _EVAL_16) begin
    if (_EVAL_16) begin
      _EVAL_17 <= 1'h0;
    end else begin
      _EVAL_17 <= _EVAL_12[0];
    end
  end
  always @(posedge _EVAL_6 or posedge _EVAL_16) begin
    if (_EVAL_16) begin
      _EVAL_18 <= 1'h0;
    end else begin
      _EVAL_18 <= _EVAL_12[0];
    end
  end
  always @(posedge _EVAL_6 or posedge _EVAL_16) begin
    if (_EVAL_16) begin
      _EVAL_19 <= 1'h0;
    end else begin
      _EVAL_19 <= _EVAL_20 != _EVAL_14;
    end
  end
endmodule
