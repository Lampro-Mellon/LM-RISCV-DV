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
module _EVAL_172(
  output        _EVAL,
  input  [3:0]  _EVAL_0,
  input         _EVAL_1,
  output [2:0]  _EVAL_2,
  input  [1:0]  _EVAL_3,
  input  [2:0]  _EVAL_4,
  input  [2:0]  _EVAL_5,
  input         _EVAL_6,
  input         _EVAL_7,
  input  [2:0]  _EVAL_8,
  input  [31:0] _EVAL_9,
  input  [31:0] _EVAL_10,
  input         _EVAL_11,
  input         _EVAL_12,
  output        _EVAL_13,
  output [31:0] _EVAL_14,
  output [2:0]  _EVAL_15,
  output [1:0]  _EVAL_16
);
  reg [1:0] _EVAL_17;
  reg [31:0] _RAND_0;
  wire  _EVAL_18;
  wire [7:0] syssram1__EVAL;
  wire [7:0] syssram1__EVAL_0;
  wire  syssram1__EVAL_1;
  wire  syssram1__EVAL_2;
  wire  syssram1__EVAL_3;
  wire [7:0] syssram1__EVAL_4;
  wire [7:0] syssram1__EVAL_5;
  wire  syssram1__EVAL_6;
  wire  syssram1__EVAL_7;
  wire [7:0] syssram1__EVAL_8;
  wire [11:0] syssram1__EVAL_9;
  wire [7:0] syssram1__EVAL_10;
  wire  syssram1__EVAL_11;
  wire [7:0] syssram1__EVAL_12;
  wire [7:0] syssram1__EVAL_13;
  wire  syssram1__EVAL_14;
  wire  _EVAL_19;
  wire  _EVAL_20;
  reg  _EVAL_21;
  reg [31:0] _RAND_1;
  wire  _EVAL_22;
  wire  _EVAL_23;
  wire  _EVAL_24;
  wire  _EVAL_25;
  wire  _EVAL_26;
  wire [7:0] _EVAL_27;
  reg  _EVAL_28;
  reg [31:0] _RAND_2;
  wire  _EVAL_29;
  wire  _EVAL_30;
  wire  _EVAL_31;
  wire [7:0] _EVAL_32;
  wire  _EVAL_33;
  reg [2:0] _EVAL_34;
  reg [31:0] _RAND_3;
  wire  _EVAL_35;
  wire [31:0] _EVAL_36;
  wire [5:0] _EVAL_37;
  wire [5:0] _EVAL_38;
  wire  _EVAL_39;
  wire  _EVAL_41;
  wire  _EVAL_42;
  wire [7:0] _EVAL_43;
  wire  _EVAL_44;
  wire [7:0] _EVAL_45;
  reg  _EVAL_46;
  reg [31:0] _RAND_4;
  wire  _EVAL_47;
  wire  _EVAL_48;
  wire  _EVAL_49;
  wire [29:0] _EVAL_50;
  wire  _EVAL_51;
  wire  _EVAL_52;
  reg [31:0] _EVAL_53;
  reg [31:0] _RAND_5;
  wire  _EVAL_54;
  wire  _EVAL_55;
  _EVAL_191 syssram1 (
    ._EVAL(syssram1__EVAL),
    ._EVAL_0(syssram1__EVAL_0),
    ._EVAL_1(syssram1__EVAL_1),
    ._EVAL_2(syssram1__EVAL_2),
    ._EVAL_3(syssram1__EVAL_3),
    ._EVAL_4(syssram1__EVAL_4),
    ._EVAL_5(syssram1__EVAL_5),
    ._EVAL_6(syssram1__EVAL_6),
    ._EVAL_7(syssram1__EVAL_7),
    ._EVAL_8(syssram1__EVAL_8),
    ._EVAL_9(syssram1__EVAL_9),
    ._EVAL_10(syssram1__EVAL_10),
    ._EVAL_11(syssram1__EVAL_11),
    ._EVAL_12(syssram1__EVAL_12),
    ._EVAL_13(syssram1__EVAL_13),
    ._EVAL_14(syssram1__EVAL_14)
  );
  assign _EVAL_47 = _EVAL_50[11];
  assign syssram1__EVAL_10 = _EVAL_9[7:0];
  assign _EVAL_38 = {_EVAL_47,_EVAL_18,_EVAL_23,_EVAL_20,_EVAL_48,_EVAL_51};
  assign _EVAL_45 = syssram1__EVAL_0;
  assign _EVAL_23 = _EVAL_50[9];
  assign _EVAL_26 = _EVAL_50[4];
  assign _EVAL_50 = _EVAL_10[31:2];
  assign _EVAL_44 = _EVAL_22 & _EVAL_52;
  assign _EVAL_55 = ~_EVAL_25;
  assign _EVAL = _EVAL_35 | _EVAL_1;
  assign _EVAL_29 = _EVAL_33 ? 1'h0 : _EVAL_28;
  assign _EVAL_39 = _EVAL_55 & _EVAL_22;
  assign _EVAL_42 = _EVAL_50[0];
  assign _EVAL_52 = _EVAL_5 == 3'h4;
  assign syssram1__EVAL_2 = _EVAL_22 & _EVAL_30;
  assign syssram1__EVAL_9 = {_EVAL_38,_EVAL_37};
  assign _EVAL_13 = _EVAL_28;
  assign _EVAL_33 = _EVAL_1 & _EVAL_28;
  assign _EVAL_48 = _EVAL_50[7];
  assign _EVAL_36 = {_EVAL_27,_EVAL_43,_EVAL_45,_EVAL_32};
  assign _EVAL_24 = _EVAL_22 | _EVAL_29;
  assign _EVAL_19 = _EVAL_50[5];
  assign syssram1__EVAL_3 = _EVAL_6;
  assign _EVAL_22 = _EVAL_54 & _EVAL_11;
  assign _EVAL_27 = syssram1__EVAL_5;
  assign syssram1__EVAL_7 = _EVAL_0[0];
  assign _EVAL_20 = _EVAL_50[8];
  assign _EVAL_2 = _EVAL_34;
  assign _EVAL_37 = {_EVAL_19,_EVAL_26,_EVAL_41,_EVAL_49,_EVAL_31,_EVAL_42};
  assign _EVAL_30 = ~_EVAL_52;
  assign _EVAL_35 = ~_EVAL_28;
  assign _EVAL_32 = syssram1__EVAL_8;
  assign _EVAL_49 = _EVAL_50[2];
  assign syssram1__EVAL_13 = _EVAL_9[31:24];
  assign syssram1__EVAL_1 = _EVAL_39 | _EVAL_25;
  assign _EVAL_43 = syssram1__EVAL_4;
  assign syssram1__EVAL_14 = _EVAL_0[2];
  assign _EVAL_16 = _EVAL_17;
  assign syssram1__EVAL = _EVAL_9[23:16];
  assign _EVAL_51 = _EVAL_50[6];
  assign _EVAL_14 = _EVAL_21 ? _EVAL_36 : _EVAL_53;
  assign syssram1__EVAL_11 = _EVAL_0[1];
  assign _EVAL_15 = {{2'd0}, _EVAL_46};
  assign syssram1__EVAL_12 = _EVAL_9[15:8];
  assign _EVAL_31 = _EVAL_50[1];
  assign _EVAL_18 = _EVAL_50[10];
  assign _EVAL_54 = _EVAL_35 | _EVAL_1;
  assign syssram1__EVAL_6 = _EVAL_0[3];
  assign _EVAL_41 = _EVAL_50[3];
  assign _EVAL_25 = _EVAL_22 & _EVAL_30;
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
  _EVAL_17 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_21 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_28 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_34 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_46 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_53 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_6) begin
    if (_EVAL_22) begin
      _EVAL_17 <= _EVAL_3;
    end
    if (_EVAL_12) begin
      _EVAL_21 <= 1'h0;
    end else begin
      _EVAL_21 <= _EVAL_44;
    end
    if (_EVAL_12) begin
      _EVAL_28 <= 1'h0;
    end else begin
      _EVAL_28 <= _EVAL_24;
    end
    if (_EVAL_22) begin
      _EVAL_34 <= _EVAL_4;
    end
    if (_EVAL_22) begin
      _EVAL_46 <= _EVAL_52;
    end
    if (_EVAL_21) begin
      _EVAL_53 <= _EVAL_36;
    end
  end
endmodule
