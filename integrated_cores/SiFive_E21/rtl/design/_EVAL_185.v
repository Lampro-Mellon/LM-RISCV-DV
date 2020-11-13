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
module _EVAL_185(
  output [4:0] _EVAL,
  input        _EVAL_0,
  input        _EVAL_1,
  output       _EVAL_2,
  input        _EVAL_3,
  input        _EVAL_4,
  output       _EVAL_5,
  output       _EVAL_6,
  output       _EVAL_7,
  output       _EVAL_8,
  input        _EVAL_9,
  output       _EVAL_10,
  input        _EVAL_11,
  output       _EVAL_12
);
  wire  _EVAL_13;
  wire  irChain__EVAL;
  wire  irChain__EVAL_0;
  wire  irChain__EVAL_1;
  wire  irChain__EVAL_2;
  wire  irChain__EVAL_3;
  wire [4:0] irChain__EVAL_4;
  wire  irChain__EVAL_5;
  wire  irChain__EVAL_6;
  wire  stateMachine__EVAL;
  wire  stateMachine__EVAL_0;
  wire  stateMachine__EVAL_1;
  wire [3:0] stateMachine__EVAL_2;
  wire  _EVAL_14;
  wire  _EVAL_15;
  wire  _EVAL_16;
  wire  _EVAL_17;
  reg [4:0] _EVAL_18;
  reg [31:0] _RAND_0;
  reg  _EVAL_19;
  reg [31:0] _RAND_1;
  reg  _EVAL_20;
  reg [31:0] _RAND_2;
  wire [3:0] _EVAL_22;
  wire  _EVAL_23;
  wire  _EVAL_24;
  wire  _EVAL_25;
  _EVAL_184 irChain (
    ._EVAL(irChain__EVAL),
    ._EVAL_0(irChain__EVAL_0),
    ._EVAL_1(irChain__EVAL_1),
    ._EVAL_2(irChain__EVAL_2),
    ._EVAL_3(irChain__EVAL_3),
    ._EVAL_4(irChain__EVAL_4),
    ._EVAL_5(irChain__EVAL_5),
    ._EVAL_6(irChain__EVAL_6)
  );
  _EVAL_183 stateMachine (
    ._EVAL(stateMachine__EVAL),
    ._EVAL_0(stateMachine__EVAL_0),
    ._EVAL_1(stateMachine__EVAL_1),
    ._EVAL_2(stateMachine__EVAL_2)
  );
  assign irChain__EVAL_1 = _EVAL_22 == 4'hd;
  assign _EVAL_7 = _EVAL_22 == 4'h5;
  assign _EVAL_14 = _EVAL_0;
  assign irChain__EVAL_3 = _EVAL_22 == 4'he;
  assign _EVAL_17 = _EVAL_13;
  assign _EVAL_8 = _EVAL_22 == 4'hf;
  assign _EVAL_2 = _EVAL_3;
  assign _EVAL_23 = _EVAL_22 == 4'ha;
  assign _EVAL_15 = _EVAL_22 == 4'hf;
  assign _EVAL_24 = _EVAL_22 == 4'h2;
  assign irChain__EVAL_6 = _EVAL_11;
  assign irChain__EVAL_5 = _EVAL_3;
  assign irChain__EVAL = _EVAL_0;
  assign _EVAL_5 = _EVAL_22 == 4'h6;
  assign _EVAL_6 = _EVAL_20;
  assign _EVAL_16 = _EVAL_22 == 4'hd;
  assign _EVAL_12 = _EVAL_22 == 4'h2;
  assign _EVAL = _EVAL_18;
  assign stateMachine__EVAL_1 = _EVAL_0;
  assign _EVAL_22 = stateMachine__EVAL_2;
  assign stateMachine__EVAL_0 = _EVAL_9;
  assign stateMachine__EVAL = _EVAL_4;
  assign _EVAL_25 = irChain__EVAL_2;
  assign irChain__EVAL_0 = _EVAL_22 == 4'ha;
  assign _EVAL_13 = ~_EVAL_14;
  assign _EVAL_10 = _EVAL_19;
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
  _EVAL_18 = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_19 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_20 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_9) begin
    _EVAL_18 = 5'h1;
  end
  if (_EVAL_9) begin
    _EVAL_19 = 1'h0;
  end
  if (_EVAL_9) begin
    _EVAL_20 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_17 or posedge _EVAL_9) begin
    if (_EVAL_9) begin
      _EVAL_18 <= 5'h1;
    end else if (_EVAL_15) begin
      _EVAL_18 <= 5'h1;
    end else if (_EVAL_16) begin
      _EVAL_18 <= irChain__EVAL_4;
    end
  end
  always @(posedge _EVAL_17 or posedge _EVAL_9) begin
    if (_EVAL_9) begin
      _EVAL_19 <= 1'h0;
    end else begin
      _EVAL_19 <= _EVAL_24 | _EVAL_23;
    end
  end
  always @(posedge _EVAL_17 or posedge _EVAL_9) begin
    if (_EVAL_9) begin
      _EVAL_20 <= 1'h0;
    end else if (_EVAL_24) begin
      _EVAL_20 <= _EVAL_1;
    end else begin
      _EVAL_20 <= _EVAL_25;
    end
  end
endmodule
