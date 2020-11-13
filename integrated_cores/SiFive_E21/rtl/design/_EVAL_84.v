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
module _EVAL_84(
  output        _EVAL,
  output        _EVAL_0,
  output [31:0] _EVAL_1,
  input  [31:0] _EVAL_2,
  output [1:0]  _EVAL_3,
  input  [2:0]  _EVAL_4,
  output [2:0]  _EVAL_5,
  output        _EVAL_6,
  input         _EVAL_7,
  output [2:0]  _EVAL_8,
  input  [2:0]  _EVAL_9,
  output        _EVAL_10,
  output        _EVAL_11,
  input  [1:0]  _EVAL_12,
  input         _EVAL_13,
  input         _EVAL_14,
  input         _EVAL_15,
  input         _EVAL_16,
  output [1:0]  _EVAL_17,
  input         _EVAL_18
);
  wire [2:0] _EVAL_20;
  wire [1:0] _EVAL_21;
  wire  _EVAL_22;
  wire  _EVAL_24;
  wire  _EVAL_25;
  reg  _EVAL_26 [0:2];
  reg [31:0] _RAND_0;
  wire  _EVAL_26__EVAL_27_data;
  wire [1:0] _EVAL_26__EVAL_27_addr;
  reg [31:0] _RAND_1;
  wire  _EVAL_26__EVAL_28_data;
  wire [1:0] _EVAL_26__EVAL_28_addr;
  wire  _EVAL_26__EVAL_28_mask;
  wire  _EVAL_26__EVAL_28_en;
  wire  _EVAL_29;
  reg  _EVAL_30 [0:2];
  reg [31:0] _RAND_2;
  wire  _EVAL_30__EVAL_31_data;
  wire [1:0] _EVAL_30__EVAL_31_addr;
  reg [31:0] _RAND_3;
  wire  _EVAL_30__EVAL_32_data;
  wire [1:0] _EVAL_30__EVAL_32_addr;
  wire  _EVAL_30__EVAL_32_mask;
  wire  _EVAL_30__EVAL_32_en;
  reg [2:0] _EVAL_33 [0:2];
  reg [31:0] _RAND_4;
  wire [2:0] _EVAL_33__EVAL_34_data;
  wire [1:0] _EVAL_33__EVAL_34_addr;
  reg [31:0] _RAND_5;
  wire [2:0] _EVAL_33__EVAL_35_data;
  wire [1:0] _EVAL_33__EVAL_35_addr;
  wire  _EVAL_33__EVAL_35_mask;
  wire  _EVAL_33__EVAL_35_en;
  reg [1:0] _EVAL_36 [0:2];
  reg [31:0] _RAND_6;
  wire [1:0] _EVAL_36__EVAL_37_data;
  wire [1:0] _EVAL_36__EVAL_37_addr;
  reg [31:0] _RAND_7;
  wire [1:0] _EVAL_36__EVAL_38_data;
  wire [1:0] _EVAL_36__EVAL_38_addr;
  wire  _EVAL_36__EVAL_38_mask;
  wire  _EVAL_36__EVAL_38_en;
  wire  _EVAL_39;
  wire  _EVAL_40;
  wire [2:0] _EVAL_41;
  wire  _EVAL_42;
  wire  _EVAL_43;
  wire  _EVAL_45;
  reg [2:0] _EVAL_47 [0:2];
  reg [31:0] _RAND_8;
  wire [2:0] _EVAL_47__EVAL_48_data;
  wire [1:0] _EVAL_47__EVAL_48_addr;
  reg [31:0] _RAND_9;
  wire [2:0] _EVAL_47__EVAL_49_data;
  wire [1:0] _EVAL_47__EVAL_49_addr;
  wire  _EVAL_47__EVAL_49_mask;
  wire  _EVAL_47__EVAL_49_en;
  reg  _EVAL_50 [0:2];
  reg [31:0] _RAND_10;
  wire  _EVAL_50__EVAL_51_data;
  wire [1:0] _EVAL_50__EVAL_51_addr;
  reg [31:0] _RAND_11;
  wire  _EVAL_50__EVAL_52_data;
  wire [1:0] _EVAL_50__EVAL_52_addr;
  wire  _EVAL_50__EVAL_52_mask;
  wire  _EVAL_50__EVAL_52_en;
  reg [1:0] _EVAL_53 [0:2];
  reg [31:0] _RAND_12;
  wire [1:0] _EVAL_53__EVAL_54_data;
  wire [1:0] _EVAL_53__EVAL_54_addr;
  reg [31:0] _RAND_13;
  wire [1:0] _EVAL_53__EVAL_55_data;
  wire [1:0] _EVAL_53__EVAL_55_addr;
  wire  _EVAL_53__EVAL_55_mask;
  wire  _EVAL_53__EVAL_55_en;
  reg [31:0] _EVAL_56 [0:2];
  reg [31:0] _RAND_14;
  wire [31:0] _EVAL_56__EVAL_57_data;
  wire [1:0] _EVAL_56__EVAL_57_addr;
  reg [31:0] _RAND_15;
  wire [31:0] _EVAL_56__EVAL_58_data;
  wire [1:0] _EVAL_56__EVAL_58_addr;
  wire  _EVAL_56__EVAL_58_mask;
  wire  _EVAL_56__EVAL_58_en;
  wire [1:0] _EVAL_59;
  reg  _EVAL_60;
  reg [31:0] _RAND_16;
  reg [1:0] _EVAL_61;
  reg [31:0] _RAND_17;
  wire  _EVAL_62;
  reg [1:0] _EVAL_63;
  reg [31:0] _RAND_18;
  wire  _EVAL_64;
  wire  _EVAL_66;
  wire  _EVAL_67;
  assign _EVAL_26__EVAL_27_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_26__EVAL_27_data = _EVAL_26[_EVAL_26__EVAL_27_addr];
  `else
  assign _EVAL_26__EVAL_27_data = _EVAL_26__EVAL_27_addr >= 2'h3 ? _RAND_1[0:0] : _EVAL_26[_EVAL_26__EVAL_27_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_26__EVAL_28_data = _EVAL_16;
  assign _EVAL_26__EVAL_28_addr = _EVAL_63;
  assign _EVAL_26__EVAL_28_mask = 1'h1;
  assign _EVAL_26__EVAL_28_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_30__EVAL_31_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_30__EVAL_31_data = _EVAL_30[_EVAL_30__EVAL_31_addr];
  `else
  assign _EVAL_30__EVAL_31_data = _EVAL_30__EVAL_31_addr >= 2'h3 ? _RAND_3[0:0] : _EVAL_30[_EVAL_30__EVAL_31_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_30__EVAL_32_data = _EVAL_7;
  assign _EVAL_30__EVAL_32_addr = _EVAL_63;
  assign _EVAL_30__EVAL_32_mask = 1'h1;
  assign _EVAL_30__EVAL_32_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_33__EVAL_34_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_33__EVAL_34_data = _EVAL_33[_EVAL_33__EVAL_34_addr];
  `else
  assign _EVAL_33__EVAL_34_data = _EVAL_33__EVAL_34_addr >= 2'h3 ? _RAND_5[2:0] : _EVAL_33[_EVAL_33__EVAL_34_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_33__EVAL_35_data = _EVAL_9;
  assign _EVAL_33__EVAL_35_addr = _EVAL_63;
  assign _EVAL_33__EVAL_35_mask = 1'h1;
  assign _EVAL_33__EVAL_35_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_36__EVAL_37_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_36__EVAL_37_data = _EVAL_36[_EVAL_36__EVAL_37_addr];
  `else
  assign _EVAL_36__EVAL_37_data = _EVAL_36__EVAL_37_addr >= 2'h3 ? _RAND_7[1:0] : _EVAL_36[_EVAL_36__EVAL_37_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_36__EVAL_38_data = _EVAL_12;
  assign _EVAL_36__EVAL_38_addr = _EVAL_63;
  assign _EVAL_36__EVAL_38_mask = 1'h1;
  assign _EVAL_36__EVAL_38_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_47__EVAL_48_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_47__EVAL_48_data = _EVAL_47[_EVAL_47__EVAL_48_addr];
  `else
  assign _EVAL_47__EVAL_48_data = _EVAL_47__EVAL_48_addr >= 2'h3 ? _RAND_9[2:0] : _EVAL_47[_EVAL_47__EVAL_48_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_47__EVAL_49_data = _EVAL_4;
  assign _EVAL_47__EVAL_49_addr = _EVAL_63;
  assign _EVAL_47__EVAL_49_mask = 1'h1;
  assign _EVAL_47__EVAL_49_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_50__EVAL_51_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_50__EVAL_51_data = _EVAL_50[_EVAL_50__EVAL_51_addr];
  `else
  assign _EVAL_50__EVAL_51_data = _EVAL_50__EVAL_51_addr >= 2'h3 ? _RAND_11[0:0] : _EVAL_50[_EVAL_50__EVAL_51_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_50__EVAL_52_data = 1'h0;
  assign _EVAL_50__EVAL_52_addr = _EVAL_63;
  assign _EVAL_50__EVAL_52_mask = 1'h1;
  assign _EVAL_50__EVAL_52_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_53__EVAL_54_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_53__EVAL_54_data = _EVAL_53[_EVAL_53__EVAL_54_addr];
  `else
  assign _EVAL_53__EVAL_54_data = _EVAL_53__EVAL_54_addr >= 2'h3 ? _RAND_13[1:0] : _EVAL_53[_EVAL_53__EVAL_54_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_53__EVAL_55_data = 2'h0;
  assign _EVAL_53__EVAL_55_addr = _EVAL_63;
  assign _EVAL_53__EVAL_55_mask = 1'h1;
  assign _EVAL_53__EVAL_55_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_56__EVAL_57_addr = _EVAL_61;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_56__EVAL_57_data = _EVAL_56[_EVAL_56__EVAL_57_addr];
  `else
  assign _EVAL_56__EVAL_57_data = _EVAL_56__EVAL_57_addr >= 2'h3 ? _RAND_15[31:0] : _EVAL_56[_EVAL_56__EVAL_57_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _EVAL_56__EVAL_58_data = _EVAL_2;
  assign _EVAL_56__EVAL_58_addr = _EVAL_63;
  assign _EVAL_56__EVAL_58_mask = 1'h1;
  assign _EVAL_56__EVAL_58_en = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_17 = _EVAL_22 ? 2'h0 : _EVAL_53__EVAL_54_data;
  assign _EVAL_24 = _EVAL_42 != _EVAL_62;
  assign _EVAL_29 = _EVAL & _EVAL_13;
  assign _EVAL_3 = _EVAL_22 ? _EVAL_12 : _EVAL_36__EVAL_37_data;
  assign _EVAL_20 = _EVAL_63 + 2'h1;
  assign _EVAL_0 = _EVAL_22 ? 1'h0 : _EVAL_50__EVAL_51_data;
  assign _EVAL_10 = _EVAL_22 ? _EVAL_16 : _EVAL_26__EVAL_27_data;
  assign _EVAL_11 = _EVAL_13 | _EVAL_25;
  assign _EVAL_6 = _EVAL_22 ? _EVAL_7 : _EVAL_30__EVAL_31_data;
  assign _EVAL_39 = ~_EVAL_60;
  assign _EVAL_66 = _EVAL_61 == 2'h2;
  assign _EVAL_43 = _EVAL_15 ? 1'h0 : _EVAL_29;
  assign _EVAL_42 = _EVAL_22 ? _EVAL_43 : _EVAL_29;
  assign _EVAL_25 = ~_EVAL_22;
  assign _EVAL_67 = _EVAL_63 == 2'h2;
  assign _EVAL_22 = _EVAL_64 & _EVAL_39;
  assign _EVAL_62 = _EVAL_22 ? 1'h0 : _EVAL_40;
  assign _EVAL_64 = _EVAL_63 == _EVAL_61;
  assign _EVAL = ~_EVAL_45;
  assign _EVAL_5 = _EVAL_22 ? _EVAL_9 : _EVAL_33__EVAL_34_data;
  assign _EVAL_45 = _EVAL_64 & _EVAL_60;
  assign _EVAL_8 = _EVAL_22 ? _EVAL_4 : _EVAL_47__EVAL_48_data;
  assign _EVAL_40 = _EVAL_15 & _EVAL_11;
  assign _EVAL_41 = _EVAL_61 + 2'h1;
  assign _EVAL_1 = _EVAL_22 ? _EVAL_2 : _EVAL_56__EVAL_57_data;
  assign _EVAL_21 = _EVAL_41[1:0];
  assign _EVAL_59 = _EVAL_20[1:0];
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
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_26[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_30[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_33[initvar] = _RAND_4[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_36[initvar] = _RAND_6[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_7 = {1{`RANDOM}};
  _RAND_8 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_47[initvar] = _RAND_8[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_9 = {1{`RANDOM}};
  _RAND_10 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_50[initvar] = _RAND_10[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_11 = {1{`RANDOM}};
  _RAND_12 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_53[initvar] = _RAND_12[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_13 = {1{`RANDOM}};
  _RAND_14 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    _EVAL_56[initvar] = _RAND_14[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_15 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _EVAL_60 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _EVAL_61 = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _EVAL_63 = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_14) begin
    if(_EVAL_26__EVAL_28_en & _EVAL_26__EVAL_28_mask) begin
      _EVAL_26[_EVAL_26__EVAL_28_addr] <= _EVAL_26__EVAL_28_data;
    end
    if(_EVAL_30__EVAL_32_en & _EVAL_30__EVAL_32_mask) begin
      _EVAL_30[_EVAL_30__EVAL_32_addr] <= _EVAL_30__EVAL_32_data;
    end
    if(_EVAL_33__EVAL_35_en & _EVAL_33__EVAL_35_mask) begin
      _EVAL_33[_EVAL_33__EVAL_35_addr] <= _EVAL_33__EVAL_35_data;
    end
    if(_EVAL_36__EVAL_38_en & _EVAL_36__EVAL_38_mask) begin
      _EVAL_36[_EVAL_36__EVAL_38_addr] <= _EVAL_36__EVAL_38_data;
    end
    if(_EVAL_47__EVAL_49_en & _EVAL_47__EVAL_49_mask) begin
      _EVAL_47[_EVAL_47__EVAL_49_addr] <= _EVAL_47__EVAL_49_data;
    end
    if(_EVAL_50__EVAL_52_en & _EVAL_50__EVAL_52_mask) begin
      _EVAL_50[_EVAL_50__EVAL_52_addr] <= _EVAL_50__EVAL_52_data;
    end
    if(_EVAL_53__EVAL_55_en & _EVAL_53__EVAL_55_mask) begin
      _EVAL_53[_EVAL_53__EVAL_55_addr] <= _EVAL_53__EVAL_55_data;
    end
    if(_EVAL_56__EVAL_58_en & _EVAL_56__EVAL_58_mask) begin
      _EVAL_56[_EVAL_56__EVAL_58_addr] <= _EVAL_56__EVAL_58_data;
    end
    if (_EVAL_18) begin
      _EVAL_60 <= 1'h0;
    end else if (_EVAL_24) begin
      if (_EVAL_22) begin
        if (_EVAL_15) begin
          _EVAL_60 <= 1'h0;
        end else begin
          _EVAL_60 <= _EVAL_29;
        end
      end else begin
        _EVAL_60 <= _EVAL_29;
      end
    end
    if (_EVAL_18) begin
      _EVAL_61 <= 2'h0;
    end else if (_EVAL_62) begin
      if (_EVAL_66) begin
        _EVAL_61 <= 2'h0;
      end else begin
        _EVAL_61 <= _EVAL_21;
      end
    end
    if (_EVAL_18) begin
      _EVAL_63 <= 2'h0;
    end else if (_EVAL_42) begin
      if (_EVAL_67) begin
        _EVAL_63 <= 2'h0;
      end else begin
        _EVAL_63 <= _EVAL_59;
      end
    end
  end
endmodule
