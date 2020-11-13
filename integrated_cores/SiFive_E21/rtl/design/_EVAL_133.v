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
module _EVAL_133(
  input         _EVAL,
  output [1:0]  _EVAL_0,
  input         _EVAL_1,
  input         _EVAL_2,
  output        _EVAL_3,
  input  [2:0]  _EVAL_4,
  input  [31:0] _EVAL_5,
  input  [1:0]  _EVAL_6,
  output        _EVAL_7,
  input         _EVAL_8,
  output [1:0]  _EVAL_9,
  output        _EVAL_10,
  output [2:0]  _EVAL_11,
  output [31:0] _EVAL_12,
  output        _EVAL_13,
  output        _EVAL_14,
  output        _EVAL_15,
  input         _EVAL_16
);
  wire  widx_gray__EVAL;
  wire  widx_gray__EVAL_0;
  wire  widx_gray__EVAL_1;
  wire  widx_gray__EVAL_2;
  wire [1:0] _EVAL_17;
  wire [34:0] _EVAL_18;
  wire  _EVAL_19;
  wire [42:0] _EVAL_20;
  wire  deq_bits_reg__EVAL;
  wire  deq_bits_reg__EVAL_0;
  wire [42:0] deq_bits_reg__EVAL_1;
  wire [42:0] deq_bits_reg__EVAL_2;
  reg  _EVAL_21;
  reg [31:0] _RAND_0;
  wire  _EVAL_22;
  reg  _EVAL_23;
  reg [31:0] _RAND_1;
  wire [7:0] _EVAL_24;
  reg  _EVAL_25;
  reg [31:0] _RAND_2;
  wire  _EVAL_26;
  _EVAL_130 widx_gray (
    ._EVAL(widx_gray__EVAL),
    ._EVAL_0(widx_gray__EVAL_0),
    ._EVAL_1(widx_gray__EVAL_1),
    ._EVAL_2(widx_gray__EVAL_2)
  );
  _EVAL_132 deq_bits_reg (
    ._EVAL(deq_bits_reg__EVAL),
    ._EVAL_0(deq_bits_reg__EVAL_0),
    ._EVAL_1(deq_bits_reg__EVAL_1),
    ._EVAL_2(deq_bits_reg__EVAL_2)
  );
  assign deq_bits_reg__EVAL_0 = _EVAL_1;
  assign _EVAL_19 = widx_gray__EVAL_1;
  assign deq_bits_reg__EVAL_1 = {_EVAL_24,_EVAL_18};
  assign _EVAL_17 = _EVAL_25 + _EVAL_26;
  assign _EVAL_24 = {_EVAL_4,2'h0,_EVAL_6,_EVAL_8};
  assign _EVAL_20 = deq_bits_reg__EVAL_2;
  assign _EVAL_9 = _EVAL_20[37:36];
  assign _EVAL_7 = _EVAL_21;
  assign _EVAL_10 = _EVAL_20[35];
  assign _EVAL_11 = _EVAL_20[42:40];
  assign _EVAL_0 = _EVAL_20[39:38];
  assign _EVAL_22 = _EVAL_17[0];
  assign deq_bits_reg__EVAL = _EVAL_22 != _EVAL_19;
  assign _EVAL_15 = _EVAL_20[33];
  assign _EVAL_18 = {2'h0,_EVAL_5,1'h0};
  assign _EVAL_3 = _EVAL_23;
  assign widx_gray__EVAL_2 = _EVAL_2;
  assign _EVAL_12 = _EVAL_20[32:1];
  assign _EVAL_14 = _EVAL_20[34];
  assign _EVAL_13 = _EVAL_20[0];
  assign widx_gray__EVAL = _EVAL;
  assign widx_gray__EVAL_0 = _EVAL_1;
  assign _EVAL_26 = _EVAL_16 & _EVAL_3;
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
  _EVAL_21 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_23 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_25 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_2) begin
    _EVAL_21 = 1'h0;
  end
  if (_EVAL_2) begin
    _EVAL_23 = 1'h0;
  end
  if (_EVAL_2) begin
    _EVAL_25 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_1 or posedge _EVAL_2) begin
    if (_EVAL_2) begin
      _EVAL_21 <= 1'h0;
    end else begin
      _EVAL_21 <= _EVAL_17[0];
    end
  end
  always @(posedge _EVAL_1 or posedge _EVAL_2) begin
    if (_EVAL_2) begin
      _EVAL_23 <= 1'h0;
    end else begin
      _EVAL_23 <= _EVAL_22 != _EVAL_19;
    end
  end
  always @(posedge _EVAL_1 or posedge _EVAL_2) begin
    if (_EVAL_2) begin
      _EVAL_25 <= 1'h0;
    end else begin
      _EVAL_25 <= _EVAL_17[0];
    end
  end
endmodule
