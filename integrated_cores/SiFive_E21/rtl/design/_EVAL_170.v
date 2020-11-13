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
module _EVAL_170(
  input         _EVAL,
  output [1:0]  _EVAL_0,
  output [31:0] _EVAL_1,
  input         _EVAL_2,
  output        _EVAL_3,
  input         _EVAL_4,
  input  [3:0]  _EVAL_5,
  input         _EVAL_6,
  output        _EVAL_7,
  input  [1:0]  _EVAL_8,
  output [2:0]  _EVAL_9,
  input  [2:0]  _EVAL_10,
  input  [31:0] _EVAL_11,
  input         _EVAL_12,
  output [2:0]  _EVAL_13,
  input  [31:0] _EVAL_14,
  input  [2:0]  _EVAL_15,
  input  [2:0]  _EVAL_16
);
  wire [31:0] buffer__EVAL;
  wire  buffer__EVAL_0;
  wire  buffer__EVAL_1;
  wire [1:0] buffer__EVAL_2;
  wire [2:0] buffer__EVAL_3;
  wire [2:0] buffer__EVAL_4;
  wire  buffer__EVAL_5;
  wire [2:0] buffer__EVAL_6;
  wire  buffer__EVAL_7;
  wire  buffer__EVAL_8;
  wire [2:0] buffer__EVAL_9;
  wire  buffer__EVAL_10;
  wire [2:0] buffer__EVAL_11;
  wire [1:0] buffer__EVAL_12;
  wire  buffer__EVAL_13;
  wire [1:0] buffer__EVAL_14;
  wire [3:0] buffer__EVAL_15;
  wire [31:0] buffer__EVAL_16;
  wire [31:0] buffer__EVAL_17;
  wire  buffer__EVAL_18;
  wire [1:0] buffer__EVAL_19;
  wire  buffer__EVAL_20;
  wire  buffer__EVAL_21;
  wire [31:0] buffer__EVAL_22;
  wire [31:0] buffer__EVAL_23;
  wire  buffer__EVAL_24;
  wire [2:0] buffer__EVAL_25;
  wire [31:0] buffer__EVAL_26;
  wire [3:0] buffer__EVAL_27;
  wire [2:0] buffer__EVAL_28;
  wire [2:0] buffer__EVAL_29;
  wire  buffer__EVAL_30;
  wire [2:0] buffer__EVAL_31;
  wire [2:0] buffer__EVAL_32;
  wire [1:0] lim__EVAL;
  wire  lim__EVAL_0;
  wire [1:0] lim__EVAL_1;
  wire [2:0] lim__EVAL_2;
  wire [3:0] lim__EVAL_3;
  wire  lim__EVAL_4;
  wire  lim__EVAL_5;
  wire [2:0] lim__EVAL_6;
  wire [2:0] lim__EVAL_7;
  wire [2:0] lim__EVAL_8;
  wire [31:0] lim__EVAL_9;
  wire [2:0] lim__EVAL_10;
  wire  lim__EVAL_11;
  wire  lim__EVAL_12;
  wire  lim__EVAL_13;
  wire [31:0] lim__EVAL_14;
  wire [31:0] lim__EVAL_15;
  wire  lim__EVAL_16;
  _EVAL_169 buffer (
    ._EVAL(buffer__EVAL),
    ._EVAL_0(buffer__EVAL_0),
    ._EVAL_1(buffer__EVAL_1),
    ._EVAL_2(buffer__EVAL_2),
    ._EVAL_3(buffer__EVAL_3),
    ._EVAL_4(buffer__EVAL_4),
    ._EVAL_5(buffer__EVAL_5),
    ._EVAL_6(buffer__EVAL_6),
    ._EVAL_7(buffer__EVAL_7),
    ._EVAL_8(buffer__EVAL_8),
    ._EVAL_9(buffer__EVAL_9),
    ._EVAL_10(buffer__EVAL_10),
    ._EVAL_11(buffer__EVAL_11),
    ._EVAL_12(buffer__EVAL_12),
    ._EVAL_13(buffer__EVAL_13),
    ._EVAL_14(buffer__EVAL_14),
    ._EVAL_15(buffer__EVAL_15),
    ._EVAL_16(buffer__EVAL_16),
    ._EVAL_17(buffer__EVAL_17),
    ._EVAL_18(buffer__EVAL_18),
    ._EVAL_19(buffer__EVAL_19),
    ._EVAL_20(buffer__EVAL_20),
    ._EVAL_21(buffer__EVAL_21),
    ._EVAL_22(buffer__EVAL_22),
    ._EVAL_23(buffer__EVAL_23),
    ._EVAL_24(buffer__EVAL_24),
    ._EVAL_25(buffer__EVAL_25),
    ._EVAL_26(buffer__EVAL_26),
    ._EVAL_27(buffer__EVAL_27),
    ._EVAL_28(buffer__EVAL_28),
    ._EVAL_29(buffer__EVAL_29),
    ._EVAL_30(buffer__EVAL_30),
    ._EVAL_31(buffer__EVAL_31),
    ._EVAL_32(buffer__EVAL_32)
  );
  _EVAL_167 lim (
    ._EVAL(lim__EVAL),
    ._EVAL_0(lim__EVAL_0),
    ._EVAL_1(lim__EVAL_1),
    ._EVAL_2(lim__EVAL_2),
    ._EVAL_3(lim__EVAL_3),
    ._EVAL_4(lim__EVAL_4),
    ._EVAL_5(lim__EVAL_5),
    ._EVAL_6(lim__EVAL_6),
    ._EVAL_7(lim__EVAL_7),
    ._EVAL_8(lim__EVAL_8),
    ._EVAL_9(lim__EVAL_9),
    ._EVAL_10(lim__EVAL_10),
    ._EVAL_11(lim__EVAL_11),
    ._EVAL_12(lim__EVAL_12),
    ._EVAL_13(lim__EVAL_13),
    ._EVAL_14(lim__EVAL_14),
    ._EVAL_15(lim__EVAL_15),
    ._EVAL_16(lim__EVAL_16)
  );
  assign lim__EVAL_12 = buffer__EVAL_21;
  assign buffer__EVAL_2 = _EVAL_8;
  assign _EVAL_7 = buffer__EVAL_20;
  assign lim__EVAL_10 = buffer__EVAL_6;
  assign lim__EVAL_9 = buffer__EVAL_16;
  assign buffer__EVAL_8 = lim__EVAL_13;
  assign _EVAL_0 = buffer__EVAL_14;
  assign lim__EVAL_5 = buffer__EVAL_1;
  assign lim__EVAL_16 = buffer__EVAL_7;
  assign buffer__EVAL_27 = _EVAL_5;
  assign lim__EVAL_3 = buffer__EVAL_15;
  assign lim__EVAL_6 = buffer__EVAL_32;
  assign _EVAL_9 = buffer__EVAL_4;
  assign buffer__EVAL_19 = lim__EVAL_1;
  assign buffer__EVAL_10 = _EVAL_6;
  assign lim__EVAL_11 = _EVAL_12;
  assign buffer__EVAL_29 = _EVAL_10;
  assign buffer__EVAL_25 = _EVAL_16;
  assign buffer__EVAL_0 = lim__EVAL_0;
  assign _EVAL_1 = buffer__EVAL_17;
  assign buffer__EVAL_23 = lim__EVAL_15;
  assign lim__EVAL_4 = _EVAL_6;
  assign buffer__EVAL_13 = _EVAL_2;
  assign buffer__EVAL = _EVAL_14;
  assign buffer__EVAL_5 = _EVAL_12;
  assign buffer__EVAL_9 = lim__EVAL_2;
  assign lim__EVAL_7 = buffer__EVAL_11;
  assign buffer__EVAL_3 = lim__EVAL_8;
  assign buffer__EVAL_18 = _EVAL;
  assign buffer__EVAL_22 = _EVAL_11;
  assign lim__EVAL = buffer__EVAL_12;
  assign lim__EVAL_14 = buffer__EVAL_26;
  assign buffer__EVAL_31 = _EVAL_15;
  assign buffer__EVAL_30 = _EVAL_4;
  assign _EVAL_13 = buffer__EVAL_28;
  assign _EVAL_3 = buffer__EVAL_24;
endmodule
