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
//VCS coverage exclude_file
module _EVAL_47_assert(
  input         _EVAL_0,
  input  [2:0]  _EVAL_5,
  input         _EVAL_6,
  input  [3:0]  _EVAL_8,
  input         _EVAL_12,
  input         _EVAL_15,
  input         _EVAL_19,
  input         _EVAL_23,
  input         _EVAL_25,
  input  [31:0] _EVAL_29,
  input  [2:0]  _EVAL_32,
  input         _EVAL_34,
  input         _EVAL_35,
  input  [3:0]  _EVAL_36,
  input  [1:0]  _EVAL_37,
  input         _EVAL_38,
  input  [3:0]  _EVAL_39
);
  wire  _EVAL_47;
  wire [5:0] _EVAL_48;
  wire  _EVAL_51;
  wire [22:0] _EVAL_52;
  wire  _EVAL_53;
  wire  _EVAL_54;
  wire [7:0] _EVAL_55;
  wire [1:0] _EVAL_56;
  reg  _EVAL_57;
  reg [31:0] _RAND_0;
  wire  _EVAL_58;
  wire  _EVAL_59;
  wire [5:0] _EVAL_60;
  wire [1:0] _EVAL_62;
  wire [6:0] _EVAL_63;
  wire  _EVAL_64;
  wire  TLMonitor__EVAL;
  wire  TLMonitor__EVAL_0;
  wire [31:0] TLMonitor__EVAL_1;
  wire  TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire  TLMonitor__EVAL_4;
  wire  TLMonitor__EVAL_5;
  wire [3:0] TLMonitor__EVAL_6;
  wire [1:0] TLMonitor__EVAL_7;
  wire [3:0] TLMonitor__EVAL_8;
  wire  TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire [2:0] TLMonitor__EVAL_11;
  wire  TLMonitor__EVAL_12;
  wire  TLMonitor__EVAL_13;
  wire [2:0] TLMonitor__EVAL_14;
  wire [3:0] TLMonitor__EVAL_15;
  wire  _EVAL_66;
  reg [5:0] _EVAL_68;
  reg [31:0] _RAND_1;
  reg [5:0] _EVAL_69;
  reg [31:0] _RAND_2;
  wire  _EVAL_70;
  wire  _EVAL_71;
  wire [7:0] _EVAL_72;
  wire [5:0] _EVAL_73;
  wire [22:0] _EVAL_75;
  wire  _EVAL_76;
  wire [1:0] _EVAL_77;
  wire [5:0] _EVAL_78;
  wire  _EVAL_79;
  wire [7:0] _EVAL_80;
  wire [7:0] _EVAL_81;
  wire  _EVAL_82;
  wire  _EVAL_83;
  reg  _EVAL_84;
  reg [31:0] _RAND_3;
  wire  _EVAL_86;
  wire  _EVAL_87;
  wire  _EVAL_88;
  wire  _EVAL_89;
  wire [6:0] _EVAL_90;
  wire  _EVAL_91;
  _EVAL_46_assert TLMonitor (
    ._EVAL(TLMonitor__EVAL),
    ._EVAL_0(TLMonitor__EVAL_0),
    ._EVAL_1(TLMonitor__EVAL_1),
    ._EVAL_2(TLMonitor__EVAL_2),
    ._EVAL_3(TLMonitor__EVAL_3),
    ._EVAL_4(TLMonitor__EVAL_4),
    ._EVAL_5(TLMonitor__EVAL_5),
    ._EVAL_6(TLMonitor__EVAL_6),
    ._EVAL_7(TLMonitor__EVAL_7),
    ._EVAL_8(TLMonitor__EVAL_8),
    ._EVAL_9(TLMonitor__EVAL_9),
    ._EVAL_10(TLMonitor__EVAL_10),
    ._EVAL_11(TLMonitor__EVAL_11),
    ._EVAL_12(TLMonitor__EVAL_12),
    ._EVAL_13(TLMonitor__EVAL_13),
    ._EVAL_14(TLMonitor__EVAL_14),
    ._EVAL_15(TLMonitor__EVAL_15)
  );
  assign _EVAL_58 = ~_EVAL_84;
  assign TLMonitor__EVAL_15 = _EVAL_36;
  assign _EVAL_83 = _EVAL_76 | _EVAL_84;
  assign _EVAL_73 = _EVAL_80[7:2];
  assign TLMonitor__EVAL_13 = _EVAL_6;
  assign _EVAL_87 = _EVAL_57 | _EVAL_82;
  assign _EVAL_55 = ~_EVAL_81;
  assign _EVAL_53 = _EVAL_6 & _EVAL_38;
  assign TLMonitor__EVAL_12 = _EVAL_35;
  assign _EVAL_51 = _EVAL_47 > 1'h0;
  assign TLMonitor__EVAL_14 = _EVAL_5;
  assign _EVAL_89 = _EVAL_32[0];
  assign TLMonitor__EVAL_10 = _EVAL_34;
  assign _EVAL_90 = _EVAL_69 - 6'h1;
  assign _EVAL_79 = ~_EVAL_86;
  assign _EVAL_86 = _EVAL_5[2];
  assign _EVAL_62 = _EVAL_76 ? 2'h1 : 2'h0;
  assign TLMonitor__EVAL_6 = _EVAL_8;
  assign _EVAL_63 = _EVAL_68 - 6'h1;
  assign _EVAL_56 = _EVAL_71 ? _EVAL_77 : 2'h0;
  assign _EVAL_72 = _EVAL_75[7:0];
  assign TLMonitor__EVAL_1 = _EVAL_29;
  assign TLMonitor__EVAL_5 = _EVAL_38;
  assign _EVAL_80 = ~_EVAL_72;
  assign TLMonitor__EVAL_3 = _EVAL_15;
  assign _EVAL_48 = _EVAL_55[7:2];
  assign _EVAL_52 = 23'hff << _EVAL_36;
  assign _EVAL_76 = _EVAL_88 & _EVAL_53;
  assign TLMonitor__EVAL_2 = _EVAL_25;
  assign _EVAL_81 = _EVAL_52[7:0];
  assign _EVAL_78 = _EVAL_63[5:0];
  assign _EVAL_54 = _EVAL_69 == 6'h0;
  assign _EVAL_91 = ~_EVAL_12;
  assign TLMonitor__EVAL_0 = _EVAL_19;
  assign _EVAL_71 = _EVAL_66 & _EVAL_70;
  assign TLMonitor__EVAL = _EVAL_0;
  assign _EVAL_70 = _EVAL_19 & _EVAL_15;
  assign TLMonitor__EVAL_8 = _EVAL_39;
  assign _EVAL_60 = _EVAL_90[5:0];
  assign _EVAL_82 = _EVAL_62[0];
  assign _EVAL_64 = _EVAL_32 != 3'h6;
  assign _EVAL_77 = 2'h1 << _EVAL_0;
  assign TLMonitor__EVAL_9 = _EVAL_12;
  assign _EVAL_59 = _EVAL_82 > 1'h0;
  assign _EVAL_75 = 23'hff << _EVAL_8;
  assign TLMonitor__EVAL_11 = _EVAL_32;
  assign _EVAL_47 = _EVAL_56[0];
  assign TLMonitor__EVAL_4 = _EVAL_23;
  assign _EVAL_88 = _EVAL_68 == 6'h0;
  assign _EVAL_66 = _EVAL_54 & _EVAL_64;
  assign TLMonitor__EVAL_7 = _EVAL_37;
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
  _EVAL_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_68 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_69 = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_84 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_34) begin
    if (_EVAL_12) begin
      _EVAL_57 <= 1'h0;
    end else begin
      _EVAL_57 <= _EVAL_87;
    end
    if (_EVAL_12) begin
      _EVAL_68 <= 6'h0;
    end else if (_EVAL_53) begin
      if (_EVAL_88) begin
        if (_EVAL_79) begin
          _EVAL_68 <= _EVAL_73;
        end else begin
          _EVAL_68 <= 6'h0;
        end
      end else begin
        _EVAL_68 <= _EVAL_78;
      end
    end
    if (_EVAL_12) begin
      _EVAL_69 <= 6'h0;
    end else if (_EVAL_70) begin
      if (_EVAL_54) begin
        if (_EVAL_89) begin
          _EVAL_69 <= _EVAL_48;
        end else begin
          _EVAL_69 <= 6'h0;
        end
      end else begin
        _EVAL_69 <= _EVAL_60;
      end
    end
    if (_EVAL_12) begin
      _EVAL_84 <= 1'h0;
    end else if (_EVAL_71) begin
      _EVAL_84 <= 1'h0;
    end else begin
      _EVAL_84 <= _EVAL_83;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_59 & _EVAL_91) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(e982a5)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_57 & _EVAL_91) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(faf26c64)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_51 & _EVAL_91) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(687f9502)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_58 & _EVAL_91) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(b98e21ee)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
