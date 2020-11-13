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
module _EVAL_179(
  input  [1:0]  _EVAL,
  input         _EVAL_0,
  input         _EVAL_1,
  input         _EVAL_2,
  output        _EVAL_3,
  input  [9:0]  _EVAL_4,
  input  [3:0]  _EVAL_5,
  output [31:0] _EVAL_6,
  output [9:0]  _EVAL_7,
  output [2:0]  _EVAL_8,
  input         _EVAL_9,
  output        _EVAL_10,
  input         _EVAL_11,
  output        _EVAL_12,
  output [3:0]  _EVAL_13,
  input  [2:0]  _EVAL_14,
  input  [31:0] _EVAL_15,
  output [1:0]  _EVAL_16
);
  wire  _EVAL_17;
  reg [3:0] _EVAL_18 [0:0];
  reg [31:0] _RAND_0;
  wire [3:0] _EVAL_18__EVAL_19_data;
  wire  _EVAL_18__EVAL_19_addr;
  wire [3:0] _EVAL_18__EVAL_20_data;
  wire  _EVAL_18__EVAL_20_addr;
  wire  _EVAL_18__EVAL_20_mask;
  wire  _EVAL_18__EVAL_20_en;
  reg [31:0] _EVAL_21 [0:0];
  reg [31:0] _RAND_1;
  wire [31:0] _EVAL_21__EVAL_22_data;
  wire  _EVAL_21__EVAL_22_addr;
  wire [31:0] _EVAL_21__EVAL_23_data;
  wire  _EVAL_21__EVAL_23_addr;
  wire  _EVAL_21__EVAL_23_mask;
  wire  _EVAL_21__EVAL_23_en;
  reg [9:0] _EVAL_24 [0:0];
  reg [31:0] _RAND_2;
  wire [9:0] _EVAL_24__EVAL_25_data;
  wire  _EVAL_24__EVAL_25_addr;
  wire [9:0] _EVAL_24__EVAL_26_data;
  wire  _EVAL_24__EVAL_26_addr;
  wire  _EVAL_24__EVAL_26_mask;
  wire  _EVAL_24__EVAL_26_en;
  wire  _EVAL_27;
  wire  _EVAL_28;
  reg [2:0] _EVAL_29 [0:0];
  reg [31:0] _RAND_3;
  wire [2:0] _EVAL_29__EVAL_30_data;
  wire  _EVAL_29__EVAL_30_addr;
  wire [2:0] _EVAL_29__EVAL_31_data;
  wire  _EVAL_29__EVAL_31_addr;
  wire  _EVAL_29__EVAL_31_mask;
  wire  _EVAL_29__EVAL_31_en;
  reg  _EVAL_32 [0:0];
  reg [31:0] _RAND_4;
  wire  _EVAL_32__EVAL_33_data;
  wire  _EVAL_32__EVAL_33_addr;
  wire  _EVAL_32__EVAL_34_data;
  wire  _EVAL_32__EVAL_34_addr;
  wire  _EVAL_32__EVAL_34_mask;
  wire  _EVAL_32__EVAL_34_en;
  reg  _EVAL_35;
  reg [31:0] _RAND_5;
  wire  _EVAL_36;
  reg [1:0] _EVAL_37 [0:0];
  reg [31:0] _RAND_6;
  wire [1:0] _EVAL_37__EVAL_38_data;
  wire  _EVAL_37__EVAL_38_addr;
  wire [1:0] _EVAL_37__EVAL_39_data;
  wire  _EVAL_37__EVAL_39_addr;
  wire  _EVAL_37__EVAL_39_mask;
  wire  _EVAL_37__EVAL_39_en;
  assign _EVAL_18__EVAL_19_addr = 1'h0;
  assign _EVAL_18__EVAL_19_data = _EVAL_18[_EVAL_18__EVAL_19_addr];
  assign _EVAL_18__EVAL_20_data = _EVAL_5;
  assign _EVAL_18__EVAL_20_addr = 1'h0;
  assign _EVAL_18__EVAL_20_mask = 1'h1;
  assign _EVAL_18__EVAL_20_en = _EVAL_10 & _EVAL_9;
  assign _EVAL_21__EVAL_22_addr = 1'h0;
  assign _EVAL_21__EVAL_22_data = _EVAL_21[_EVAL_21__EVAL_22_addr];
  assign _EVAL_21__EVAL_23_data = _EVAL_15;
  assign _EVAL_21__EVAL_23_addr = 1'h0;
  assign _EVAL_21__EVAL_23_mask = 1'h1;
  assign _EVAL_21__EVAL_23_en = _EVAL_10 & _EVAL_9;
  assign _EVAL_24__EVAL_25_addr = 1'h0;
  assign _EVAL_24__EVAL_25_data = _EVAL_24[_EVAL_24__EVAL_25_addr];
  assign _EVAL_24__EVAL_26_data = _EVAL_4;
  assign _EVAL_24__EVAL_26_addr = 1'h0;
  assign _EVAL_24__EVAL_26_mask = 1'h1;
  assign _EVAL_24__EVAL_26_en = _EVAL_10 & _EVAL_9;
  assign _EVAL_29__EVAL_30_addr = 1'h0;
  assign _EVAL_29__EVAL_30_data = _EVAL_29[_EVAL_29__EVAL_30_addr];
  assign _EVAL_29__EVAL_31_data = _EVAL_14;
  assign _EVAL_29__EVAL_31_addr = 1'h0;
  assign _EVAL_29__EVAL_31_mask = 1'h1;
  assign _EVAL_29__EVAL_31_en = _EVAL_10 & _EVAL_9;
  assign _EVAL_32__EVAL_33_addr = 1'h0;
  assign _EVAL_32__EVAL_33_data = _EVAL_32[_EVAL_32__EVAL_33_addr];
  assign _EVAL_32__EVAL_34_data = _EVAL_11;
  assign _EVAL_32__EVAL_34_addr = 1'h0;
  assign _EVAL_32__EVAL_34_mask = 1'h1;
  assign _EVAL_32__EVAL_34_en = _EVAL_10 & _EVAL_9;
  assign _EVAL_37__EVAL_38_addr = 1'h0;
  assign _EVAL_37__EVAL_38_data = _EVAL_37[_EVAL_37__EVAL_38_addr];
  assign _EVAL_37__EVAL_39_data = _EVAL;
  assign _EVAL_37__EVAL_39_addr = 1'h0;
  assign _EVAL_37__EVAL_39_mask = 1'h1;
  assign _EVAL_37__EVAL_39_en = _EVAL_10 & _EVAL_9;
  assign _EVAL_6 = _EVAL_21__EVAL_22_data;
  assign _EVAL_16 = _EVAL_37__EVAL_38_data;
  assign _EVAL_7 = _EVAL_24__EVAL_25_data;
  assign _EVAL_3 = ~_EVAL_36;
  assign _EVAL_27 = _EVAL_17 != _EVAL_28;
  assign _EVAL_10 = ~_EVAL_35;
  assign _EVAL_36 = ~_EVAL_35;
  assign _EVAL_8 = _EVAL_29__EVAL_30_data;
  assign _EVAL_12 = _EVAL_32__EVAL_33_data;
  assign _EVAL_13 = _EVAL_18__EVAL_19_data;
  assign _EVAL_17 = _EVAL_10 & _EVAL_9;
  assign _EVAL_28 = _EVAL_0 & _EVAL_3;
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
    _EVAL_18[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_21[initvar] = _RAND_1[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_24[initvar] = _RAND_2[9:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_29[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_32[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_35 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_37[initvar] = _RAND_6[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_2) begin
    if(_EVAL_18__EVAL_20_en & _EVAL_18__EVAL_20_mask) begin
      _EVAL_18[_EVAL_18__EVAL_20_addr] <= _EVAL_18__EVAL_20_data;
    end
    if(_EVAL_21__EVAL_23_en & _EVAL_21__EVAL_23_mask) begin
      _EVAL_21[_EVAL_21__EVAL_23_addr] <= _EVAL_21__EVAL_23_data;
    end
    if(_EVAL_24__EVAL_26_en & _EVAL_24__EVAL_26_mask) begin
      _EVAL_24[_EVAL_24__EVAL_26_addr] <= _EVAL_24__EVAL_26_data;
    end
    if(_EVAL_29__EVAL_31_en & _EVAL_29__EVAL_31_mask) begin
      _EVAL_29[_EVAL_29__EVAL_31_addr] <= _EVAL_29__EVAL_31_data;
    end
    if(_EVAL_32__EVAL_34_en & _EVAL_32__EVAL_34_mask) begin
      _EVAL_32[_EVAL_32__EVAL_34_addr] <= _EVAL_32__EVAL_34_data;
    end
    if (_EVAL_1) begin
      _EVAL_35 <= 1'h0;
    end else if (_EVAL_27) begin
      _EVAL_35 <= _EVAL_17;
    end
    if(_EVAL_37__EVAL_39_en & _EVAL_37__EVAL_39_mask) begin
      _EVAL_37[_EVAL_37__EVAL_39_addr] <= _EVAL_37__EVAL_39_data;
    end
  end
endmodule
