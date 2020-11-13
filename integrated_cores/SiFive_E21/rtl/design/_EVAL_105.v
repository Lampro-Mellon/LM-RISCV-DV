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
module _EVAL_105(
  input         _EVAL,
  input         _EVAL_0,
  output [2:0]  _EVAL_1,
  input  [3:0]  _EVAL_2,
  input  [31:0] _EVAL_3,
  output [1:0]  _EVAL_4,
  input         _EVAL_5,
  output        _EVAL_6,
  output        _EVAL_7,
  output [2:0]  _EVAL_8,
  output        _EVAL_9,
  input         _EVAL_10,
  input  [1:0]  _EVAL_11,
  output [3:0]  _EVAL_12,
  input         _EVAL_13,
  input  [2:0]  _EVAL_14,
  input         _EVAL_15,
  output        _EVAL_16,
  output [31:0] _EVAL_17,
  output        _EVAL_18,
  input         _EVAL_19,
  input  [2:0]  _EVAL_20
);
  reg [1:0] _EVAL_21 [0:0];
  reg [31:0] _RAND_0;
  wire [1:0] _EVAL_21__EVAL_22_data;
  wire  _EVAL_21__EVAL_22_addr;
  wire [1:0] _EVAL_21__EVAL_23_data;
  wire  _EVAL_21__EVAL_23_addr;
  wire  _EVAL_21__EVAL_23_mask;
  wire  _EVAL_21__EVAL_23_en;
  reg [3:0] _EVAL_25 [0:0];
  reg [31:0] _RAND_1;
  wire [3:0] _EVAL_25__EVAL_26_data;
  wire  _EVAL_25__EVAL_26_addr;
  wire [3:0] _EVAL_25__EVAL_27_data;
  wire  _EVAL_25__EVAL_27_addr;
  wire  _EVAL_25__EVAL_27_mask;
  wire  _EVAL_25__EVAL_27_en;
  reg  _EVAL_28 [0:0];
  reg [31:0] _RAND_2;
  wire  _EVAL_28__EVAL_29_data;
  wire  _EVAL_28__EVAL_29_addr;
  wire  _EVAL_28__EVAL_30_data;
  wire  _EVAL_28__EVAL_30_addr;
  wire  _EVAL_28__EVAL_30_mask;
  wire  _EVAL_28__EVAL_30_en;
  wire  _EVAL_31;
  reg [31:0] _EVAL_32 [0:0];
  reg [31:0] _RAND_3;
  wire [31:0] _EVAL_32__EVAL_33_data;
  wire  _EVAL_32__EVAL_33_addr;
  wire [31:0] _EVAL_32__EVAL_34_data;
  wire  _EVAL_32__EVAL_34_addr;
  wire  _EVAL_32__EVAL_34_mask;
  wire  _EVAL_32__EVAL_34_en;
  wire  _EVAL_35;
  reg  _EVAL_36 [0:0];
  reg [31:0] _RAND_4;
  wire  _EVAL_36__EVAL_37_data;
  wire  _EVAL_36__EVAL_37_addr;
  wire  _EVAL_36__EVAL_38_data;
  wire  _EVAL_36__EVAL_38_addr;
  wire  _EVAL_36__EVAL_38_mask;
  wire  _EVAL_36__EVAL_38_en;
  reg  _EVAL_39;
  reg [31:0] _RAND_5;
  reg [2:0] _EVAL_40 [0:0];
  reg [31:0] _RAND_6;
  wire [2:0] _EVAL_40__EVAL_41_data;
  wire  _EVAL_40__EVAL_41_addr;
  wire [2:0] _EVAL_40__EVAL_42_data;
  wire  _EVAL_40__EVAL_42_addr;
  wire  _EVAL_40__EVAL_42_mask;
  wire  _EVAL_40__EVAL_42_en;
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
  wire  _EVAL_50;
  assign _EVAL_21__EVAL_22_addr = 1'h0;
  assign _EVAL_21__EVAL_22_data = _EVAL_21[_EVAL_21__EVAL_22_addr];
  assign _EVAL_21__EVAL_23_data = _EVAL_11;
  assign _EVAL_21__EVAL_23_addr = 1'h0;
  assign _EVAL_21__EVAL_23_mask = 1'h1;
  assign _EVAL_21__EVAL_23_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_25__EVAL_26_addr = 1'h0;
  assign _EVAL_25__EVAL_26_data = _EVAL_25[_EVAL_25__EVAL_26_addr];
  assign _EVAL_25__EVAL_27_data = _EVAL_2;
  assign _EVAL_25__EVAL_27_addr = 1'h0;
  assign _EVAL_25__EVAL_27_mask = 1'h1;
  assign _EVAL_25__EVAL_27_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_28__EVAL_29_addr = 1'h0;
  assign _EVAL_28__EVAL_29_data = _EVAL_28[_EVAL_28__EVAL_29_addr];
  assign _EVAL_28__EVAL_30_data = _EVAL_10;
  assign _EVAL_28__EVAL_30_addr = 1'h0;
  assign _EVAL_28__EVAL_30_mask = 1'h1;
  assign _EVAL_28__EVAL_30_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_32__EVAL_33_addr = 1'h0;
  assign _EVAL_32__EVAL_33_data = _EVAL_32[_EVAL_32__EVAL_33_addr];
  assign _EVAL_32__EVAL_34_data = _EVAL_3;
  assign _EVAL_32__EVAL_34_addr = 1'h0;
  assign _EVAL_32__EVAL_34_mask = 1'h1;
  assign _EVAL_32__EVAL_34_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_36__EVAL_37_addr = 1'h0;
  assign _EVAL_36__EVAL_37_data = _EVAL_36[_EVAL_36__EVAL_37_addr];
  assign _EVAL_36__EVAL_38_data = _EVAL_15;
  assign _EVAL_36__EVAL_38_addr = 1'h0;
  assign _EVAL_36__EVAL_38_mask = 1'h1;
  assign _EVAL_36__EVAL_38_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_40__EVAL_41_addr = 1'h0;
  assign _EVAL_40__EVAL_41_data = _EVAL_40[_EVAL_40__EVAL_41_addr];
  assign _EVAL_40__EVAL_42_data = _EVAL_14;
  assign _EVAL_40__EVAL_42_addr = 1'h0;
  assign _EVAL_40__EVAL_42_mask = 1'h1;
  assign _EVAL_40__EVAL_42_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_43__EVAL_44_addr = 1'h0;
  assign _EVAL_43__EVAL_44_data = _EVAL_43[_EVAL_43__EVAL_44_addr];
  assign _EVAL_43__EVAL_45_data = _EVAL_20;
  assign _EVAL_43__EVAL_45_addr = 1'h0;
  assign _EVAL_43__EVAL_45_mask = 1'h1;
  assign _EVAL_43__EVAL_45_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_47__EVAL_48_addr = 1'h0;
  assign _EVAL_47__EVAL_48_data = _EVAL_47[_EVAL_47__EVAL_48_addr];
  assign _EVAL_47__EVAL_49_data = _EVAL;
  assign _EVAL_47__EVAL_49_addr = 1'h0;
  assign _EVAL_47__EVAL_49_mask = 1'h1;
  assign _EVAL_47__EVAL_49_en = _EVAL_6 & _EVAL_13;
  assign _EVAL_12 = _EVAL_25__EVAL_26_data;
  assign _EVAL_6 = _EVAL_19 | _EVAL_35;
  assign _EVAL_7 = _EVAL_36__EVAL_37_data;
  assign _EVAL_31 = _EVAL_19 & _EVAL_18;
  assign _EVAL_50 = _EVAL_6 & _EVAL_13;
  assign _EVAL_17 = _EVAL_32__EVAL_33_data;
  assign _EVAL_35 = ~_EVAL_39;
  assign _EVAL_4 = _EVAL_21__EVAL_22_data;
  assign _EVAL_8 = _EVAL_43__EVAL_44_data;
  assign _EVAL_1 = _EVAL_40__EVAL_41_data;
  assign _EVAL_18 = ~_EVAL_35;
  assign _EVAL_16 = _EVAL_28__EVAL_29_data;
  assign _EVAL_46 = _EVAL_50 != _EVAL_31;
  assign _EVAL_9 = _EVAL_47__EVAL_48_data;
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
    _EVAL_21[initvar] = _RAND_0[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_25[initvar] = _RAND_1[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_28[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_32[initvar] = _RAND_3[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_36[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_39 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_40[initvar] = _RAND_6[2:0];
  `endif // RANDOMIZE_MEM_INIT
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
  always @(posedge _EVAL_5) begin
    if(_EVAL_21__EVAL_23_en & _EVAL_21__EVAL_23_mask) begin
      _EVAL_21[_EVAL_21__EVAL_23_addr] <= _EVAL_21__EVAL_23_data;
    end
    if(_EVAL_25__EVAL_27_en & _EVAL_25__EVAL_27_mask) begin
      _EVAL_25[_EVAL_25__EVAL_27_addr] <= _EVAL_25__EVAL_27_data;
    end
    if(_EVAL_28__EVAL_30_en & _EVAL_28__EVAL_30_mask) begin
      _EVAL_28[_EVAL_28__EVAL_30_addr] <= _EVAL_28__EVAL_30_data;
    end
    if(_EVAL_32__EVAL_34_en & _EVAL_32__EVAL_34_mask) begin
      _EVAL_32[_EVAL_32__EVAL_34_addr] <= _EVAL_32__EVAL_34_data;
    end
    if(_EVAL_36__EVAL_38_en & _EVAL_36__EVAL_38_mask) begin
      _EVAL_36[_EVAL_36__EVAL_38_addr] <= _EVAL_36__EVAL_38_data;
    end
    if (_EVAL_0) begin
      _EVAL_39 <= 1'h0;
    end else if (_EVAL_46) begin
      _EVAL_39 <= _EVAL_50;
    end
    if(_EVAL_40__EVAL_42_en & _EVAL_40__EVAL_42_mask) begin
      _EVAL_40[_EVAL_40__EVAL_42_addr] <= _EVAL_40__EVAL_42_data;
    end
    if(_EVAL_43__EVAL_45_en & _EVAL_43__EVAL_45_mask) begin
      _EVAL_43[_EVAL_43__EVAL_45_addr] <= _EVAL_43__EVAL_45_data;
    end
    if(_EVAL_47__EVAL_49_en & _EVAL_47__EVAL_49_mask) begin
      _EVAL_47[_EVAL_47__EVAL_49_addr] <= _EVAL_47__EVAL_49_data;
    end
  end
endmodule
