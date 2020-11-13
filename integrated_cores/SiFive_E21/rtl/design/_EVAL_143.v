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
module _EVAL_143(
  output [8:0]  _EVAL,
  output [3:0]  _EVAL_0,
  output [2:0]  _EVAL_1,
  input  [8:0]  _EVAL_2,
  input  [3:0]  _EVAL_3,
  output [2:0]  _EVAL_4,
  output        _EVAL_5,
  input         _EVAL_6,
  input  [2:0]  _EVAL_7,
  output [31:0] _EVAL_8,
  output [1:0]  _EVAL_9,
  input  [31:0] _EVAL_10,
  input         _EVAL_11,
  output        _EVAL_12,
  output        _EVAL_13,
  input         _EVAL_14,
  output        _EVAL_15,
  input         _EVAL_16
);
  wire  _EVAL_17;
  wire [8:0] _EVAL_18;
  wire [1:0] _EVAL_19;
  wire  _EVAL_20;
  wire  _EVAL_21;
  wire  widx_gray__EVAL;
  wire  widx_gray__EVAL_0;
  wire  widx_gray__EVAL_1;
  wire  widx_gray__EVAL_2;
  wire  _EVAL_22;
  reg  _EVAL_23;
  reg [31:0] _RAND_0;
  reg  _EVAL_24;
  reg [31:0] _RAND_1;
  reg  _EVAL_25;
  reg [31:0] _RAND_2;
  wire [54:0] deq_bits_reg__EVAL;
  wire  deq_bits_reg__EVAL_0;
  wire [54:0] deq_bits_reg__EVAL_1;
  wire  deq_bits_reg__EVAL_2;
  wire [54:0] _EVAL_26;
  wire [45:0] _EVAL_27;
  _EVAL_140 widx_gray (
    ._EVAL(widx_gray__EVAL),
    ._EVAL_0(widx_gray__EVAL_0),
    ._EVAL_1(widx_gray__EVAL_1),
    ._EVAL_2(widx_gray__EVAL_2)
  );
  _EVAL_142 deq_bits_reg (
    ._EVAL(deq_bits_reg__EVAL),
    ._EVAL_0(deq_bits_reg__EVAL_0),
    ._EVAL_1(deq_bits_reg__EVAL_1),
    ._EVAL_2(deq_bits_reg__EVAL_2)
  );
  assign _EVAL_0 = _EVAL_26[36:33];
  assign _EVAL_20 = widx_gray__EVAL_1;
  assign widx_gray__EVAL = _EVAL_11;
  assign _EVAL_21 = _EVAL_19[0];
  assign deq_bits_reg__EVAL_2 = _EVAL_21 != _EVAL_20;
  assign _EVAL_18 = {_EVAL_7,3'h0,3'h4};
  assign widx_gray__EVAL_0 = _EVAL_16;
  assign deq_bits_reg__EVAL_0 = _EVAL_16;
  assign _EVAL_15 = _EVAL_23;
  assign _EVAL_4 = _EVAL_26[51:49];
  assign _EVAL_12 = _EVAL_25;
  assign _EVAL_26 = deq_bits_reg__EVAL_1;
  assign _EVAL_22 = _EVAL_11;
  assign _EVAL_17 = _EVAL_6 & _EVAL_12;
  assign _EVAL_13 = _EVAL_26[46];
  assign _EVAL_27 = {_EVAL_2,_EVAL_3,_EVAL_10,1'h0};
  assign _EVAL_5 = _EVAL_26[0];
  assign _EVAL_1 = _EVAL_26[54:52];
  assign _EVAL_19 = _EVAL_24 + _EVAL_17;
  assign _EVAL_9 = _EVAL_26[48:47];
  assign widx_gray__EVAL_2 = _EVAL_14;
  assign deq_bits_reg__EVAL = {_EVAL_18,_EVAL_27};
  assign _EVAL_8 = _EVAL_26[32:1];
  assign _EVAL = _EVAL_26[45:37];
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
  _EVAL_23 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_24 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_25 = _RAND_2[0:0];
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
  always @(posedge _EVAL_16 or posedge _EVAL_22) begin
    if (_EVAL_22) begin
      _EVAL_23 <= 1'h0;
    end else begin
      _EVAL_23 <= _EVAL_19[0];
    end
  end
  always @(posedge _EVAL_16 or posedge _EVAL_22) begin
    if (_EVAL_22) begin
      _EVAL_24 <= 1'h0;
    end else begin
      _EVAL_24 <= _EVAL_19[0];
    end
  end
  always @(posedge _EVAL_16 or posedge _EVAL_22) begin
    if (_EVAL_22) begin
      _EVAL_25 <= 1'h0;
    end else begin
      _EVAL_25 <= _EVAL_21 != _EVAL_20;
    end
  end
endmodule
