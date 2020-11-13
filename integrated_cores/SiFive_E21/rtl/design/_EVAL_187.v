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
module _EVAL_187(
  output        _EVAL,
  input         _EVAL_0,
  output [6:0]  _EVAL_1,
  input         _EVAL_2,
  output [31:0] _EVAL_3,
  output        _EVAL_4,
  input  [3:0]  _EVAL_5,
  input  [15:0] _EVAL_6,
  input         _EVAL_7,
  input         _EVAL_8,
  input         _EVAL_9,
  output        _EVAL_10,
  input  [1:0]  _EVAL_11,
  input  [31:0] _EVAL_12,
  input  [10:0] _EVAL_13,
  output        _EVAL_14,
  output [1:0]  _EVAL_15,
  input         _EVAL_16
);
  wire  _EVAL_21;
  wire  _EVAL_23;
  wire  _EVAL_25;
  reg  _EVAL_26;
  reg [31:0] _RAND_0;
  reg  _EVAL_28;
  reg [31:0] _RAND_1;
  wire  _EVAL_30;
  wire  _EVAL_31;
  wire  _EVAL_32;
  wire [31:0] _EVAL_33;
  wire [1:0] _EVAL_34;
  wire  _EVAL_35;
  wire [4:0] JtagTapController__EVAL;
  wire  JtagTapController__EVAL_0;
  wire  JtagTapController__EVAL_1;
  wire  JtagTapController__EVAL_2;
  wire  JtagTapController__EVAL_3;
  wire  JtagTapController__EVAL_4;
  wire  JtagTapController__EVAL_5;
  wire  JtagTapController__EVAL_6;
  wire  JtagTapController__EVAL_7;
  wire  JtagTapController__EVAL_8;
  wire  JtagTapController__EVAL_9;
  wire  JtagTapController__EVAL_10;
  wire  JtagTapController__EVAL_11;
  wire  JtagTapController__EVAL_12;
  wire  _EVAL_40;
  wire  _EVAL_41;
  wire  _EVAL_42;
  wire [6:0] _EVAL_44;
  wire  _EVAL_47;
  wire  _EVAL_49;
  reg [1:0] _EVAL_50;
  reg [31:0] _RAND_2;
  reg [31:0] _EVAL_54;
  reg [31:0] _RAND_3;
  wire  _EVAL_55;
  reg [6:0] _EVAL_56;
  reg [31:0] _RAND_4;
  wire [15:0] idcodeChain__EVAL;
  wire [3:0] idcodeChain__EVAL_0;
  wire  idcodeChain__EVAL_1;
  wire  idcodeChain__EVAL_2;
  wire  idcodeChain__EVAL_3;
  wire  idcodeChain__EVAL_4;
  wire [10:0] idcodeChain__EVAL_5;
  wire  idcodeChain__EVAL_6;
  wire  idcodeChain__EVAL_7;
  wire  idcodeChain__EVAL_8;
  wire  _EVAL_59;
  wire  JtagBypassChain__EVAL;
  wire  JtagBypassChain__EVAL_0;
  wire  JtagBypassChain__EVAL_1;
  wire  JtagBypassChain__EVAL_2;
  wire  JtagBypassChain__EVAL_3;
  wire  JtagBypassChain__EVAL_4;
  wire  JtagBypassChain__EVAL_5;
  reg  _EVAL_67;
  reg [31:0] _RAND_5;
  wire  _EVAL_68;
  reg  _EVAL_70;
  reg [31:0] _RAND_6;
  wire  dtmInfoChain__EVAL;
  wire  dtmInfoChain__EVAL_0;
  wire  dtmInfoChain__EVAL_1;
  wire  dtmInfoChain__EVAL_2;
  wire  dtmInfoChain__EVAL_3;
  wire  dtmInfoChain__EVAL_4;
  wire [1:0] dtmInfoChain__EVAL_5;
  wire  dtmInfoChain__EVAL_6;
  wire  dtmInfoChain__EVAL_7;
  wire  dtmInfoChain__EVAL_8;
  wire  _EVAL_74;
  wire  _EVAL_75;
  reg  _EVAL_77;
  reg [31:0] _RAND_7;
  wire  _EVAL_83;
  wire  _EVAL_84;
  wire  _EVAL_89;
  wire  _EVAL_91;
  wire  _EVAL_95;
  wire [31:0] dmiAccessChain__EVAL;
  wire [1:0] dmiAccessChain__EVAL_0;
  wire  dmiAccessChain__EVAL_1;
  wire  dmiAccessChain__EVAL_2;
  wire  dmiAccessChain__EVAL_3;
  wire  dmiAccessChain__EVAL_4;
  wire  dmiAccessChain__EVAL_5;
  wire  dmiAccessChain__EVAL_6;
  wire  dmiAccessChain__EVAL_7;
  wire  dmiAccessChain__EVAL_8;
  wire [31:0] dmiAccessChain__EVAL_9;
  wire [6:0] dmiAccessChain__EVAL_10;
  wire  dmiAccessChain__EVAL_11;
  wire [1:0] dmiAccessChain__EVAL_12;
  wire [6:0] dmiAccessChain__EVAL_13;
  _EVAL_185 JtagTapController (
    ._EVAL(JtagTapController__EVAL),
    ._EVAL_0(JtagTapController__EVAL_0),
    ._EVAL_1(JtagTapController__EVAL_1),
    ._EVAL_2(JtagTapController__EVAL_2),
    ._EVAL_3(JtagTapController__EVAL_3),
    ._EVAL_4(JtagTapController__EVAL_4),
    ._EVAL_5(JtagTapController__EVAL_5),
    ._EVAL_6(JtagTapController__EVAL_6),
    ._EVAL_7(JtagTapController__EVAL_7),
    ._EVAL_8(JtagTapController__EVAL_8),
    ._EVAL_9(JtagTapController__EVAL_9),
    ._EVAL_10(JtagTapController__EVAL_10),
    ._EVAL_11(JtagTapController__EVAL_11),
    ._EVAL_12(JtagTapController__EVAL_12)
  );
  _EVAL_182 idcodeChain (
    ._EVAL(idcodeChain__EVAL),
    ._EVAL_0(idcodeChain__EVAL_0),
    ._EVAL_1(idcodeChain__EVAL_1),
    ._EVAL_2(idcodeChain__EVAL_2),
    ._EVAL_3(idcodeChain__EVAL_3),
    ._EVAL_4(idcodeChain__EVAL_4),
    ._EVAL_5(idcodeChain__EVAL_5),
    ._EVAL_6(idcodeChain__EVAL_6),
    ._EVAL_7(idcodeChain__EVAL_7),
    ._EVAL_8(idcodeChain__EVAL_8)
  );
  _EVAL_186 JtagBypassChain (
    ._EVAL(JtagBypassChain__EVAL),
    ._EVAL_0(JtagBypassChain__EVAL_0),
    ._EVAL_1(JtagBypassChain__EVAL_1),
    ._EVAL_2(JtagBypassChain__EVAL_2),
    ._EVAL_3(JtagBypassChain__EVAL_3),
    ._EVAL_4(JtagBypassChain__EVAL_4),
    ._EVAL_5(JtagBypassChain__EVAL_5)
  );
  _EVAL_180 dtmInfoChain (
    ._EVAL(dtmInfoChain__EVAL),
    ._EVAL_0(dtmInfoChain__EVAL_0),
    ._EVAL_1(dtmInfoChain__EVAL_1),
    ._EVAL_2(dtmInfoChain__EVAL_2),
    ._EVAL_3(dtmInfoChain__EVAL_3),
    ._EVAL_4(dtmInfoChain__EVAL_4),
    ._EVAL_5(dtmInfoChain__EVAL_5),
    ._EVAL_6(dtmInfoChain__EVAL_6),
    ._EVAL_7(dtmInfoChain__EVAL_7),
    ._EVAL_8(dtmInfoChain__EVAL_8)
  );
  _EVAL_181 dmiAccessChain (
    ._EVAL(dmiAccessChain__EVAL),
    ._EVAL_0(dmiAccessChain__EVAL_0),
    ._EVAL_1(dmiAccessChain__EVAL_1),
    ._EVAL_2(dmiAccessChain__EVAL_2),
    ._EVAL_3(dmiAccessChain__EVAL_3),
    ._EVAL_4(dmiAccessChain__EVAL_4),
    ._EVAL_5(dmiAccessChain__EVAL_5),
    ._EVAL_6(dmiAccessChain__EVAL_6),
    ._EVAL_7(dmiAccessChain__EVAL_7),
    ._EVAL_8(dmiAccessChain__EVAL_8),
    ._EVAL_9(dmiAccessChain__EVAL_9),
    ._EVAL_10(dmiAccessChain__EVAL_10),
    ._EVAL_11(dmiAccessChain__EVAL_11),
    ._EVAL_12(dmiAccessChain__EVAL_12),
    ._EVAL_13(dmiAccessChain__EVAL_13)
  );
  assign dmiAccessChain__EVAL_13 = _EVAL_31 ? 7'h0 : _EVAL_44;
  assign dtmInfoChain__EVAL_7 = _EVAL_41 & JtagTapController__EVAL_12;
  assign dmiAccessChain__EVAL_8 = _EVAL_32 & JtagTapController__EVAL_2;
  assign _EVAL_91 = _EVAL_67 | _EVAL_84;
  assign _EVAL_10 = JtagTapController__EVAL_10;
  assign JtagBypassChain__EVAL_0 = JtagTapController__EVAL_7;
  assign _EVAL_44 = _EVAL_9 ? _EVAL_56 : 7'h0;
  assign dmiAccessChain__EVAL_3 = _EVAL_2;
  assign dmiAccessChain__EVAL_1 = _EVAL_0;
  assign JtagBypassChain__EVAL_5 = JtagTapController__EVAL_12;
  assign dmiAccessChain__EVAL_12 = _EVAL_31 ? 2'h3 : _EVAL_34;
  assign JtagTapController__EVAL_1 = _EVAL_42 ? idcodeChain__EVAL_4 : _EVAL_25;
  assign _EVAL_15 = _EVAL_50;
  assign _EVAL_1 = _EVAL_56;
  assign _EVAL_40 = dmiAccessChain__EVAL_4 & _EVAL_95;
  assign _EVAL_25 = _EVAL_41 ? dtmInfoChain__EVAL_1 : _EVAL_68;
  assign idcodeChain__EVAL_5 = _EVAL_13;
  assign JtagTapController__EVAL_0 = _EVAL_2;
  assign dmiAccessChain__EVAL_2 = _EVAL_32 & JtagTapController__EVAL_7;
  assign idcodeChain__EVAL = _EVAL_6;
  assign _EVAL_41 = JtagTapController__EVAL == 5'h10;
  assign _EVAL_33 = _EVAL_9 ? _EVAL_12 : 32'h0;
  assign JtagTapController__EVAL_3 = _EVAL_8;
  assign _EVAL_75 = _EVAL_7 & _EVAL;
  assign _EVAL_55 = _EVAL_67 | _EVAL_77;
  assign _EVAL_35 = dmiAccessChain__EVAL_0 == 2'h0;
  assign _EVAL_31 = _EVAL_74 | _EVAL_77;
  assign dtmInfoChain__EVAL_6 = _EVAL_41 & JtagTapController__EVAL_2;
  assign dtmInfoChain__EVAL_5 = {_EVAL_67,_EVAL_55};
  assign JtagTapController__EVAL_4 = _EVAL_16;
  assign dmiAccessChain__EVAL_7 = _EVAL_32 & JtagTapController__EVAL_12;
  assign _EVAL_14 = _EVAL_21 ? _EVAL_9 : _EVAL_40;
  assign _EVAL_34 = _EVAL_9 ? _EVAL_11 : 2'h0;
  assign JtagTapController__EVAL_11 = _EVAL_0;
  assign dmiAccessChain__EVAL_9 = _EVAL_31 ? 32'h0 : _EVAL_33;
  assign dtmInfoChain__EVAL_8 = _EVAL_41 & JtagTapController__EVAL_5;
  assign _EVAL_30 = _EVAL_70 | _EVAL_35;
  assign _EVAL_42 = JtagTapController__EVAL == 5'h1;
  assign _EVAL_47 = _EVAL_11 != 2'h0;
  assign _EVAL_84 = _EVAL_9 & _EVAL_47;
  assign _EVAL_59 = _EVAL_14 & _EVAL_9;
  assign idcodeChain__EVAL_1 = _EVAL_0;
  assign _EVAL_3 = _EVAL_54;
  assign idcodeChain__EVAL_7 = _EVAL_2;
  assign _EVAL_74 = _EVAL_28 & _EVAL_83;
  assign _EVAL_32 = JtagTapController__EVAL == 5'h11;
  assign _EVAL_23 = _EVAL_95 & _EVAL_91;
  assign JtagBypassChain__EVAL_1 = JtagTapController__EVAL_5;
  assign JtagTapController__EVAL_9 = _EVAL_0;
  assign _EVAL_21 = _EVAL_50 == 2'h2;
  assign dtmInfoChain__EVAL_4 = _EVAL_41 & JtagTapController__EVAL_7;
  assign idcodeChain__EVAL_2 = _EVAL_42 & JtagTapController__EVAL_2;
  assign idcodeChain__EVAL_3 = _EVAL_42 & JtagTapController__EVAL_12;
  assign dtmInfoChain__EVAL = _EVAL_2;
  assign JtagBypassChain__EVAL_4 = _EVAL_0;
  assign dmiAccessChain__EVAL_11 = _EVAL_32 & JtagTapController__EVAL_5;
  assign JtagBypassChain__EVAL = JtagTapController__EVAL_2;
  assign _EVAL_68 = _EVAL_32 ? dmiAccessChain__EVAL_5 : JtagBypassChain__EVAL_2;
  assign _EVAL_49 = JtagTapController__EVAL_8;
  assign dtmInfoChain__EVAL_0 = _EVAL_0;
  assign _EVAL = _EVAL_26;
  assign _EVAL_83 = ~_EVAL_9;
  assign _EVAL_89 = _EVAL | _EVAL_28;
  assign JtagBypassChain__EVAL_3 = _EVAL_2;
  assign _EVAL_4 = JtagTapController__EVAL_6;
  assign idcodeChain__EVAL_6 = _EVAL_42 & JtagTapController__EVAL_5;
  assign idcodeChain__EVAL_0 = _EVAL_5;
  assign _EVAL_95 = ~_EVAL_31;
  assign idcodeChain__EVAL_8 = _EVAL_42 & JtagTapController__EVAL_7;
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
  _EVAL_28 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_50 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_54 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_56 = _RAND_4[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_67 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _EVAL_70 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _EVAL_77 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_0) begin
    _EVAL_26 = 1'h0;
  end
  if (_EVAL_0) begin
    _EVAL_28 = 1'h0;
  end
  if (_EVAL_0) begin
    _EVAL_67 = 1'h0;
  end
  if (_EVAL_0) begin
    _EVAL_70 = 1'h0;
  end
  if (_EVAL_0) begin
    _EVAL_77 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_2) begin
    if (dmiAccessChain__EVAL_6) begin
      if (!(_EVAL_77)) begin
        if (_EVAL_30) begin
          _EVAL_50 <= 2'h0;
        end else begin
          _EVAL_50 <= dmiAccessChain__EVAL_0;
        end
      end
    end
    if (dmiAccessChain__EVAL_6) begin
      if (!(_EVAL_77)) begin
        if (_EVAL_30) begin
          _EVAL_54 <= 32'h0;
        end else begin
          _EVAL_54 <= dmiAccessChain__EVAL;
        end
      end
    end
    if (dmiAccessChain__EVAL_6) begin
      if (!(_EVAL_77)) begin
        if (_EVAL_30) begin
          _EVAL_56 <= 7'h0;
        end else begin
          _EVAL_56 <= dmiAccessChain__EVAL_10;
        end
      end
    end
  end
  always @(posedge _EVAL_2 or posedge _EVAL_0) begin
    if (_EVAL_0) begin
      _EVAL_26 <= 1'h0;
    end else if (_EVAL_49) begin
      _EVAL_26 <= 1'h0;
    end else if (_EVAL_75) begin
      _EVAL_26 <= 1'h0;
    end else if (dmiAccessChain__EVAL_6) begin
      if (!(_EVAL_77)) begin
        if (!(_EVAL_30)) begin
          _EVAL_26 <= 1'h1;
        end
      end
    end
  end
  always @(posedge _EVAL_2 or posedge _EVAL_0) begin
    if (_EVAL_0) begin
      _EVAL_28 <= 1'h0;
    end else if (_EVAL_49) begin
      _EVAL_28 <= 1'h0;
    end else if (_EVAL_59) begin
      _EVAL_28 <= 1'h0;
    end else begin
      _EVAL_28 <= _EVAL_89;
    end
  end
  always @(posedge _EVAL_2 or posedge _EVAL_0) begin
    if (_EVAL_0) begin
      _EVAL_67 <= 1'h0;
    end else if (_EVAL_49) begin
      _EVAL_67 <= 1'h0;
    end else if (dtmInfoChain__EVAL_3) begin
      if (dtmInfoChain__EVAL_2) begin
        _EVAL_67 <= 1'h0;
      end else if (dmiAccessChain__EVAL_4) begin
        _EVAL_67 <= _EVAL_91;
      end
    end else if (dmiAccessChain__EVAL_4) begin
      _EVAL_67 <= _EVAL_91;
    end
  end
  always @(posedge _EVAL_2 or posedge _EVAL_0) begin
    if (_EVAL_0) begin
      _EVAL_70 <= 1'h0;
    end else if (_EVAL_49) begin
      _EVAL_70 <= 1'h0;
    end else if (dmiAccessChain__EVAL_4) begin
      _EVAL_70 <= _EVAL_23;
    end else if (dmiAccessChain__EVAL_6) begin
      _EVAL_70 <= 1'h0;
    end
  end
  always @(posedge _EVAL_2 or posedge _EVAL_0) begin
    if (_EVAL_0) begin
      _EVAL_77 <= 1'h0;
    end else if (_EVAL_49) begin
      _EVAL_77 <= 1'h0;
    end else if (dtmInfoChain__EVAL_3) begin
      if (dtmInfoChain__EVAL_2) begin
        _EVAL_77 <= 1'h0;
      end else if (dmiAccessChain__EVAL_4) begin
        _EVAL_77 <= _EVAL_31;
      end
    end else if (dmiAccessChain__EVAL_4) begin
      _EVAL_77 <= _EVAL_31;
    end
  end
endmodule
