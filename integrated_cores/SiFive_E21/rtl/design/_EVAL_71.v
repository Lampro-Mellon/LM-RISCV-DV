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
module _EVAL_71(
  output [2:0] _EVAL,
  input        _EVAL_0,
  output       _EVAL_1,
  input  [2:0] _EVAL_2,
  output [3:0] _EVAL_3,
  output [2:0] _EVAL_4,
  output       _EVAL_5,
  input        _EVAL_6,
  input  [3:0] _EVAL_7,
  input        _EVAL_8,
  input  [2:0] _EVAL_9,
  input        _EVAL_10
);
  wire  _EVAL_11;
  reg [2:0] _EVAL_13 [0:0];
  reg [31:0] _RAND_0;
  wire [2:0] _EVAL_13__EVAL_14_data;
  wire  _EVAL_13__EVAL_14_addr;
  wire [2:0] _EVAL_13__EVAL_15_data;
  wire  _EVAL_13__EVAL_15_addr;
  wire  _EVAL_13__EVAL_15_mask;
  wire  _EVAL_13__EVAL_15_en;
  wire  _EVAL_16;
  reg [2:0] _EVAL_17 [0:0];
  reg [31:0] _RAND_1;
  wire [2:0] _EVAL_17__EVAL_18_data;
  wire  _EVAL_17__EVAL_18_addr;
  wire [2:0] _EVAL_17__EVAL_19_data;
  wire  _EVAL_17__EVAL_19_addr;
  wire  _EVAL_17__EVAL_19_mask;
  wire  _EVAL_17__EVAL_19_en;
  wire  _EVAL_20;
  reg [3:0] _EVAL_21 [0:0];
  reg [31:0] _RAND_2;
  wire [3:0] _EVAL_21__EVAL_22_data;
  wire  _EVAL_21__EVAL_22_addr;
  wire [3:0] _EVAL_21__EVAL_23_data;
  wire  _EVAL_21__EVAL_23_addr;
  wire  _EVAL_21__EVAL_23_mask;
  wire  _EVAL_21__EVAL_23_en;
  reg  _EVAL_24;
  reg [31:0] _RAND_3;
  wire  _EVAL_25;
  assign _EVAL_13__EVAL_14_addr = 1'h0;
  assign _EVAL_13__EVAL_14_data = _EVAL_13[_EVAL_13__EVAL_14_addr];
  assign _EVAL_13__EVAL_15_data = _EVAL_9;
  assign _EVAL_13__EVAL_15_addr = 1'h0;
  assign _EVAL_13__EVAL_15_mask = 1'h1;
  assign _EVAL_13__EVAL_15_en = _EVAL_1 & _EVAL_10;
  assign _EVAL_17__EVAL_18_addr = 1'h0;
  assign _EVAL_17__EVAL_18_data = _EVAL_17[_EVAL_17__EVAL_18_addr];
  assign _EVAL_17__EVAL_19_data = _EVAL_2;
  assign _EVAL_17__EVAL_19_addr = 1'h0;
  assign _EVAL_17__EVAL_19_mask = 1'h1;
  assign _EVAL_17__EVAL_19_en = _EVAL_1 & _EVAL_10;
  assign _EVAL_21__EVAL_22_addr = 1'h0;
  assign _EVAL_21__EVAL_22_data = _EVAL_21[_EVAL_21__EVAL_22_addr];
  assign _EVAL_21__EVAL_23_data = _EVAL_7;
  assign _EVAL_21__EVAL_23_addr = 1'h0;
  assign _EVAL_21__EVAL_23_mask = 1'h1;
  assign _EVAL_21__EVAL_23_en = _EVAL_1 & _EVAL_10;
  assign _EVAL_16 = _EVAL_1 & _EVAL_10;
  assign _EVAL_1 = ~_EVAL_24;
  assign _EVAL = _EVAL_17__EVAL_18_data;
  assign _EVAL_4 = _EVAL_13__EVAL_14_data;
  assign _EVAL_3 = _EVAL_21__EVAL_22_data;
  assign _EVAL_5 = ~_EVAL_25;
  assign _EVAL_11 = _EVAL_0 & _EVAL_5;
  assign _EVAL_25 = ~_EVAL_24;
  assign _EVAL_20 = _EVAL_16 != _EVAL_11;
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_13[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_17[initvar] = _RAND_1[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_21[initvar] = _RAND_2[3:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_24 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_6) begin
    if(_EVAL_13__EVAL_15_en & _EVAL_13__EVAL_15_mask) begin
      _EVAL_13[_EVAL_13__EVAL_15_addr] <= _EVAL_13__EVAL_15_data;
    end
    if(_EVAL_17__EVAL_19_en & _EVAL_17__EVAL_19_mask) begin
      _EVAL_17[_EVAL_17__EVAL_19_addr] <= _EVAL_17__EVAL_19_data;
    end
    if(_EVAL_21__EVAL_23_en & _EVAL_21__EVAL_23_mask) begin
      _EVAL_21[_EVAL_21__EVAL_23_addr] <= _EVAL_21__EVAL_23_data;
    end
    if (_EVAL_8) begin
      _EVAL_24 <= 1'h0;
    end else if (_EVAL_20) begin
      _EVAL_24 <= _EVAL_16;
    end
  end
endmodule
