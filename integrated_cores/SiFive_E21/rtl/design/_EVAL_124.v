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
module _EVAL_124(
  input          _EVAL,
  output [31:0]  _EVAL_0,
  output [1:0]   _EVAL_1,
  output         _EVAL_2,
  input  [31:0]  _EVAL_3,
  output         _EVAL_4,
  input  [31:0]  _EVAL_5,
  output [2:0]   _EVAL_6,
  input  [2:0]   _EVAL_7,
  input  [2:0]   _EVAL_8,
  output         _EVAL_9,
  output [8:0]   _EVAL_10,
  output [3:0]   _EVAL_11,
  input          _EVAL_12,
  input          _EVAL_13,
  output         _EVAL_14,
  input          _EVAL_15,
  input  [3:0]   _EVAL_16,
  output [31:0]  _EVAL_17,
  input          _EVAL_18,
  input  [1:0]   _EVAL_19,
  input          _EVAL_20,
  input          _EVAL_21,
  input          _EVAL_22,
  input  [1:0]   _EVAL_23,
  input  [2:0]   _EVAL_24,
  input  [31:0]  _EVAL_25,
  input  [8:0]   _EVAL_26,
  output [2:0]   _EVAL_27,
  input          _EVAL_28,
  input  [1:0]   _EVAL_29,
  output         _EVAL_30,
  input  [1:0]   _EVAL_31,
  input          _EVAL_32,
  output [1:0]   _EVAL_33,
  output [3:0]   _EVAL_34,
  input          _EVAL_35,
  output         _EVAL_36,
  input          _EVAL_37,
  output [2:0]   _EVAL_38,
  output         _EVAL_39,
  output [127:0] _EVAL_40,
  input          _EVAL_41,
  input          _EVAL_42,
  input          _EVAL_43,
  output         _EVAL_44,
  output         _EVAL_45,
  output         _EVAL_46,
  input          _EVAL_47,
  input          _EVAL_48
);
  wire  _EVAL_49;
  wire [2:0] _EVAL_50;
  wire  _EVAL_51;
  wire [1:0] _EVAL_52;
  wire  _EVAL_53;
  wire  _EVAL_54;
  reg [1:0] _EVAL_55;
  reg [31:0] _RAND_0;
  wire  _EVAL_56;
  wire [1:0] _EVAL_57;
  wire [2:0] _EVAL_58;
  wire  _EVAL_59;
  wire  _EVAL_60;
  wire  _EVAL_61;
  wire  _EVAL_62;
  wire  _EVAL_63;
  wire  _EVAL_64;
  wire  _EVAL_65;
  wire  _EVAL_66;
  wire  _EVAL_67;
  wire  _EVAL_69;
  wire  _EVAL_70;
  wire  _EVAL_71;
  wire [1:0] _EVAL_72;
  wire  _EVAL_73;
  wire  _EVAL_74;
  wire [1:0] _EVAL_75;
  wire  _EVAL_76;
  reg  _EVAL_78;
  reg [31:0] _RAND_1;
  reg  _EVAL_79;
  reg [31:0] _RAND_2;
  wire  _EVAL_80;
  wire [1:0] _EVAL_81;
  wire  _EVAL_82;
  wire [1:0] _EVAL_83;
  reg  _EVAL_84;
  reg [31:0] _RAND_3;
  wire  _EVAL_85;
  wire  _EVAL_86;
  wire [2:0] _EVAL_87;
  wire  _EVAL_89;
  reg  _EVAL_90;
  reg [31:0] _RAND_4;
  wire [1:0] _EVAL_91;
  wire [1:0] _EVAL_92;
  wire [1:0] _EVAL_93;
  wire  _EVAL_94;
  reg  _EVAL_95;
  reg [31:0] _RAND_5;
  wire  _EVAL_96;
  wire  _EVAL_97;
  wire  _EVAL_98;
  wire  _EVAL_99;
  assign _EVAL_69 = ~_EVAL_70;
  assign _EVAL_33 = _EVAL_70 ? _EVAL_23 : _EVAL_29;
  assign _EVAL_99 = _EVAL_83[1];
  assign _EVAL_93 = _EVAL_96 + _EVAL_99;
  assign _EVAL_57 = _EVAL_62 + _EVAL_80;
  assign _EVAL_56 = _EVAL_60 & _EVAL_47;
  assign _EVAL_36 = _EVAL_70 ? _EVAL_43 : _EVAL_22;
  assign _EVAL_40 = {{119'd0}, _EVAL_26};
  assign _EVAL_87 = _EVAL_75 - _EVAL_57;
  assign _EVAL_96 = _EVAL_83[0];
  assign _EVAL_58 = _EVAL_55 + _EVAL_93;
  assign _EVAL_81 = _EVAL_84 - 1'h1;
  assign _EVAL_46 = _EVAL_70 ? _EVAL_21 : _EVAL_42;
  assign _EVAL_17 = _EVAL_5;
  assign _EVAL_75 = _EVAL_58[1:0];
  assign _EVAL_30 = _EVAL_70 ? _EVAL_28 : _EVAL;
  assign _EVAL_63 = _EVAL_54 & _EVAL_64;
  assign _EVAL_60 = _EVAL_51 & _EVAL_86;
  assign _EVAL_11 = _EVAL_16;
  assign _EVAL_27 = _EVAL_24;
  assign _EVAL_98 = _EVAL_72[0];
  assign _EVAL_39 = _EVAL_70 ? _EVAL_37 : _EVAL_20;
  assign _EVAL_62 = _EVAL_91[0];
  assign _EVAL_38 = _EVAL_70 ? _EVAL_7 : _EVAL_8;
  assign _EVAL_4 = _EVAL_97 & _EVAL_70;
  assign _EVAL_82 = _EVAL_70 ? _EVAL_28 : _EVAL;
  assign _EVAL_74 = _EVAL_49 & _EVAL_61;
  assign _EVAL_80 = _EVAL_91[1];
  assign _EVAL_54 = _EVAL_41 & _EVAL_82;
  assign _EVAL_72 = _EVAL_79 - 1'h1;
  assign _EVAL_86 = _EVAL_70 ? _EVAL_18 : _EVAL_48;
  assign _EVAL_2 = _EVAL_97 & _EVAL_69;
  assign _EVAL_59 = _EVAL_50[1];
  assign _EVAL_9 = _EVAL_51 & _EVAL_86;
  assign _EVAL_6 = _EVAL_24;
  assign _EVAL_70 = _EVAL_95 ? _EVAL_35 : _EVAL_78;
  assign _EVAL_53 = _EVAL_81[0];
  assign _EVAL_0 = _EVAL_70 ? _EVAL_3 : _EVAL_25;
  assign _EVAL_67 = _EVAL_95 | _EVAL_66;
  assign _EVAL_91 = {1'h0,_EVAL_54};
  assign _EVAL_45 = _EVAL_41 & _EVAL_70;
  assign _EVAL_51 = ~_EVAL_89;
  assign _EVAL_34 = _EVAL_16;
  assign _EVAL_64 = ~_EVAL_90;
  assign _EVAL_94 = _EVAL_63 & _EVAL_74;
  assign _EVAL_10 = _EVAL_26;
  assign _EVAL_14 = _EVAL_41 & _EVAL_69;
  assign _EVAL_50 = _EVAL_70 ? _EVAL_7 : _EVAL_8;
  assign _EVAL_1 = _EVAL_70 ? _EVAL_19 : _EVAL_31;
  assign _EVAL_73 = ~_EVAL_79;
  assign _EVAL_85 = ~_EVAL_84;
  assign _EVAL_97 = _EVAL_51 & _EVAL_47;
  assign _EVAL_89 = _EVAL_65 & _EVAL_73;
  assign _EVAL_65 = _EVAL_70 != _EVAL_35;
  assign _EVAL_49 = _EVAL_50[2];
  assign _EVAL_71 = _EVAL_56 & _EVAL_85;
  assign _EVAL_76 = _EVAL_92[0];
  assign _EVAL_61 = ~_EVAL_59;
  assign _EVAL_52 = _EVAL_87[1:0];
  assign _EVAL_92 = _EVAL_90 - 1'h1;
  assign _EVAL_83 = {_EVAL_71,_EVAL_94};
  assign _EVAL_66 = _EVAL_52 == 2'h0;
  assign _EVAL_44 = _EVAL_70 ? _EVAL_32 : _EVAL_15;
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
  _EVAL_55 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_78 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_79 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_84 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_90 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_95 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_13) begin
    _EVAL_55 = 2'h0;
  end
  if (_EVAL_13) begin
    _EVAL_79 = 1'h0;
  end
  if (_EVAL_13) begin
    _EVAL_84 = 1'h0;
  end
  if (_EVAL_13) begin
    _EVAL_90 = 1'h0;
  end
  if (_EVAL_13) begin
    _EVAL_95 = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_12) begin
    if (_EVAL_67) begin
      _EVAL_78 <= _EVAL_35;
    end
  end
  always @(posedge _EVAL_12 or posedge _EVAL_13) begin
    if (_EVAL_13) begin
      _EVAL_55 <= 2'h0;
    end else begin
      _EVAL_55 <= _EVAL_87[1:0];
    end
  end
  always @(posedge _EVAL_12 or posedge _EVAL_13) begin
    if (_EVAL_13) begin
      _EVAL_79 <= 1'h0;
    end else if (_EVAL_56) begin
      if (_EVAL_73) begin
        _EVAL_79 <= 1'h0;
      end else begin
        _EVAL_79 <= _EVAL_98;
      end
    end
  end
  always @(posedge _EVAL_12 or posedge _EVAL_13) begin
    if (_EVAL_13) begin
      _EVAL_84 <= 1'h0;
    end else if (_EVAL_56) begin
      if (_EVAL_85) begin
        _EVAL_84 <= 1'h0;
      end else begin
        _EVAL_84 <= _EVAL_53;
      end
    end
  end
  always @(posedge _EVAL_12 or posedge _EVAL_13) begin
    if (_EVAL_13) begin
      _EVAL_90 <= 1'h0;
    end else if (_EVAL_54) begin
      if (_EVAL_64) begin
        _EVAL_90 <= 1'h0;
      end else begin
        _EVAL_90 <= _EVAL_76;
      end
    end
  end
  always @(posedge _EVAL_12 or posedge _EVAL_13) begin
    if (_EVAL_13) begin
      _EVAL_95 <= 1'h1;
    end else begin
      _EVAL_95 <= 1'h0;
    end
  end
endmodule
