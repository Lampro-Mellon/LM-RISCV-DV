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
module _EVAL_88(
  output        _EVAL,
  input         _EVAL_0,
  input  [2:0]  _EVAL_1,
  output [2:0]  _EVAL_2,
  input         _EVAL_3,
  output        _EVAL_4,
  input         _EVAL_5,
  output        _EVAL_6,
  output [31:0] _EVAL_7,
  input  [2:0]  _EVAL_8,
  output        _EVAL_9,
  input  [31:0] _EVAL_10,
  output [1:0]  _EVAL_11,
  input         _EVAL_12,
  output [2:0]  _EVAL_13,
  input         _EVAL_14,
  input  [1:0]  _EVAL_15,
  output        _EVAL_16,
  input  [1:0]  _EVAL_17,
  input         _EVAL_18,
  output [1:0]  _EVAL_19,
  input         _EVAL_20
);
  reg  _EVAL_21 [0:0];
  reg [31:0] _RAND_0;
  wire  _EVAL_21__EVAL_22_data;
  wire  _EVAL_21__EVAL_22_addr;
  wire  _EVAL_21__EVAL_23_data;
  wire  _EVAL_21__EVAL_23_addr;
  wire  _EVAL_21__EVAL_23_mask;
  wire  _EVAL_21__EVAL_23_en;
  reg [31:0] _EVAL_24 [0:0];
  reg [31:0] _RAND_1;
  wire [31:0] _EVAL_24__EVAL_25_data;
  wire  _EVAL_24__EVAL_25_addr;
  wire [31:0] _EVAL_24__EVAL_26_data;
  wire  _EVAL_24__EVAL_26_addr;
  wire  _EVAL_24__EVAL_26_mask;
  wire  _EVAL_24__EVAL_26_en;
  reg [2:0] _EVAL_27 [0:0];
  reg [31:0] _RAND_2;
  wire [2:0] _EVAL_27__EVAL_28_data;
  wire  _EVAL_27__EVAL_28_addr;
  wire [2:0] _EVAL_27__EVAL_29_data;
  wire  _EVAL_27__EVAL_29_addr;
  wire  _EVAL_27__EVAL_29_mask;
  wire  _EVAL_27__EVAL_29_en;
  wire  _EVAL_30;
  wire  _EVAL_31;
  wire  _EVAL_32;
  reg [1:0] _EVAL_33 [0:0];
  reg [31:0] _RAND_3;
  wire [1:0] _EVAL_33__EVAL_34_data;
  wire  _EVAL_33__EVAL_34_addr;
  wire [1:0] _EVAL_33__EVAL_35_data;
  wire  _EVAL_33__EVAL_35_addr;
  wire  _EVAL_33__EVAL_35_mask;
  wire  _EVAL_33__EVAL_35_en;
  reg  _EVAL_36 [0:0];
  reg [31:0] _RAND_4;
  wire  _EVAL_36__EVAL_37_data;
  wire  _EVAL_36__EVAL_37_addr;
  wire  _EVAL_36__EVAL_38_data;
  wire  _EVAL_36__EVAL_38_addr;
  wire  _EVAL_36__EVAL_38_mask;
  wire  _EVAL_36__EVAL_38_en;
  reg [1:0] _EVAL_39 [0:0];
  reg [31:0] _RAND_5;
  wire [1:0] _EVAL_39__EVAL_40_data;
  wire  _EVAL_39__EVAL_40_addr;
  wire [1:0] _EVAL_39__EVAL_41_data;
  wire  _EVAL_39__EVAL_41_addr;
  wire  _EVAL_39__EVAL_41_mask;
  wire  _EVAL_39__EVAL_41_en;
  reg  _EVAL_42;
  reg [31:0] _RAND_6;
  reg [2:0] _EVAL_43 [0:0];
  reg [31:0] _RAND_7;
  wire [2:0] _EVAL_43__EVAL_44_data;
  wire  _EVAL_43__EVAL_44_addr;
  wire [2:0] _EVAL_43__EVAL_45_data;
  wire  _EVAL_43__EVAL_45_addr;
  wire  _EVAL_43__EVAL_45_mask;
  wire  _EVAL_43__EVAL_45_en;
  wire  _EVAL_46;
  reg  _EVAL_47 [0:0];
  reg [31:0] _RAND_8;
  wire  _EVAL_47__EVAL_48_data;
  wire  _EVAL_47__EVAL_48_addr;
  wire  _EVAL_47__EVAL_49_data;
  wire  _EVAL_47__EVAL_49_addr;
  wire  _EVAL_47__EVAL_49_mask;
  wire  _EVAL_47__EVAL_49_en;
  assign _EVAL_21__EVAL_22_addr = 1'h0;
  assign _EVAL_21__EVAL_22_data = _EVAL_21[_EVAL_21__EVAL_22_addr];
  assign _EVAL_21__EVAL_23_data = _EVAL_0;
  assign _EVAL_21__EVAL_23_addr = 1'h0;
  assign _EVAL_21__EVAL_23_mask = 1'h1;
  assign _EVAL_21__EVAL_23_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_24__EVAL_25_addr = 1'h0;
  assign _EVAL_24__EVAL_25_data = _EVAL_24[_EVAL_24__EVAL_25_addr];
  assign _EVAL_24__EVAL_26_data = _EVAL_10;
  assign _EVAL_24__EVAL_26_addr = 1'h0;
  assign _EVAL_24__EVAL_26_mask = 1'h1;
  assign _EVAL_24__EVAL_26_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_27__EVAL_28_addr = 1'h0;
  assign _EVAL_27__EVAL_28_data = _EVAL_27[_EVAL_27__EVAL_28_addr];
  assign _EVAL_27__EVAL_29_data = _EVAL_1;
  assign _EVAL_27__EVAL_29_addr = 1'h0;
  assign _EVAL_27__EVAL_29_mask = 1'h1;
  assign _EVAL_27__EVAL_29_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_33__EVAL_34_addr = 1'h0;
  assign _EVAL_33__EVAL_34_data = _EVAL_33[_EVAL_33__EVAL_34_addr];
  assign _EVAL_33__EVAL_35_data = _EVAL_17;
  assign _EVAL_33__EVAL_35_addr = 1'h0;
  assign _EVAL_33__EVAL_35_mask = 1'h1;
  assign _EVAL_33__EVAL_35_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_36__EVAL_37_addr = 1'h0;
  assign _EVAL_36__EVAL_37_data = _EVAL_36[_EVAL_36__EVAL_37_addr];
  assign _EVAL_36__EVAL_38_data = _EVAL_20;
  assign _EVAL_36__EVAL_38_addr = 1'h0;
  assign _EVAL_36__EVAL_38_mask = 1'h1;
  assign _EVAL_36__EVAL_38_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_39__EVAL_40_addr = 1'h0;
  assign _EVAL_39__EVAL_40_data = _EVAL_39[_EVAL_39__EVAL_40_addr];
  assign _EVAL_39__EVAL_41_data = _EVAL_15;
  assign _EVAL_39__EVAL_41_addr = 1'h0;
  assign _EVAL_39__EVAL_41_mask = 1'h1;
  assign _EVAL_39__EVAL_41_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_43__EVAL_44_addr = 1'h0;
  assign _EVAL_43__EVAL_44_data = _EVAL_43[_EVAL_43__EVAL_44_addr];
  assign _EVAL_43__EVAL_45_data = _EVAL_8;
  assign _EVAL_43__EVAL_45_addr = 1'h0;
  assign _EVAL_43__EVAL_45_mask = 1'h1;
  assign _EVAL_43__EVAL_45_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_47__EVAL_48_addr = 1'h0;
  assign _EVAL_47__EVAL_48_data = _EVAL_47[_EVAL_47__EVAL_48_addr];
  assign _EVAL_47__EVAL_49_data = _EVAL_3;
  assign _EVAL_47__EVAL_49_addr = 1'h0;
  assign _EVAL_47__EVAL_49_mask = 1'h1;
  assign _EVAL_47__EVAL_49_en = _EVAL_6 & _EVAL_14;
  assign _EVAL_6 = _EVAL_12 | _EVAL_32;
  assign _EVAL_4 = _EVAL_47__EVAL_48_data;
  assign _EVAL_11 = _EVAL_33__EVAL_34_data;
  assign _EVAL_30 = _EVAL_6 & _EVAL_14;
  assign _EVAL = ~_EVAL_32;
  assign _EVAL_19 = _EVAL_39__EVAL_40_data;
  assign _EVAL_13 = _EVAL_43__EVAL_44_data;
  assign _EVAL_46 = _EVAL_12 & _EVAL;
  assign _EVAL_2 = _EVAL_27__EVAL_28_data;
  assign _EVAL_7 = _EVAL_24__EVAL_25_data;
  assign _EVAL_9 = _EVAL_36__EVAL_37_data;
  assign _EVAL_32 = ~_EVAL_42;
  assign _EVAL_16 = _EVAL_21__EVAL_22_data;
  assign _EVAL_31 = _EVAL_30 != _EVAL_46;
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
    _EVAL_21[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_24[initvar] = _RAND_1[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_27[initvar] = _RAND_2[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_33[initvar] = _RAND_3[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_36[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_39[initvar] = _RAND_5[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _EVAL_42 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_43[initvar] = _RAND_7[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_8 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_47[initvar] = _RAND_8[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_18) begin
    if(_EVAL_21__EVAL_23_en & _EVAL_21__EVAL_23_mask) begin
      _EVAL_21[_EVAL_21__EVAL_23_addr] <= _EVAL_21__EVAL_23_data;
    end
    if(_EVAL_24__EVAL_26_en & _EVAL_24__EVAL_26_mask) begin
      _EVAL_24[_EVAL_24__EVAL_26_addr] <= _EVAL_24__EVAL_26_data;
    end
    if(_EVAL_27__EVAL_29_en & _EVAL_27__EVAL_29_mask) begin
      _EVAL_27[_EVAL_27__EVAL_29_addr] <= _EVAL_27__EVAL_29_data;
    end
    if(_EVAL_33__EVAL_35_en & _EVAL_33__EVAL_35_mask) begin
      _EVAL_33[_EVAL_33__EVAL_35_addr] <= _EVAL_33__EVAL_35_data;
    end
    if(_EVAL_36__EVAL_38_en & _EVAL_36__EVAL_38_mask) begin
      _EVAL_36[_EVAL_36__EVAL_38_addr] <= _EVAL_36__EVAL_38_data;
    end
    if(_EVAL_39__EVAL_41_en & _EVAL_39__EVAL_41_mask) begin
      _EVAL_39[_EVAL_39__EVAL_41_addr] <= _EVAL_39__EVAL_41_data;
    end
    if (_EVAL_5) begin
      _EVAL_42 <= 1'h0;
    end else if (_EVAL_31) begin
      _EVAL_42 <= _EVAL_30;
    end
    if(_EVAL_43__EVAL_45_en & _EVAL_43__EVAL_45_mask) begin
      _EVAL_43[_EVAL_43__EVAL_45_addr] <= _EVAL_43__EVAL_45_data;
    end
    if(_EVAL_47__EVAL_49_en & _EVAL_47__EVAL_49_mask) begin
      _EVAL_47[_EVAL_47__EVAL_49_addr] <= _EVAL_47__EVAL_49_data;
    end
  end
endmodule
