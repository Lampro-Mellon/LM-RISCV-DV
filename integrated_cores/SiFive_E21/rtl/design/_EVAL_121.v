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
module _EVAL_121(
  input  [31:0] _EVAL,
  output [31:0] _EVAL_0,
  input  [6:0]  _EVAL_1,
  input         _EVAL_2,
  input         _EVAL_3,
  input         _EVAL_4,
  input         _EVAL_5,
  output        _EVAL_6,
  output        _EVAL_7,
  output        _EVAL_8,
  output        _EVAL_9,
  input         _EVAL_10,
  output [2:0]  _EVAL_11,
  output        _EVAL_12,
  output        _EVAL_13,
  output        _EVAL_14,
  input         _EVAL_15,
  input  [2:0]  _EVAL_16,
  input         _EVAL_17,
  output        _EVAL_18,
  output        _EVAL_19,
  input  [3:0]  _EVAL_20,
  output [9:0]  _EVAL_21
);
  wire  _EVAL_23;
  wire  _EVAL_24;
  wire  _EVAL_25;
  reg  _EVAL_26;
  reg [31:0] _RAND_0;
  wire  _EVAL_27;
  wire [17:0] _EVAL_28;
  wire [2:0] _EVAL_29;
  wire  _EVAL_30;
  wire  _EVAL_34;
  wire [7:0] _EVAL_36;
  wire  _EVAL_38;
  wire  _EVAL_39;
  wire  _EVAL_42;
  wire  _EVAL_43;
  wire [4:0] _EVAL_44;
  wire [7:0] _EVAL_46;
  wire  _EVAL_48;
  wire  _EVAL_49;
  wire  _EVAL_50;
  wire  _EVAL_51;
  wire  _EVAL_52;
  wire  _EVAL_55;
  wire  _EVAL_58;
  reg  _EVAL_59;
  reg [31:0] _RAND_1;
  reg  _EVAL_60;
  reg [31:0] _RAND_2;
  wire  _EVAL_61;
  wire  _EVAL_62;
  wire  _EVAL_64;
  wire [7:0] _EVAL_65;
  wire  _EVAL_66;
  wire  _EVAL_67;
  wire [4:0] _EVAL_68;
  wire  _EVAL_69;
  wire  _EVAL_70;
  wire  _EVAL_71;
  wire  _EVAL_72;
  reg  _EVAL_73;
  reg [31:0] _RAND_3;
  wire [7:0] _EVAL_74;
  wire  _EVAL_75;
  wire  _EVAL_76;
  wire  _EVAL_77;
  wire  _EVAL_78;
  wire  _EVAL_80;
  wire  _EVAL_81;
  wire  _EVAL_82;
  wire  _EVAL_83;
  wire  _EVAL_86;
  wire  _EVAL_89;
  wire  _EVAL_90;
  reg  _EVAL_91;
  reg [31:0] _RAND_4;
  wire [15:0] _EVAL_92;
  wire  _EVAL_93;
  wire  _EVAL_94;
  wire  _EVAL_95;
  wire  _EVAL_97;
  wire [25:0] _EVAL_98;
  wire [31:0] _EVAL_99;
  reg  _EVAL_100;
  reg [31:0] _RAND_5;
  wire [31:0] _EVAL_101;
  wire  _EVAL_103;
  wire  _EVAL_104;
  reg  _EVAL_106;
  reg [31:0] _RAND_6;
  wire  _EVAL_109;
  wire  _EVAL_110;
  wire  _EVAL_111;
  reg  _EVAL_112;
  reg [31:0] _RAND_7;
  assign _EVAL_50 = _EVAL_69 | _EVAL_61;
  assign _EVAL_77 = _EVAL[0];
  assign _EVAL_67 = _EVAL_101[1];
  assign _EVAL_48 = _EVAL_101[0];
  assign _EVAL_97 = _EVAL_27 & _EVAL_71;
  assign _EVAL_46 = _EVAL_42 ? 8'hff : 8'h0;
  assign _EVAL_93 = _EVAL_101[30];
  assign _EVAL_42 = _EVAL_20[1];
  assign _EVAL_55 = _EVAL_97 & _EVAL_51;
  assign _EVAL_104 = _EVAL_20[3];
  assign _EVAL_68 = _EVAL_1[6:2];
  assign _EVAL_9 = _EVAL_90 | _EVAL_60;
  assign _EVAL_21 = 10'h0;
  assign _EVAL_44 = {1'h0,1'h0,1'h0,_EVAL_73,_EVAL_24};
  assign _EVAL_13 = _EVAL_59;
  assign _EVAL_36 = _EVAL_104 ? 8'hff : 8'h0;
  assign _EVAL_25 = _EVAL_61 & _EVAL_86;
  assign _EVAL_39 = _EVAL_49 & _EVAL_109;
  assign _EVAL_69 = _EVAL_27 & _EVAL_93;
  assign _EVAL_66 = _EVAL_15 & _EVAL_5;
  assign _EVAL_49 = _EVAL_82 & _EVAL_34;
  assign _EVAL_111 = ~_EVAL_59;
  assign _EVAL_24 = _EVAL_59 & _EVAL_17;
  assign _EVAL_58 = _EVAL_39 | _EVAL_91;
  assign _EVAL_43 = _EVAL_27 & _EVAL_30;
  assign _EVAL_90 = _EVAL_69 & _EVAL_94;
  assign _EVAL_78 = _EVAL_29 == 3'h0;
  assign _EVAL_34 = _EVAL[3];
  assign _EVAL_101 = {_EVAL_36,_EVAL_65,_EVAL_46,_EVAL_74};
  assign _EVAL_19 = _EVAL_5;
  assign _EVAL_110 = _EVAL_101[28];
  assign _EVAL_23 = _EVAL_76 ? 1'h0 : _EVAL_58;
  assign _EVAL_51 = _EVAL[2];
  assign _EVAL_11 = {{2'd0}, _EVAL_80};
  assign _EVAL_18 = _EVAL_111 ? 1'h0 : _EVAL_23;
  assign _EVAL_30 = _EVAL_101[31];
  assign _EVAL_94 = _EVAL[30];
  assign _EVAL_70 = _EVAL_27 & _EVAL_48;
  assign _EVAL_8 = _EVAL_15;
  assign _EVAL_95 = _EVAL_101[3];
  assign _EVAL_74 = _EVAL_75 ? 8'hff : 8'h0;
  assign _EVAL_62 = ~_EVAL_4;
  assign _EVAL_27 = _EVAL_81 & _EVAL_78;
  assign _EVAL_6 = _EVAL_73;
  assign _EVAL_71 = _EVAL_101[2];
  assign _EVAL_64 = _EVAL_27 & _EVAL_67;
  assign _EVAL_86 = _EVAL[28];
  assign _EVAL_61 = _EVAL_27 & _EVAL_110;
  assign _EVAL_28 = {1'h0,1'h0,_EVAL_92};
  assign _EVAL_29 = _EVAL_68[2:0];
  assign _EVAL_109 = _EVAL_21 == 10'h0;
  assign _EVAL_92 = {{11'd0}, _EVAL_44};
  assign _EVAL_7 = _EVAL_25 | _EVAL_26;
  assign _EVAL_89 = _EVAL_50 | _EVAL_82;
  assign _EVAL_81 = _EVAL_66 & _EVAL_83;
  assign _EVAL_75 = _EVAL_20[0];
  assign _EVAL_83 = ~_EVAL_80;
  assign _EVAL_76 = _EVAL_55 & _EVAL_109;
  assign _EVAL_99 = {_EVAL_106,1'h0,1'h0,1'h0,1'h0,1'h0,_EVAL_98};
  assign _EVAL_0 = _EVAL_78 ? _EVAL_99 : 32'h0;
  assign _EVAL_80 = _EVAL_16 == 3'h4;
  assign _EVAL_12 = _EVAL_100 | _EVAL_2;
  assign _EVAL_14 = _EVAL_52 | _EVAL_112;
  assign _EVAL_52 = _EVAL_89 | _EVAL_97;
  assign _EVAL_65 = _EVAL_72 ? 8'hff : 8'h0;
  assign _EVAL_103 = _EVAL[1];
  assign _EVAL_98 = {{8'd0}, _EVAL_28};
  assign _EVAL_38 = _EVAL[31];
  assign _EVAL_72 = _EVAL_20[2];
  assign _EVAL_82 = _EVAL_27 & _EVAL_95;
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
  _EVAL_26 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_59 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_60 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_73 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_91 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_100 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _EVAL_106 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _EVAL_112 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_3) begin
    _EVAL_26 = 1'h0;
  end
  if (_EVAL_3) begin
    _EVAL_59 = 1'h0;
  end
  if (_EVAL_3) begin
    _EVAL_60 = 1'h0;
  end
  if (_EVAL_3) begin
    _EVAL_73 = 1'h0;
  end
  if (_EVAL_3) begin
    _EVAL_91 = 1'h0;
  end
  if (_EVAL_3) begin
    _EVAL_100 = 1'h0;
  end
  if (_EVAL_3) begin
    _EVAL_106 = 1'h0;
  end
  if (_EVAL_3) begin
    _EVAL_112 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_26 <= 1'h0;
    end else begin
      _EVAL_26 <= _EVAL_7 & _EVAL_62;
    end
  end
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_59 <= 1'h0;
    end else if (_EVAL_70) begin
      _EVAL_59 <= _EVAL_77;
    end else if (_EVAL_111) begin
      _EVAL_59 <= 1'h0;
    end
  end
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_60 <= 1'h0;
    end else begin
      _EVAL_60 <= _EVAL_9 & _EVAL_62;
    end
  end
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_73 <= 1'h0;
    end else if (_EVAL_111) begin
      _EVAL_73 <= 1'h0;
    end else if (_EVAL_64) begin
      _EVAL_73 <= _EVAL_103;
    end
  end
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_91 <= 1'h0;
    end else if (_EVAL_111) begin
      _EVAL_91 <= 1'h0;
    end else if (_EVAL_76) begin
      _EVAL_91 <= 1'h0;
    end else begin
      _EVAL_91 <= _EVAL_58;
    end
  end
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_100 <= 1'h0;
    end else if (_EVAL_111) begin
      _EVAL_100 <= 1'h0;
    end else if (_EVAL_43) begin
      _EVAL_100 <= _EVAL_38;
    end
  end
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_106 <= 1'h0;
    end else if (_EVAL_111) begin
      _EVAL_106 <= 1'h0;
    end else if (_EVAL_43) begin
      _EVAL_106 <= _EVAL_38;
    end
  end
  always @(posedge _EVAL_10 or posedge _EVAL_3) begin
    if (_EVAL_3) begin
      _EVAL_112 <= 1'h0;
    end else begin
      _EVAL_112 <= _EVAL_14 & _EVAL_62;
    end
  end
endmodule
