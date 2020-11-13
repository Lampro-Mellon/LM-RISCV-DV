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
module _EVAL_55(
  input  [3:0]  _EVAL,
  output        _EVAL_0,
  input         _EVAL_1,
  output        _EVAL_2,
  output [31:0] _EVAL_3,
  output [31:0] _EVAL_4,
  output        _EVAL_5,
  input  [1:0]  _EVAL_6,
  input         _EVAL_7,
  output        _EVAL_8,
  output [31:0] _EVAL_9,
  output        _EVAL_10,
  input         _EVAL_11,
  output        _EVAL_12,
  output [2:0]  _EVAL_13,
  input  [2:0]  _EVAL_14,
  output [2:0]  _EVAL_15,
  output        _EVAL_16,
  input         _EVAL_17,
  output        _EVAL_18,
  output        _EVAL_19,
  output [3:0]  _EVAL_20,
  input         _EVAL_21,
  output        _EVAL_22,
  input         _EVAL_23,
  input  [1:0]  _EVAL_24,
  input         _EVAL_25,
  input         _EVAL_26,
  input  [2:0]  _EVAL_27,
  input  [31:0] _EVAL_28,
  input  [31:0] _EVAL_29,
  input  [3:0]  _EVAL_30,
  output [3:0]  _EVAL_31,
  output        _EVAL_32,
  output        _EVAL_33,
  input         _EVAL_34,
  input  [31:0] _EVAL_35,
  input  [2:0]  _EVAL_36,
  output        _EVAL_37,
  input         _EVAL_38
);
  wire  fixedClockNode__EVAL;
  wire  fixedClockNode__EVAL_0;
  wire  fixedClockNode__EVAL_1;
  wire  fixedClockNode__EVAL_2;
  wire  front_bus_clock_groups__EVAL;
  wire  front_bus_clock_groups__EVAL_0;
  wire  front_bus_clock_groups__EVAL_1;
  wire  front_bus_clock_groups__EVAL_2;
  wire  coupler_from_port_named_ahb_front_port__EVAL;
  wire  coupler_from_port_named_ahb_front_port__EVAL_0;
  wire  coupler_from_port_named_ahb_front_port__EVAL_1;
  wire  coupler_from_port_named_ahb_front_port__EVAL_2;
  wire  coupler_from_port_named_ahb_front_port__EVAL_3;
  wire [31:0] coupler_from_port_named_ahb_front_port__EVAL_4;
  wire  coupler_from_port_named_ahb_front_port__EVAL_5;
  wire [3:0] coupler_from_port_named_ahb_front_port__EVAL_6;
  wire  coupler_from_port_named_ahb_front_port__EVAL_7;
  wire [31:0] coupler_from_port_named_ahb_front_port__EVAL_8;
  wire [2:0] coupler_from_port_named_ahb_front_port__EVAL_9;
  wire  coupler_from_port_named_ahb_front_port__EVAL_10;
  wire [1:0] coupler_from_port_named_ahb_front_port__EVAL_11;
  wire [31:0] coupler_from_port_named_ahb_front_port__EVAL_12;
  wire [3:0] coupler_from_port_named_ahb_front_port__EVAL_13;
  wire  coupler_from_port_named_ahb_front_port__EVAL_14;
  wire [31:0] coupler_from_port_named_ahb_front_port__EVAL_15;
  wire  coupler_from_port_named_ahb_front_port__EVAL_16;
  wire  coupler_from_port_named_ahb_front_port__EVAL_17;
  wire  coupler_from_port_named_ahb_front_port__EVAL_18;
  wire [1:0] coupler_from_port_named_ahb_front_port__EVAL_19;
  wire  coupler_from_port_named_ahb_front_port__EVAL_20;
  wire  coupler_from_port_named_ahb_front_port__EVAL_21;
  wire [2:0] coupler_from_port_named_ahb_front_port__EVAL_22;
  wire [3:0] coupler_from_port_named_ahb_front_port__EVAL_23;
  wire  coupler_from_port_named_ahb_front_port__EVAL_24;
  wire [2:0] coupler_from_port_named_ahb_front_port__EVAL_25;
  wire [2:0] coupler_from_port_named_ahb_front_port__EVAL_26;
  wire  coupler_from_port_named_ahb_front_port__EVAL_27;
  wire  coupler_from_port_named_ahb_front_port__EVAL_28;
  wire  coupler_from_port_named_ahb_front_port__EVAL_29;
  wire  coupler_from_port_named_ahb_front_port__EVAL_30;
  wire [31:0] coupler_from_port_named_ahb_front_port__EVAL_31;
  wire  coupler_from_port_named_ahb_front_port__EVAL_32;
  wire [31:0] coupler_from_port_named_ahb_front_port__EVAL_33;
  wire  coupler_from_port_named_ahb_front_port__EVAL_34;
  wire [2:0] coupler_from_port_named_ahb_front_port__EVAL_35;
  wire  coupler_from_port_named_ahb_front_port__EVAL_36;
  wire [3:0] coupler_from_port_named_ahb_front_port__EVAL_37;
  wire  coupler_from_port_named_ahb_front_port__EVAL_38;
  wire  buffer__EVAL;
  wire  buffer__EVAL_0;
  wire  buffer__EVAL_1;
  wire  buffer__EVAL_2;
  wire [2:0] buffer__EVAL_3;
  wire  buffer__EVAL_4;
  wire [31:0] buffer__EVAL_5;
  wire  buffer__EVAL_6;
  wire  buffer__EVAL_7;
  wire  buffer__EVAL_8;
  wire  buffer__EVAL_9;
  wire [3:0] buffer__EVAL_10;
  wire  buffer__EVAL_11;
  wire [1:0] buffer__EVAL_12;
  wire  buffer__EVAL_13;
  wire [31:0] buffer__EVAL_14;
  wire [2:0] buffer__EVAL_15;
  wire  buffer__EVAL_16;
  wire  buffer__EVAL_17;
  wire [1:0] buffer__EVAL_18;
  wire [3:0] buffer__EVAL_19;
  wire [3:0] buffer__EVAL_20;
  wire  buffer__EVAL_21;
  wire  buffer__EVAL_22;
  wire  buffer__EVAL_23;
  wire  buffer__EVAL_24;
  wire  buffer__EVAL_25;
  wire  buffer__EVAL_26;
  wire [31:0] buffer__EVAL_27;
  wire [2:0] buffer__EVAL_28;
  wire  buffer__EVAL_29;
  wire  buffer__EVAL_30;
  wire  buffer__EVAL_31;
  wire  buffer__EVAL_32;
  wire  buffer__EVAL_33;
  wire [2:0] buffer__EVAL_34;
  wire  buffer__EVAL_35;
  wire [3:0] buffer__EVAL_36;
  wire  buffer__EVAL_37;
  wire  buffer__EVAL_38;
  wire  buffer__EVAL_39;
  wire  buffer__EVAL_40;
  wire  buffer__EVAL_41;
  wire  buffer__EVAL_42;
  wire  buffer__EVAL_43;
  wire  buffer__EVAL_44;
  wire [31:0] buffer__EVAL_45;
  wire [2:0] buffer__EVAL_46;
  wire [3:0] buffer__EVAL_47;
  wire [31:0] buffer__EVAL_48;
  wire [31:0] buffer__EVAL_49;
  wire [3:0] buffer__EVAL_50;
  wire [2:0] buffer__EVAL_51;
  wire  buffer__EVAL_52;
  wire  front_bus_xbar__EVAL;
  wire  front_bus_xbar__EVAL_0;
  wire  front_bus_xbar__EVAL_1;
  wire [3:0] front_bus_xbar__EVAL_2;
  wire [1:0] front_bus_xbar__EVAL_3;
  wire  front_bus_xbar__EVAL_4;
  wire  front_bus_xbar__EVAL_5;
  wire  front_bus_xbar__EVAL_6;
  wire  front_bus_xbar__EVAL_7;
  wire  front_bus_xbar__EVAL_8;
  wire [2:0] front_bus_xbar__EVAL_9;
  wire  front_bus_xbar__EVAL_10;
  wire [2:0] front_bus_xbar__EVAL_11;
  wire  front_bus_xbar__EVAL_12;
  wire  front_bus_xbar__EVAL_13;
  wire [1:0] front_bus_xbar__EVAL_14;
  wire [2:0] front_bus_xbar__EVAL_15;
  wire [31:0] front_bus_xbar__EVAL_16;
  wire  front_bus_xbar__EVAL_17;
  wire  front_bus_xbar__EVAL_18;
  wire  front_bus_xbar__EVAL_19;
  wire  front_bus_xbar__EVAL_20;
  wire  front_bus_xbar__EVAL_21;
  wire  front_bus_xbar__EVAL_22;
  wire  front_bus_xbar__EVAL_23;
  wire  front_bus_xbar__EVAL_24;
  wire [31:0] front_bus_xbar__EVAL_25;
  wire [3:0] front_bus_xbar__EVAL_26;
  wire  front_bus_xbar__EVAL_27;
  wire [31:0] front_bus_xbar__EVAL_28;
  wire [3:0] front_bus_xbar__EVAL_29;
  wire [2:0] front_bus_xbar__EVAL_30;
  wire [31:0] front_bus_xbar__EVAL_31;
  wire  front_bus_xbar__EVAL_32;
  wire [3:0] front_bus_xbar__EVAL_33;
  wire  front_bus_xbar__EVAL_34;
  wire  front_bus_xbar__EVAL_35;
  wire [31:0] front_bus_xbar__EVAL_36;
  wire  front_bus_xbar__EVAL_37;
  wire  front_bus_xbar__EVAL_38;
  wire  front_bus_xbar__EVAL_39;
  wire  front_bus_xbar__EVAL_40;
  wire [3:0] front_bus_xbar__EVAL_41;
  wire [3:0] front_bus_xbar__EVAL_42;
  wire  front_bus_xbar__EVAL_43;
  wire  front_bus_xbar__EVAL_44;
  wire [2:0] front_bus_xbar__EVAL_45;
  wire [2:0] front_bus_xbar__EVAL_46;
  wire  front_bus_xbar__EVAL_47;
  wire  front_bus_xbar__EVAL_48;
  wire  front_bus_xbar__EVAL_49;
  wire  front_bus_xbar__EVAL_50;
  wire  front_bus_xbar__EVAL_51;
  wire [31:0] front_bus_xbar__EVAL_52;
  wire  clockGroup__EVAL;
  wire  clockGroup__EVAL_0;
  wire  clockGroup__EVAL_1;
  wire  clockGroup__EVAL_2;
  _EVAL_1 fixedClockNode (
    ._EVAL(fixedClockNode__EVAL),
    ._EVAL_0(fixedClockNode__EVAL_0),
    ._EVAL_1(fixedClockNode__EVAL_1),
    ._EVAL_2(fixedClockNode__EVAL_2)
  );
  _EVAL_38 front_bus_clock_groups (
    ._EVAL(front_bus_clock_groups__EVAL),
    ._EVAL_0(front_bus_clock_groups__EVAL_0),
    ._EVAL_1(front_bus_clock_groups__EVAL_1),
    ._EVAL_2(front_bus_clock_groups__EVAL_2)
  );
  _EVAL_52 coupler_from_port_named_ahb_front_port (
    ._EVAL(coupler_from_port_named_ahb_front_port__EVAL),
    ._EVAL_0(coupler_from_port_named_ahb_front_port__EVAL_0),
    ._EVAL_1(coupler_from_port_named_ahb_front_port__EVAL_1),
    ._EVAL_2(coupler_from_port_named_ahb_front_port__EVAL_2),
    ._EVAL_3(coupler_from_port_named_ahb_front_port__EVAL_3),
    ._EVAL_4(coupler_from_port_named_ahb_front_port__EVAL_4),
    ._EVAL_5(coupler_from_port_named_ahb_front_port__EVAL_5),
    ._EVAL_6(coupler_from_port_named_ahb_front_port__EVAL_6),
    ._EVAL_7(coupler_from_port_named_ahb_front_port__EVAL_7),
    ._EVAL_8(coupler_from_port_named_ahb_front_port__EVAL_8),
    ._EVAL_9(coupler_from_port_named_ahb_front_port__EVAL_9),
    ._EVAL_10(coupler_from_port_named_ahb_front_port__EVAL_10),
    ._EVAL_11(coupler_from_port_named_ahb_front_port__EVAL_11),
    ._EVAL_12(coupler_from_port_named_ahb_front_port__EVAL_12),
    ._EVAL_13(coupler_from_port_named_ahb_front_port__EVAL_13),
    ._EVAL_14(coupler_from_port_named_ahb_front_port__EVAL_14),
    ._EVAL_15(coupler_from_port_named_ahb_front_port__EVAL_15),
    ._EVAL_16(coupler_from_port_named_ahb_front_port__EVAL_16),
    ._EVAL_17(coupler_from_port_named_ahb_front_port__EVAL_17),
    ._EVAL_18(coupler_from_port_named_ahb_front_port__EVAL_18),
    ._EVAL_19(coupler_from_port_named_ahb_front_port__EVAL_19),
    ._EVAL_20(coupler_from_port_named_ahb_front_port__EVAL_20),
    ._EVAL_21(coupler_from_port_named_ahb_front_port__EVAL_21),
    ._EVAL_22(coupler_from_port_named_ahb_front_port__EVAL_22),
    ._EVAL_23(coupler_from_port_named_ahb_front_port__EVAL_23),
    ._EVAL_24(coupler_from_port_named_ahb_front_port__EVAL_24),
    ._EVAL_25(coupler_from_port_named_ahb_front_port__EVAL_25),
    ._EVAL_26(coupler_from_port_named_ahb_front_port__EVAL_26),
    ._EVAL_27(coupler_from_port_named_ahb_front_port__EVAL_27),
    ._EVAL_28(coupler_from_port_named_ahb_front_port__EVAL_28),
    ._EVAL_29(coupler_from_port_named_ahb_front_port__EVAL_29),
    ._EVAL_30(coupler_from_port_named_ahb_front_port__EVAL_30),
    ._EVAL_31(coupler_from_port_named_ahb_front_port__EVAL_31),
    ._EVAL_32(coupler_from_port_named_ahb_front_port__EVAL_32),
    ._EVAL_33(coupler_from_port_named_ahb_front_port__EVAL_33),
    ._EVAL_34(coupler_from_port_named_ahb_front_port__EVAL_34),
    ._EVAL_35(coupler_from_port_named_ahb_front_port__EVAL_35),
    ._EVAL_36(coupler_from_port_named_ahb_front_port__EVAL_36),
    ._EVAL_37(coupler_from_port_named_ahb_front_port__EVAL_37),
    ._EVAL_38(coupler_from_port_named_ahb_front_port__EVAL_38)
  );
  _EVAL_54 buffer (
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
    ._EVAL_32(buffer__EVAL_32),
    ._EVAL_33(buffer__EVAL_33),
    ._EVAL_34(buffer__EVAL_34),
    ._EVAL_35(buffer__EVAL_35),
    ._EVAL_36(buffer__EVAL_36),
    ._EVAL_37(buffer__EVAL_37),
    ._EVAL_38(buffer__EVAL_38),
    ._EVAL_39(buffer__EVAL_39),
    ._EVAL_40(buffer__EVAL_40),
    ._EVAL_41(buffer__EVAL_41),
    ._EVAL_42(buffer__EVAL_42),
    ._EVAL_43(buffer__EVAL_43),
    ._EVAL_44(buffer__EVAL_44),
    ._EVAL_45(buffer__EVAL_45),
    ._EVAL_46(buffer__EVAL_46),
    ._EVAL_47(buffer__EVAL_47),
    ._EVAL_48(buffer__EVAL_48),
    ._EVAL_49(buffer__EVAL_49),
    ._EVAL_50(buffer__EVAL_50),
    ._EVAL_51(buffer__EVAL_51),
    ._EVAL_52(buffer__EVAL_52)
  );
  _EVAL_41 front_bus_xbar (
    ._EVAL(front_bus_xbar__EVAL),
    ._EVAL_0(front_bus_xbar__EVAL_0),
    ._EVAL_1(front_bus_xbar__EVAL_1),
    ._EVAL_2(front_bus_xbar__EVAL_2),
    ._EVAL_3(front_bus_xbar__EVAL_3),
    ._EVAL_4(front_bus_xbar__EVAL_4),
    ._EVAL_5(front_bus_xbar__EVAL_5),
    ._EVAL_6(front_bus_xbar__EVAL_6),
    ._EVAL_7(front_bus_xbar__EVAL_7),
    ._EVAL_8(front_bus_xbar__EVAL_8),
    ._EVAL_9(front_bus_xbar__EVAL_9),
    ._EVAL_10(front_bus_xbar__EVAL_10),
    ._EVAL_11(front_bus_xbar__EVAL_11),
    ._EVAL_12(front_bus_xbar__EVAL_12),
    ._EVAL_13(front_bus_xbar__EVAL_13),
    ._EVAL_14(front_bus_xbar__EVAL_14),
    ._EVAL_15(front_bus_xbar__EVAL_15),
    ._EVAL_16(front_bus_xbar__EVAL_16),
    ._EVAL_17(front_bus_xbar__EVAL_17),
    ._EVAL_18(front_bus_xbar__EVAL_18),
    ._EVAL_19(front_bus_xbar__EVAL_19),
    ._EVAL_20(front_bus_xbar__EVAL_20),
    ._EVAL_21(front_bus_xbar__EVAL_21),
    ._EVAL_22(front_bus_xbar__EVAL_22),
    ._EVAL_23(front_bus_xbar__EVAL_23),
    ._EVAL_24(front_bus_xbar__EVAL_24),
    ._EVAL_25(front_bus_xbar__EVAL_25),
    ._EVAL_26(front_bus_xbar__EVAL_26),
    ._EVAL_27(front_bus_xbar__EVAL_27),
    ._EVAL_28(front_bus_xbar__EVAL_28),
    ._EVAL_29(front_bus_xbar__EVAL_29),
    ._EVAL_30(front_bus_xbar__EVAL_30),
    ._EVAL_31(front_bus_xbar__EVAL_31),
    ._EVAL_32(front_bus_xbar__EVAL_32),
    ._EVAL_33(front_bus_xbar__EVAL_33),
    ._EVAL_34(front_bus_xbar__EVAL_34),
    ._EVAL_35(front_bus_xbar__EVAL_35),
    ._EVAL_36(front_bus_xbar__EVAL_36),
    ._EVAL_37(front_bus_xbar__EVAL_37),
    ._EVAL_38(front_bus_xbar__EVAL_38),
    ._EVAL_39(front_bus_xbar__EVAL_39),
    ._EVAL_40(front_bus_xbar__EVAL_40),
    ._EVAL_41(front_bus_xbar__EVAL_41),
    ._EVAL_42(front_bus_xbar__EVAL_42),
    ._EVAL_43(front_bus_xbar__EVAL_43),
    ._EVAL_44(front_bus_xbar__EVAL_44),
    ._EVAL_45(front_bus_xbar__EVAL_45),
    ._EVAL_46(front_bus_xbar__EVAL_46),
    ._EVAL_47(front_bus_xbar__EVAL_47),
    ._EVAL_48(front_bus_xbar__EVAL_48),
    ._EVAL_49(front_bus_xbar__EVAL_49),
    ._EVAL_50(front_bus_xbar__EVAL_50),
    ._EVAL_51(front_bus_xbar__EVAL_51),
    ._EVAL_52(front_bus_xbar__EVAL_52)
  );
  _EVAL_0 clockGroup (
    ._EVAL(clockGroup__EVAL),
    ._EVAL_0(clockGroup__EVAL_0),
    ._EVAL_1(clockGroup__EVAL_1),
    ._EVAL_2(clockGroup__EVAL_2)
  );
  assign clockGroup__EVAL_2 = front_bus_clock_groups__EVAL_1;
  assign coupler_from_port_named_ahb_front_port__EVAL_33 = front_bus_xbar__EVAL_36;
  assign front_bus_xbar__EVAL_38 = buffer__EVAL_24;
  assign buffer__EVAL_3 = front_bus_xbar__EVAL_15;
  assign coupler_from_port_named_ahb_front_port__EVAL_32 = _EVAL_38;
  assign buffer__EVAL_2 = _EVAL_17;
  assign coupler_from_port_named_ahb_front_port__EVAL_11 = _EVAL_6;
  assign _EVAL_5 = buffer__EVAL_21;
  assign front_bus_xbar__EVAL_12 = fixedClockNode__EVAL_0;
  assign buffer__EVAL_11 = front_bus_xbar__EVAL_39;
  assign coupler_from_port_named_ahb_front_port__EVAL_23 = _EVAL_30;
  assign buffer__EVAL_7 = front_bus_xbar__EVAL_1;
  assign front_bus_xbar__EVAL_8 = coupler_from_port_named_ahb_front_port__EVAL_38;
  assign front_bus_xbar__EVAL_25 = coupler_from_port_named_ahb_front_port__EVAL_31;
  assign front_bus_xbar__EVAL_51 = coupler_from_port_named_ahb_front_port__EVAL_30;
  assign front_bus_xbar__EVAL_45 = coupler_from_port_named_ahb_front_port__EVAL_35;
  assign _EVAL_10 = buffer__EVAL_40;
  assign _EVAL_33 = coupler_from_port_named_ahb_front_port__EVAL_18;
  assign buffer__EVAL_36 = _EVAL;
  assign front_bus_clock_groups__EVAL = _EVAL_26;
  assign buffer__EVAL_27 = front_bus_xbar__EVAL_28;
  assign _EVAL_15 = buffer__EVAL_46;
  assign buffer__EVAL = front_bus_xbar__EVAL_7;
  assign coupler_from_port_named_ahb_front_port__EVAL_27 = _EVAL_1;
  assign buffer__EVAL_39 = front_bus_xbar__EVAL_18;
  assign coupler_from_port_named_ahb_front_port__EVAL_20 = front_bus_xbar__EVAL_4;
  assign coupler_from_port_named_ahb_front_port__EVAL_37 = front_bus_xbar__EVAL_33;
  assign coupler_from_port_named_ahb_front_port__EVAL_34 = front_bus_xbar__EVAL_22;
  assign buffer__EVAL_26 = fixedClockNode__EVAL_0;
  assign _EVAL_13 = buffer__EVAL_28;
  assign front_bus_xbar__EVAL_48 = coupler_from_port_named_ahb_front_port__EVAL_24;
  assign front_bus_xbar__EVAL_43 = coupler_from_port_named_ahb_front_port__EVAL_10;
  assign _EVAL_12 = buffer__EVAL_22;
  assign coupler_from_port_named_ahb_front_port__EVAL_0 = front_bus_xbar__EVAL_21;
  assign coupler_from_port_named_ahb_front_port__EVAL_17 = _EVAL_23;
  assign _EVAL_2 = buffer__EVAL_41;
  assign buffer__EVAL_0 = _EVAL_11;
  assign front_bus_xbar__EVAL_37 = coupler_from_port_named_ahb_front_port__EVAL_29;
  assign _EVAL_31 = buffer__EVAL_20;
  assign clockGroup__EVAL = front_bus_clock_groups__EVAL_2;
  assign coupler_from_port_named_ahb_front_port__EVAL_26 = _EVAL_14;
  assign _EVAL_4 = buffer__EVAL_45;
  assign front_bus_xbar__EVAL_16 = buffer__EVAL_14;
  assign coupler_from_port_named_ahb_front_port__EVAL_25 = front_bus_xbar__EVAL_30;
  assign _EVAL_16 = buffer__EVAL_4;
  assign front_bus_xbar__EVAL_14 = buffer__EVAL_18;
  assign front_bus_xbar__EVAL_50 = buffer__EVAL_42;
  assign buffer__EVAL_12 = _EVAL_24;
  assign coupler_from_port_named_ahb_front_port__EVAL_4 = _EVAL_28;
  assign _EVAL_22 = coupler_from_port_named_ahb_front_port__EVAL_5;
  assign _EVAL_8 = buffer__EVAL_23;
  assign front_bus_xbar__EVAL_9 = buffer__EVAL_15;
  assign coupler_from_port_named_ahb_front_port__EVAL_16 = front_bus_xbar__EVAL_5;
  assign coupler_from_port_named_ahb_front_port__EVAL_7 = fixedClockNode__EVAL_2;
  assign buffer__EVAL_48 = _EVAL_29;
  assign buffer__EVAL_44 = front_bus_xbar__EVAL_24;
  assign fixedClockNode__EVAL = clockGroup__EVAL_1;
  assign front_bus_xbar__EVAL_34 = fixedClockNode__EVAL_2;
  assign buffer__EVAL_25 = front_bus_xbar__EVAL_27;
  assign buffer__EVAL_29 = front_bus_xbar__EVAL_35;
  assign front_bus_xbar__EVAL_47 = coupler_from_port_named_ahb_front_port__EVAL;
  assign buffer__EVAL_37 = fixedClockNode__EVAL_2;
  assign fixedClockNode__EVAL_1 = clockGroup__EVAL_0;
  assign front_bus_xbar__EVAL_41 = coupler_from_port_named_ahb_front_port__EVAL_6;
  assign _EVAL_32 = buffer__EVAL_35;
  assign front_bus_xbar__EVAL_29 = buffer__EVAL_19;
  assign _EVAL_9 = coupler_from_port_named_ahb_front_port__EVAL_12;
  assign buffer__EVAL_51 = front_bus_xbar__EVAL_11;
  assign front_bus_xbar__EVAL_19 = coupler_from_port_named_ahb_front_port__EVAL_28;
  assign buffer__EVAL_1 = _EVAL_21;
  assign front_bus_xbar__EVAL_49 = coupler_from_port_named_ahb_front_port__EVAL_1;
  assign buffer__EVAL_34 = _EVAL_27;
  assign buffer__EVAL_13 = front_bus_xbar__EVAL_20;
  assign front_bus_xbar__EVAL_2 = coupler_from_port_named_ahb_front_port__EVAL_13;
  assign buffer__EVAL_50 = front_bus_xbar__EVAL_42;
  assign coupler_from_port_named_ahb_front_port__EVAL_15 = _EVAL_35;
  assign coupler_from_port_named_ahb_front_port__EVAL_19 = front_bus_xbar__EVAL_3;
  assign front_bus_xbar__EVAL_6 = coupler_from_port_named_ahb_front_port__EVAL_3;
  assign _EVAL_20 = buffer__EVAL_47;
  assign _EVAL_0 = buffer__EVAL_38;
  assign front_bus_xbar__EVAL_31 = coupler_from_port_named_ahb_front_port__EVAL_8;
  assign front_bus_xbar__EVAL_44 = coupler_from_port_named_ahb_front_port__EVAL_21;
  assign front_bus_xbar__EVAL_40 = buffer__EVAL_16;
  assign front_bus_xbar__EVAL = coupler_from_port_named_ahb_front_port__EVAL_36;
  assign front_bus_xbar__EVAL_32 = buffer__EVAL_32;
  assign coupler_from_port_named_ahb_front_port__EVAL_22 = _EVAL_36;
  assign _EVAL_3 = buffer__EVAL_49;
  assign coupler_from_port_named_ahb_front_port__EVAL_14 = front_bus_xbar__EVAL_0;
  assign _EVAL_37 = buffer__EVAL_9;
  assign buffer__EVAL_52 = _EVAL_7;
  assign buffer__EVAL_17 = front_bus_xbar__EVAL_17;
  assign buffer__EVAL_10 = front_bus_xbar__EVAL_26;
  assign buffer__EVAL_5 = front_bus_xbar__EVAL_52;
  assign buffer__EVAL_43 = front_bus_xbar__EVAL_23;
  assign _EVAL_18 = buffer__EVAL_6;
  assign coupler_from_port_named_ahb_front_port__EVAL_2 = fixedClockNode__EVAL_0;
  assign buffer__EVAL_33 = _EVAL_25;
  assign buffer__EVAL_30 = front_bus_xbar__EVAL_10;
  assign _EVAL_19 = buffer__EVAL_31;
  assign front_bus_clock_groups__EVAL_0 = _EVAL_34;
  assign front_bus_xbar__EVAL_46 = coupler_from_port_named_ahb_front_port__EVAL_9;
  assign front_bus_xbar__EVAL_13 = buffer__EVAL_8;
endmodule
