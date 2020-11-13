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
module _EVAL_184(
  input        _EVAL,
  input        _EVAL_0,
  input        _EVAL_1,
  output       _EVAL_2,
  input        _EVAL_3,
  output [4:0] _EVAL_4,
  input        _EVAL_5,
  input        _EVAL_6
);
  wire  _EVAL_8;
  reg  _EVAL_12;
  reg [31:0] _RAND_0;
  reg  _EVAL_15;
  reg [31:0] _RAND_1;
  wire  _EVAL_17;
  reg  _EVAL_20;
  reg [31:0] _RAND_2;
  wire [1:0] _EVAL_26;
  reg  _EVAL_27;
  reg [31:0] _RAND_3;
  wire [2:0] _EVAL_34;
  reg  _EVAL_35;
  reg [31:0] _RAND_4;
  assign _EVAL_8 = _EVAL_1 ? _EVAL_35 : _EVAL_17;
  assign _EVAL_26 = {_EVAL_12,_EVAL_35};
  assign _EVAL_34 = {_EVAL_15,_EVAL_20,_EVAL_27};
  assign _EVAL_4 = {_EVAL_34,_EVAL_26};
  assign _EVAL_2 = _EVAL_35;
  assign _EVAL_17 = _EVAL_0 ? _EVAL_12 : _EVAL_35;
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
  _EVAL_12 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_15 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_20 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_27 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_35 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL) begin
    if (_EVAL_3) begin
      _EVAL_12 <= 1'h0;
    end else if (!(_EVAL_1)) begin
      if (_EVAL_0) begin
        _EVAL_12 <= _EVAL_27;
      end
    end
    if (_EVAL_3) begin
      _EVAL_15 <= 1'h0;
    end else if (!(_EVAL_1)) begin
      if (_EVAL_0) begin
        _EVAL_15 <= _EVAL_5;
      end
    end
    if (_EVAL_3) begin
      _EVAL_20 <= 1'h0;
    end else if (!(_EVAL_1)) begin
      if (_EVAL_0) begin
        _EVAL_20 <= _EVAL_15;
      end
    end
    if (_EVAL_3) begin
      _EVAL_27 <= 1'h0;
    end else if (!(_EVAL_1)) begin
      if (_EVAL_0) begin
        _EVAL_27 <= _EVAL_20;
      end
    end
    _EVAL_35 <= _EVAL_3 | _EVAL_8;
  end
endmodule
