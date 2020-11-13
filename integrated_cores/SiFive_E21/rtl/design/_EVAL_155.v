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
module _EVAL_155(
  input  [31:0] _EVAL,
  output [31:0] _EVAL_0,
  input  [4:0]  _EVAL_1,
  output [31:0] _EVAL_2,
  input  [4:0]  _EVAL_3,
  input         _EVAL_4,
  input  [4:0]  _EVAL_5,
  input         _EVAL_6
);
  reg [31:0] _EVAL_7 [0:30];
  reg [31:0] _RAND_0;
  wire [31:0] _EVAL_7__EVAL_8_data;
  wire [4:0] _EVAL_7__EVAL_8_addr;
  reg [31:0] _RAND_1;
  wire [31:0] _EVAL_7__EVAL_9_data;
  wire [4:0] _EVAL_7__EVAL_9_addr;
  reg [31:0] _RAND_2;
  wire [31:0] _EVAL_7__EVAL_10_data;
  wire [4:0] _EVAL_7__EVAL_10_addr;
  wire  _EVAL_7__EVAL_10_mask;
  wire  _EVAL_7__EVAL_10_en;
  assign _EVAL_7__EVAL_8_addr = _EVAL_3;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_7__EVAL_8_data = _EVAL_7[_EVAL_7__EVAL_8_addr];
  `else
  assign _EVAL_7__EVAL_8_data = _EVAL_7__EVAL_8_addr >= 5'h1f ? _RAND_1[31:0] : _EVAL_7[_EVAL_7__EVAL_8_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_7__EVAL_9_addr = _EVAL_5;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_7__EVAL_9_data = _EVAL_7[_EVAL_7__EVAL_9_addr];
  `else
  assign _EVAL_7__EVAL_9_data = _EVAL_7__EVAL_9_addr >= 5'h1f ? _RAND_2[31:0] : _EVAL_7[_EVAL_7__EVAL_9_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_7__EVAL_10_data = _EVAL;
  assign _EVAL_7__EVAL_10_addr = _EVAL_1;
  assign _EVAL_7__EVAL_10_mask = 1'h1;
  assign _EVAL_7__EVAL_10_en = _EVAL_4;
  assign _EVAL_0 = _EVAL_7__EVAL_8_data;
  assign _EVAL_2 = _EVAL_7__EVAL_9_data;
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
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _EVAL_7[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_6) begin
    if(_EVAL_7__EVAL_10_en & _EVAL_7__EVAL_10_mask) begin
      _EVAL_7[_EVAL_7__EVAL_10_addr] <= _EVAL_7__EVAL_10_data;
    end
  end
endmodule
