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
module _EVAL_72(
  input  [13:0] _EVAL,
  input  [3:0]  _EVAL_0,
  input         _EVAL_1,
  output [3:0]  _EVAL_2,
  input  [2:0]  _EVAL_3,
  input         _EVAL_4,
  input  [2:0]  _EVAL_5,
  output        _EVAL_6,
  output        _EVAL_7,
  input         _EVAL_8,
  output [2:0]  _EVAL_9,
  input  [3:0]  _EVAL_10,
  output [2:0]  _EVAL_11,
  input  [2:0]  _EVAL_12,
  input         _EVAL_13,
  output        _EVAL_14,
  input         _EVAL_15
);
  wire  _EVAL_16;
  wire [2:0] _EVAL_17;
  wire  _EVAL_18;
  wire [2:0] a__EVAL;
  wire  a__EVAL_0;
  wire  a__EVAL_1;
  wire [2:0] a__EVAL_2;
  wire [3:0] a__EVAL_3;
  wire [2:0] a__EVAL_4;
  wire  a__EVAL_5;
  wire  a__EVAL_6;
  wire [3:0] a__EVAL_7;
  wire  a__EVAL_8;
  wire [2:0] a__EVAL_9;
  wire  a__EVAL_10;
  wire  _EVAL_19;
  wire  _EVAL_20;
  wire  _EVAL_21;
  wire [7:0] _EVAL_23;
  wire  _EVAL_24;
  wire [7:0] _EVAL_25;
  wire [7:0] _EVAL_26;
  wire  _EVAL_27;
  reg [5:0] _EVAL_28;
  reg [31:0] _RAND_0;
  wire [6:0] _EVAL_29;
  wire [2:0] _EVAL_30;
  wire [5:0] _EVAL_31;
  wire  _EVAL_32;
  wire [2:0] _EVAL_33;
  wire [5:0] _EVAL_34;
  wire [22:0] _EVAL_35;
  wire  _EVAL_36;
  wire  _EVAL_37;
  wire [5:0] _EVAL_38;
  wire  _EVAL_39;
  wire [22:0] _EVAL_40;
  wire [5:0] _EVAL_42;
  wire [2:0] _EVAL_43;
  wire  _EVAL_44;
  wire  _EVAL_45;
  wire [2:0] _EVAL_47;
  wire [3:0] _EVAL_48;
  wire  _EVAL_49;
  wire [2:0] _EVAL_50;
  wire [5:0] _EVAL_51;
  wire  _EVAL_52;
  wire [5:0] _EVAL_53;
  wire [6:0] _EVAL_54;
  wire [7:0] _EVAL_55;
  reg [5:0] _EVAL_56;
  reg [31:0] _RAND_1;
  wire  _EVAL_57;
  _EVAL_71 a (
    ._EVAL(a__EVAL),
    ._EVAL_0(a__EVAL_0),
    ._EVAL_1(a__EVAL_1),
    ._EVAL_2(a__EVAL_2),
    ._EVAL_3(a__EVAL_3),
    ._EVAL_4(a__EVAL_4),
    ._EVAL_5(a__EVAL_5),
    ._EVAL_6(a__EVAL_6),
    ._EVAL_7(a__EVAL_7),
    ._EVAL_8(a__EVAL_8),
    ._EVAL_9(a__EVAL_9),
    ._EVAL_10(a__EVAL_10)
  );
  assign _EVAL_37 = a__EVAL_0 & a__EVAL_5;
  assign _EVAL_18 = _EVAL_53 == 6'h0;
  assign _EVAL_52 = _EVAL_27 | _EVAL_18;
  assign _EVAL_27 = _EVAL_28 == 6'h1;
  assign _EVAL_51 = _EVAL_54[5:0];
  assign _EVAL_50 = 3'h6 == a__EVAL_4 ? 3'h4 : _EVAL_43;
  assign _EVAL_43 = 3'h5 == a__EVAL_4 ? 3'h2 : _EVAL_17;
  assign _EVAL_14 = a__EVAL_5 & _EVAL_21;
  assign _EVAL_31 = _EVAL_55[7:2];
  assign _EVAL_38 = _EVAL_25[7:2];
  assign _EVAL_44 = ~_EVAL_49;
  assign _EVAL_54 = _EVAL_28 - 6'h1;
  assign a__EVAL_7 = _EVAL_0;
  assign _EVAL_23 = _EVAL_35[7:0];
  assign _EVAL_42 = _EVAL_29[5:0];
  assign _EVAL_25 = ~_EVAL_23;
  assign _EVAL_16 = _EVAL_4 & _EVAL_36;
  assign _EVAL_30 = 3'h7 == a__EVAL_4 ? 3'h4 : _EVAL_50;
  assign _EVAL_21 = _EVAL_39 | _EVAL_20;
  assign _EVAL_7 = _EVAL_30[0];
  assign _EVAL_49 = a__EVAL_4[2];
  assign _EVAL_47 = 3'h2 == a__EVAL_4 ? 3'h1 : 3'h0;
  assign _EVAL_55 = ~_EVAL_26;
  assign a__EVAL_8 = _EVAL_13;
  assign _EVAL_33 = 3'h3 == a__EVAL_4 ? 3'h1 : _EVAL_47;
  assign _EVAL_29 = _EVAL_56 - 6'h1;
  assign _EVAL_24 = _EVAL_30[0];
  assign _EVAL_19 = _EVAL_56 == 6'h0;
  assign _EVAL_48 = a__EVAL_3;
  assign _EVAL_40 = 23'hff << a__EVAL_3;
  assign a__EVAL_0 = _EVAL_45 | _EVAL_32;
  assign _EVAL_17 = 3'h4 == a__EVAL_4 ? 3'h1 : _EVAL_33;
  assign _EVAL_53 = _EVAL_24 ? _EVAL_38 : 6'h0;
  assign _EVAL_34 = _EVAL_44 ? _EVAL_31 : 6'h0;
  assign a__EVAL_10 = _EVAL_1;
  assign a__EVAL_9 = _EVAL_3;
  assign _EVAL_6 = a__EVAL_1;
  assign _EVAL_39 = _EVAL_56 == 6'h1;
  assign a__EVAL_2 = _EVAL_12;
  assign _EVAL_11 = a__EVAL;
  assign _EVAL_45 = _EVAL_4 & _EVAL_52;
  assign _EVAL_2 = a__EVAL_3;
  assign a__EVAL_6 = _EVAL_15;
  assign _EVAL_20 = _EVAL_34 == 6'h0;
  assign _EVAL_26 = _EVAL_40[7:0];
  assign _EVAL_35 = 23'hff << _EVAL_48;
  assign _EVAL_9 = 3'h7 == a__EVAL_4 ? 3'h4 : _EVAL_50;
  assign _EVAL_57 = _EVAL_28 == 6'h0;
  assign _EVAL_36 = a__EVAL_5 & _EVAL_21;
  assign _EVAL_32 = ~_EVAL_21;
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
  _EVAL_28 = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_56 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_15) begin
    if (_EVAL_13) begin
      _EVAL_28 <= 6'h0;
    end else if (_EVAL_16) begin
      if (_EVAL_57) begin
        if (_EVAL_24) begin
          _EVAL_28 <= _EVAL_38;
        end else begin
          _EVAL_28 <= 6'h0;
        end
      end else begin
        _EVAL_28 <= _EVAL_51;
      end
    end
    if (_EVAL_13) begin
      _EVAL_56 <= 6'h0;
    end else if (_EVAL_37) begin
      if (_EVAL_19) begin
        if (_EVAL_44) begin
          _EVAL_56 <= _EVAL_31;
        end else begin
          _EVAL_56 <= 6'h0;
        end
      end else begin
        _EVAL_56 <= _EVAL_42;
      end
    end
  end
endmodule
