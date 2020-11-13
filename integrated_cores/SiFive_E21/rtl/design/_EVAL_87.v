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
module _EVAL_87(
  input  [1:0]  _EVAL,
  input         _EVAL_0,
  input  [2:0]  _EVAL_1,
  output        _EVAL_2,
  input  [29:0] _EVAL_3,
  input         _EVAL_4,
  output [2:0]  _EVAL_5,
  input  [31:0] _EVAL_6,
  output [2:0]  _EVAL_7,
  input         _EVAL_8,
  output        _EVAL_9,
  input         _EVAL_10,
  output [2:0]  _EVAL_11,
  input         _EVAL_12,
  input         _EVAL_13,
  input         _EVAL_14,
  input         _EVAL_15,
  input         _EVAL_16,
  input  [2:0]  _EVAL_17,
  output [3:0]  _EVAL_18,
  output        _EVAL_19,
  output [29:0] _EVAL_20,
  input  [3:0]  _EVAL_21,
  output        _EVAL_22,
  output [31:0] _EVAL_23,
  output [1:0]  _EVAL_24,
  output        _EVAL_25,
  output        _EVAL_26,
  output        _EVAL_27,
  input  [2:0]  _EVAL_28
);
  wire  _EVAL_29;
  reg  _EVAL_30 [0:0];
  reg [31:0] _RAND_0;
  wire  _EVAL_30__EVAL_31_data;
  wire  _EVAL_30__EVAL_31_addr;
  wire  _EVAL_30__EVAL_32_data;
  wire  _EVAL_30__EVAL_32_addr;
  wire  _EVAL_30__EVAL_32_mask;
  wire  _EVAL_30__EVAL_32_en;
  reg  _EVAL_33 [0:0];
  reg [31:0] _RAND_1;
  wire  _EVAL_33__EVAL_34_data;
  wire  _EVAL_33__EVAL_34_addr;
  wire  _EVAL_33__EVAL_35_data;
  wire  _EVAL_33__EVAL_35_addr;
  wire  _EVAL_33__EVAL_35_mask;
  wire  _EVAL_33__EVAL_35_en;
  wire  _EVAL_36;
  reg [3:0] _EVAL_37 [0:0];
  reg [31:0] _RAND_2;
  wire [3:0] _EVAL_37__EVAL_38_data;
  wire  _EVAL_37__EVAL_38_addr;
  wire [3:0] _EVAL_37__EVAL_39_data;
  wire  _EVAL_37__EVAL_39_addr;
  wire  _EVAL_37__EVAL_39_mask;
  wire  _EVAL_37__EVAL_39_en;
  reg [2:0] _EVAL_40 [0:0];
  reg [31:0] _RAND_3;
  wire [2:0] _EVAL_40__EVAL_41_data;
  wire  _EVAL_40__EVAL_41_addr;
  wire [2:0] _EVAL_40__EVAL_42_data;
  wire  _EVAL_40__EVAL_42_addr;
  wire  _EVAL_40__EVAL_42_mask;
  wire  _EVAL_40__EVAL_42_en;
  reg  _EVAL_43 [0:0];
  reg [31:0] _RAND_4;
  wire  _EVAL_43__EVAL_44_data;
  wire  _EVAL_43__EVAL_44_addr;
  wire  _EVAL_43__EVAL_45_data;
  wire  _EVAL_43__EVAL_45_addr;
  wire  _EVAL_43__EVAL_45_mask;
  wire  _EVAL_43__EVAL_45_en;
  reg [2:0] _EVAL_46 [0:0];
  reg [31:0] _RAND_5;
  wire [2:0] _EVAL_46__EVAL_47_data;
  wire  _EVAL_46__EVAL_47_addr;
  wire [2:0] _EVAL_46__EVAL_48_data;
  wire  _EVAL_46__EVAL_48_addr;
  wire  _EVAL_46__EVAL_48_mask;
  wire  _EVAL_46__EVAL_48_en;
  reg [29:0] _EVAL_49 [0:0];
  reg [31:0] _RAND_6;
  wire [29:0] _EVAL_49__EVAL_50_data;
  wire  _EVAL_49__EVAL_50_addr;
  wire [29:0] _EVAL_49__EVAL_51_data;
  wire  _EVAL_49__EVAL_51_addr;
  wire  _EVAL_49__EVAL_51_mask;
  wire  _EVAL_49__EVAL_51_en;
  wire  _EVAL_52;
  wire  _EVAL_53;
  reg [2:0] _EVAL_54 [0:0];
  reg [31:0] _RAND_7;
  wire [2:0] _EVAL_54__EVAL_55_data;
  wire  _EVAL_54__EVAL_55_addr;
  wire [2:0] _EVAL_54__EVAL_56_data;
  wire  _EVAL_54__EVAL_56_addr;
  wire  _EVAL_54__EVAL_56_mask;
  wire  _EVAL_54__EVAL_56_en;
  reg [1:0] _EVAL_57 [0:0];
  reg [31:0] _RAND_8;
  wire [1:0] _EVAL_57__EVAL_58_data;
  wire  _EVAL_57__EVAL_58_addr;
  wire [1:0] _EVAL_57__EVAL_59_data;
  wire  _EVAL_57__EVAL_59_addr;
  wire  _EVAL_57__EVAL_59_mask;
  wire  _EVAL_57__EVAL_59_en;
  wire  _EVAL_60;
  wire  _EVAL_61;
  reg [31:0] _EVAL_63 [0:0];
  reg [31:0] _RAND_9;
  wire [31:0] _EVAL_63__EVAL_64_data;
  wire  _EVAL_63__EVAL_64_addr;
  wire [31:0] _EVAL_63__EVAL_65_data;
  wire  _EVAL_63__EVAL_65_addr;
  wire  _EVAL_63__EVAL_65_mask;
  wire  _EVAL_63__EVAL_65_en;
  wire  _EVAL_66;
  reg  _EVAL_67 [0:0];
  reg [31:0] _RAND_10;
  wire  _EVAL_67__EVAL_68_data;
  wire  _EVAL_67__EVAL_68_addr;
  wire  _EVAL_67__EVAL_69_data;
  wire  _EVAL_67__EVAL_69_addr;
  wire  _EVAL_67__EVAL_69_mask;
  wire  _EVAL_67__EVAL_69_en;
  reg  _EVAL_70;
  reg [31:0] _RAND_11;
  wire  _EVAL_71;
  reg  _EVAL_72 [0:0];
  reg [31:0] _RAND_12;
  wire  _EVAL_72__EVAL_73_data;
  wire  _EVAL_72__EVAL_73_addr;
  wire  _EVAL_72__EVAL_74_data;
  wire  _EVAL_72__EVAL_74_addr;
  wire  _EVAL_72__EVAL_74_mask;
  wire  _EVAL_72__EVAL_74_en;
  assign _EVAL_30__EVAL_31_addr = 1'h0;
  assign _EVAL_30__EVAL_31_data = _EVAL_30[_EVAL_30__EVAL_31_addr];
  assign _EVAL_30__EVAL_32_data = _EVAL_13;
  assign _EVAL_30__EVAL_32_addr = 1'h0;
  assign _EVAL_30__EVAL_32_mask = 1'h1;
  assign _EVAL_30__EVAL_32_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_33__EVAL_34_addr = 1'h0;
  assign _EVAL_33__EVAL_34_data = _EVAL_33[_EVAL_33__EVAL_34_addr];
  assign _EVAL_33__EVAL_35_data = _EVAL_4;
  assign _EVAL_33__EVAL_35_addr = 1'h0;
  assign _EVAL_33__EVAL_35_mask = 1'h1;
  assign _EVAL_33__EVAL_35_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_37__EVAL_38_addr = 1'h0;
  assign _EVAL_37__EVAL_38_data = _EVAL_37[_EVAL_37__EVAL_38_addr];
  assign _EVAL_37__EVAL_39_data = _EVAL_21;
  assign _EVAL_37__EVAL_39_addr = 1'h0;
  assign _EVAL_37__EVAL_39_mask = 1'h1;
  assign _EVAL_37__EVAL_39_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_40__EVAL_41_addr = 1'h0;
  assign _EVAL_40__EVAL_41_data = _EVAL_40[_EVAL_40__EVAL_41_addr];
  assign _EVAL_40__EVAL_42_data = _EVAL_1;
  assign _EVAL_40__EVAL_42_addr = 1'h0;
  assign _EVAL_40__EVAL_42_mask = 1'h1;
  assign _EVAL_40__EVAL_42_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_43__EVAL_44_addr = 1'h0;
  assign _EVAL_43__EVAL_44_data = _EVAL_43[_EVAL_43__EVAL_44_addr];
  assign _EVAL_43__EVAL_45_data = _EVAL_10;
  assign _EVAL_43__EVAL_45_addr = 1'h0;
  assign _EVAL_43__EVAL_45_mask = 1'h1;
  assign _EVAL_43__EVAL_45_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_46__EVAL_47_addr = 1'h0;
  assign _EVAL_46__EVAL_47_data = _EVAL_46[_EVAL_46__EVAL_47_addr];
  assign _EVAL_46__EVAL_48_data = _EVAL_17;
  assign _EVAL_46__EVAL_48_addr = 1'h0;
  assign _EVAL_46__EVAL_48_mask = 1'h1;
  assign _EVAL_46__EVAL_48_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_49__EVAL_50_addr = 1'h0;
  assign _EVAL_49__EVAL_50_data = _EVAL_49[_EVAL_49__EVAL_50_addr];
  assign _EVAL_49__EVAL_51_data = _EVAL_3;
  assign _EVAL_49__EVAL_51_addr = 1'h0;
  assign _EVAL_49__EVAL_51_mask = 1'h1;
  assign _EVAL_49__EVAL_51_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_54__EVAL_55_addr = 1'h0;
  assign _EVAL_54__EVAL_55_data = _EVAL_54[_EVAL_54__EVAL_55_addr];
  assign _EVAL_54__EVAL_56_data = _EVAL_28;
  assign _EVAL_54__EVAL_56_addr = 1'h0;
  assign _EVAL_54__EVAL_56_mask = 1'h1;
  assign _EVAL_54__EVAL_56_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_57__EVAL_58_addr = 1'h0;
  assign _EVAL_57__EVAL_58_data = _EVAL_57[_EVAL_57__EVAL_58_addr];
  assign _EVAL_57__EVAL_59_data = _EVAL;
  assign _EVAL_57__EVAL_59_addr = 1'h0;
  assign _EVAL_57__EVAL_59_mask = 1'h1;
  assign _EVAL_57__EVAL_59_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_63__EVAL_64_addr = 1'h0;
  assign _EVAL_63__EVAL_64_data = _EVAL_63[_EVAL_63__EVAL_64_addr];
  assign _EVAL_63__EVAL_65_data = _EVAL_6;
  assign _EVAL_63__EVAL_65_addr = 1'h0;
  assign _EVAL_63__EVAL_65_mask = 1'h1;
  assign _EVAL_63__EVAL_65_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_67__EVAL_68_addr = 1'h0;
  assign _EVAL_67__EVAL_68_data = _EVAL_67[_EVAL_67__EVAL_68_addr];
  assign _EVAL_67__EVAL_69_data = _EVAL_15;
  assign _EVAL_67__EVAL_69_addr = 1'h0;
  assign _EVAL_67__EVAL_69_mask = 1'h1;
  assign _EVAL_67__EVAL_69_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_72__EVAL_73_addr = 1'h0;
  assign _EVAL_72__EVAL_73_data = _EVAL_72[_EVAL_72__EVAL_73_addr];
  assign _EVAL_72__EVAL_74_data = _EVAL_16;
  assign _EVAL_72__EVAL_74_addr = 1'h0;
  assign _EVAL_72__EVAL_74_mask = 1'h1;
  assign _EVAL_72__EVAL_74_en = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_53 = _EVAL_2 & _EVAL_8;
  assign _EVAL_5 = _EVAL_66 ? _EVAL_28 : _EVAL_54__EVAL_55_data;
  assign _EVAL_20 = _EVAL_66 ? _EVAL_3 : _EVAL_49__EVAL_50_data;
  assign _EVAL_61 = _EVAL_14 & _EVAL_22;
  assign _EVAL_29 = _EVAL_36 != _EVAL_71;
  assign _EVAL_36 = _EVAL_66 ? _EVAL_52 : _EVAL_53;
  assign _EVAL_71 = _EVAL_66 ? 1'h0 : _EVAL_61;
  assign _EVAL_11 = _EVAL_66 ? _EVAL_17 : _EVAL_46__EVAL_47_data;
  assign _EVAL_66 = ~_EVAL_70;
  assign _EVAL_52 = _EVAL_14 ? 1'h0 : _EVAL_53;
  assign _EVAL_18 = _EVAL_66 ? _EVAL_21 : _EVAL_37__EVAL_38_data;
  assign _EVAL_24 = _EVAL_66 ? _EVAL : _EVAL_57__EVAL_58_data;
  assign _EVAL_19 = _EVAL_66 ? _EVAL_16 : _EVAL_72__EVAL_73_data;
  assign _EVAL_25 = _EVAL_66 ? _EVAL_4 : _EVAL_33__EVAL_34_data;
  assign _EVAL_27 = _EVAL_66 ? _EVAL_10 : _EVAL_43__EVAL_44_data;
  assign _EVAL_60 = ~_EVAL_66;
  assign _EVAL_23 = _EVAL_66 ? _EVAL_6 : _EVAL_63__EVAL_64_data;
  assign _EVAL_2 = ~_EVAL_70;
  assign _EVAL_22 = _EVAL_8 | _EVAL_60;
  assign _EVAL_26 = _EVAL_66 ? _EVAL_13 : _EVAL_30__EVAL_31_data;
  assign _EVAL_7 = _EVAL_66 ? _EVAL_1 : _EVAL_40__EVAL_41_data;
  assign _EVAL_9 = _EVAL_66 ? _EVAL_15 : _EVAL_67__EVAL_68_data;
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
    _EVAL_30[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_33[initvar] = _RAND_1[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_37[initvar] = _RAND_2[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_40[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_43[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_46[initvar] = _RAND_5[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_49[initvar] = _RAND_6[29:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_54[initvar] = _RAND_7[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_8 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_57[initvar] = _RAND_8[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_9 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_63[initvar] = _RAND_9[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_10 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_67[initvar] = _RAND_10[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _EVAL_70 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _EVAL_72[initvar] = _RAND_12[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_0) begin
    if(_EVAL_30__EVAL_32_en & _EVAL_30__EVAL_32_mask) begin
      _EVAL_30[_EVAL_30__EVAL_32_addr] <= _EVAL_30__EVAL_32_data;
    end
    if(_EVAL_33__EVAL_35_en & _EVAL_33__EVAL_35_mask) begin
      _EVAL_33[_EVAL_33__EVAL_35_addr] <= _EVAL_33__EVAL_35_data;
    end
    if(_EVAL_37__EVAL_39_en & _EVAL_37__EVAL_39_mask) begin
      _EVAL_37[_EVAL_37__EVAL_39_addr] <= _EVAL_37__EVAL_39_data;
    end
    if(_EVAL_40__EVAL_42_en & _EVAL_40__EVAL_42_mask) begin
      _EVAL_40[_EVAL_40__EVAL_42_addr] <= _EVAL_40__EVAL_42_data;
    end
    if(_EVAL_43__EVAL_45_en & _EVAL_43__EVAL_45_mask) begin
      _EVAL_43[_EVAL_43__EVAL_45_addr] <= _EVAL_43__EVAL_45_data;
    end
    if(_EVAL_46__EVAL_48_en & _EVAL_46__EVAL_48_mask) begin
      _EVAL_46[_EVAL_46__EVAL_48_addr] <= _EVAL_46__EVAL_48_data;
    end
    if(_EVAL_49__EVAL_51_en & _EVAL_49__EVAL_51_mask) begin
      _EVAL_49[_EVAL_49__EVAL_51_addr] <= _EVAL_49__EVAL_51_data;
    end
    if(_EVAL_54__EVAL_56_en & _EVAL_54__EVAL_56_mask) begin
      _EVAL_54[_EVAL_54__EVAL_56_addr] <= _EVAL_54__EVAL_56_data;
    end
    if(_EVAL_57__EVAL_59_en & _EVAL_57__EVAL_59_mask) begin
      _EVAL_57[_EVAL_57__EVAL_59_addr] <= _EVAL_57__EVAL_59_data;
    end
    if(_EVAL_63__EVAL_65_en & _EVAL_63__EVAL_65_mask) begin
      _EVAL_63[_EVAL_63__EVAL_65_addr] <= _EVAL_63__EVAL_65_data;
    end
    if(_EVAL_67__EVAL_69_en & _EVAL_67__EVAL_69_mask) begin
      _EVAL_67[_EVAL_67__EVAL_69_addr] <= _EVAL_67__EVAL_69_data;
    end
    if (_EVAL_12) begin
      _EVAL_70 <= 1'h0;
    end else if (_EVAL_29) begin
      if (_EVAL_66) begin
        if (_EVAL_14) begin
          _EVAL_70 <= 1'h0;
        end else begin
          _EVAL_70 <= _EVAL_53;
        end
      end else begin
        _EVAL_70 <= _EVAL_53;
      end
    end
    if(_EVAL_72__EVAL_74_en & _EVAL_72__EVAL_74_mask) begin
      _EVAL_72[_EVAL_72__EVAL_74_addr] <= _EVAL_72__EVAL_74_data;
    end
  end
endmodule
