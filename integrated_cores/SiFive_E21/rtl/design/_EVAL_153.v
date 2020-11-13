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
module _EVAL_153(
  input  [4:0]  _EVAL,
  input  [31:0] _EVAL_0,
  input  [31:0] _EVAL_1,
  output [31:0] _EVAL_2,
  output [31:0] _EVAL_3
);
  wire [4:0] _EVAL_4;
  wire [32:0] _EVAL_5;
  wire  _EVAL_6;
  wire  _EVAL_7;
  wire [31:0] _EVAL_8;
  wire [31:0] _EVAL_9;
  wire  _EVAL_10;
  wire [31:0] _EVAL_11;
  wire [31:0] _EVAL_12;
  wire  _EVAL_13;
  wire  _EVAL_14;
  wire  _EVAL_15;
  wire  _EVAL_16;
  wire  _EVAL_17;
  wire  _EVAL_18;
  wire [65:0] _EVAL_19;
  wire  _EVAL_20;
  wire [31:0] _EVAL_21;
  wire  _EVAL_22;
  wire  _EVAL_23;
  wire [31:0] _EVAL_24;
  wire [31:0] _EVAL_25;
  wire  _EVAL_26;
  wire [32:0] _EVAL_27;
  wire  _EVAL_28;
  wire [31:0] _EVAL_29;
  wire [31:0] _EVAL_30;
  wire  _EVAL_31;
  wire [31:0] _EVAL_32;
  wire [31:0] _EVAL_33;
  wire [4:0] _EVAL_34;
  wire  _EVAL_35;
  wire [31:0] _EVAL_36;
  wire [31:0] _EVAL_37;
  wire  _EVAL_38;
  wire  _EVAL_39;
  wire  _EVAL_40;
  wire  _EVAL_41;
  wire  _EVAL_42;
  wire [5:0] _EVAL_43;
  wire  _EVAL_44;
  wire [32:0] _EVAL_45;
  wire  _EVAL_46;
  wire [32:0] _EVAL_47;
  wire  _EVAL_48;
  wire  _EVAL_49;
  wire [31:0] _EVAL_50;
  wire  _EVAL_51;
  wire [31:0] _EVAL_52;
  wire  _EVAL_53;
  wire [31:0] _EVAL_54;
  wire  _EVAL_55;
  wire  _EVAL_56;
  wire [31:0] _EVAL_57;
  wire  _EVAL_58;
  wire  _EVAL_59;
  wire  _EVAL_60;
  wire [31:0] _EVAL_61;
  wire [31:0] _EVAL_62;
  wire  _EVAL_63;
  wire [4:0] _EVAL_64;
  wire  _EVAL_65;
  wire [1:0] _EVAL_66;
  wire  _EVAL_67;
  wire  _EVAL_68;
  wire [32:0] _EVAL_69;
  wire [32:0] _EVAL_70;
  wire [31:0] _EVAL_71;
  assign _EVAL_17 = _EVAL_59 & _EVAL_13;
  assign _EVAL_52 = _EVAL_36 | _EVAL_9;
  assign _EVAL_35 = _EVAL_38 ? _EVAL_14 : _EVAL_31;
  assign _EVAL_13 = _EVAL[2];
  assign _EVAL_6 = _EVAL_66 != 2'h3;
  assign _EVAL_10 = _EVAL_48 | _EVAL_23;
  assign _EVAL_3 = _EVAL_50 | _EVAL_52;
  assign _EVAL_14 = _EVAL_0[31];
  assign _EVAL_20 = _EVAL_46 & _EVAL_28;
  assign _EVAL_31 = _EVAL_1[31];
  assign _EVAL_24 = _EVAL_19[63:32];
  assign _EVAL_53 = ~_EVAL_58;
  assign _EVAL_30 = _EVAL_19[31:0];
  assign _EVAL_22 = ~_EVAL_40;
  assign _EVAL_62 = _EVAL_5[31:0];
  assign _EVAL_23 = _EVAL == 5'h8;
  assign _EVAL_38 = _EVAL[0];
  assign _EVAL_16 = _EVAL_66 != 2'h0;
  assign _EVAL_67 = _EVAL == 5'h6;
  assign _EVAL_61 = _EVAL_1 ^ _EVAL_12;
  assign _EVAL_44 = _EVAL_31 == _EVAL_14;
  assign _EVAL_58 = _EVAL_26 ? _EVAL_16 : _EVAL_68;
  assign _EVAL_46 = _EVAL_55 & _EVAL_40;
  assign _EVAL_41 = _EVAL_26 & _EVAL_22;
  assign _EVAL_64 = _EVAL_13 ? _EVAL_34 : _EVAL_4;
  assign _EVAL_59 = _EVAL_66 == 2'h1;
  assign _EVAL_63 = _EVAL == 5'h7;
  assign _EVAL_7 = _EVAL == 5'h4;
  assign _EVAL_55 = _EVAL[3];
  assign _EVAL_65 = _EVAL_41 & _EVAL_14;
  assign _EVAL_69 = {_EVAL_56,_EVAL_1};
  assign _EVAL_11 = _EVAL_26 ? _EVAL_0 : _EVAL_57;
  assign _EVAL_32 = _EVAL_1 & _EVAL_0;
  assign _EVAL_45 = _EVAL_62 + _EVAL_37;
  assign _EVAL_70 = _EVAL_27;
  assign _EVAL_51 = _EVAL_67 | _EVAL_63;
  assign _EVAL_34 = _EVAL_43[4:0];
  assign _EVAL_60 = _EVAL_43[5];
  assign _EVAL_5 = _EVAL_1 + _EVAL_12;
  assign _EVAL_26 = _EVAL[4];
  assign _EVAL_57 = 32'h1 << _EVAL_64;
  assign _EVAL_27 = {_EVAL_65,_EVAL_11};
  assign _EVAL_33 = _EVAL_15 ? _EVAL_30 : 32'h0;
  assign _EVAL_4 = _EVAL_0[4:0];
  assign _EVAL_49 = _EVAL_2[31];
  assign _EVAL_47 = _EVAL_69;
  assign _EVAL_68 = _EVAL_17 & _EVAL_60;
  assign _EVAL_12 = _EVAL_55 ? _EVAL_8 : _EVAL_0;
  assign _EVAL_2 = _EVAL_45[31:0];
  assign _EVAL_39 = _EVAL_26 ? _EVAL_6 : _EVAL_55;
  assign _EVAL_40 = _EVAL[1];
  assign _EVAL_48 = _EVAL == 5'h0;
  assign _EVAL_50 = _EVAL_10 ? _EVAL_2 : 32'h0;
  assign _EVAL_71 = _EVAL_25 | _EVAL_21;
  assign _EVAL_18 = _EVAL_26 | _EVAL_59;
  assign _EVAL_15 = _EVAL_18 & _EVAL_53;
  assign _EVAL_21 = _EVAL_51 ? _EVAL_32 : 32'h0;
  assign _EVAL_25 = _EVAL_42 ? _EVAL_61 : 32'h0;
  assign _EVAL_19 = $signed(_EVAL_47) * $signed(_EVAL_70);
  assign _EVAL_66 = _EVAL[1:0];
  assign _EVAL_43 = 5'h0 - _EVAL_4;
  assign _EVAL_28 = _EVAL_44 ? _EVAL_49 : _EVAL_35;
  assign _EVAL_8 = ~_EVAL_0;
  assign _EVAL_54 = {{31'd0}, _EVAL_20};
  assign _EVAL_56 = _EVAL_39 & _EVAL_31;
  assign _EVAL_9 = _EVAL_29 | _EVAL_33;
  assign _EVAL_36 = _EVAL_54 | _EVAL_71;
  assign _EVAL_42 = _EVAL_7 | _EVAL_67;
  assign _EVAL_37 = {{31'd0}, _EVAL_55};
  assign _EVAL_29 = _EVAL_58 ? _EVAL_24 : 32'h0;
endmodule
