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
module _EVAL_59_assert(
  input         _EVAL_0,
  input  [2:0]  _EVAL_3,
  input  [2:0]  _EVAL_8,
  input         _EVAL_10,
  input         _EVAL_12,
  input  [3:0]  _EVAL_13,
  input         _EVAL_14,
  input  [29:0] _EVAL_16,
  input         _EVAL_18,
  input  [3:0]  _EVAL_19,
  input  [2:0]  _EVAL_22,
  input  [2:0]  _EVAL_27,
  input         _EVAL_30,
  input         _EVAL_31,
  input  [1:0]  _EVAL_33,
  input         _EVAL_37,
  input  [3:0]  _EVAL_38,
  input         _EVAL_40,
  input  [2:0]  _EVAL_44,
  input         _EVAL_46,
  input         _EVAL_93,
  input         _EVAL_114,
  input         _EVAL_118,
  input         _EVAL_157,
  input         _EVAL_164
);
  wire  _EVAL_54;
  wire  _EVAL_57;
  wire [7:0] _EVAL_59;
  reg  _EVAL_64;
  reg [31:0] _RAND_0;
  wire [7:0] _EVAL_70;
  wire  _EVAL_78;
  wire [4:0] _EVAL_86;
  wire  _EVAL_90;
  wire  _EVAL_98;
  wire  _EVAL_104;
  wire  _EVAL_106;
  wire [4:0] _EVAL_108;
  wire  _EVAL_111;
  wire [4:0] _EVAL_112;
  wire [7:0] _EVAL_121;
  wire  _EVAL_122;
  wire  _EVAL_126;
  reg  _EVAL_130;
  reg [31:0] _RAND_1;
  wire  _EVAL_133;
  wire  _EVAL_135;
  wire  _EVAL_142;
  reg  _EVAL_147;
  reg [31:0] _RAND_2;
  wire  _EVAL_155;
  wire [7:0] _EVAL_158;
  wire  _EVAL_162;
  reg [4:0] _EVAL_168;
  reg [31:0] _RAND_3;
  wire [2:0] TLMonitor__EVAL;
  wire  TLMonitor__EVAL_0;
  wire  TLMonitor__EVAL_1;
  wire  TLMonitor__EVAL_2;
  wire [2:0] TLMonitor__EVAL_3;
  wire  TLMonitor__EVAL_4;
  wire [29:0] TLMonitor__EVAL_5;
  wire  TLMonitor__EVAL_6;
  wire [3:0] TLMonitor__EVAL_7;
  wire [2:0] TLMonitor__EVAL_8;
  wire [3:0] TLMonitor__EVAL_9;
  wire [2:0] TLMonitor__EVAL_10;
  wire  TLMonitor__EVAL_11;
  wire [1:0] TLMonitor__EVAL_12;
  wire  TLMonitor__EVAL_13;
  wire  TLMonitor__EVAL_14;
  wire  TLMonitor__EVAL_15;
  wire  TLMonitor__EVAL_16;
  wire [3:0] TLMonitor__EVAL_17;
  wire [2:0] TLMonitor__EVAL_18;
  _EVAL_58_assert TLMonitor (
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
    ._EVAL_15(TLMonitor__EVAL_15),
    ._EVAL_16(TLMonitor__EVAL_16),
    ._EVAL_17(TLMonitor__EVAL_17),
    ._EVAL_18(TLMonitor__EVAL_18)
  );
  assign _EVAL_98 = ~_EVAL_135;
  assign TLMonitor__EVAL_12 = _EVAL_33;
  assign TLMonitor__EVAL_5 = _EVAL_16;
  assign TLMonitor__EVAL_9 = _EVAL_13;
  assign _EVAL_121 = 8'h1 << _EVAL_22;
  assign TLMonitor__EVAL_18 = _EVAL_22;
  assign _EVAL_155 = _EVAL_114 | _EVAL_64;
  assign _EVAL_54 = 3'h2 == _EVAL_44;
  assign _EVAL_133 = ~_EVAL_37;
  assign _EVAL_158 = _EVAL_164 ? _EVAL_121 : 8'h0;
  assign _EVAL_70 = _EVAL_93 ? _EVAL_59 : 8'h0;
  assign _EVAL_142 = _EVAL_155 | _EVAL_130;
  assign TLMonitor__EVAL_2 = _EVAL_0;
  assign TLMonitor__EVAL_13 = _EVAL_40;
  assign _EVAL_122 = _EVAL_112 > 5'h0;
  assign _EVAL_162 = _EVAL_57 | _EVAL_147;
  assign TLMonitor__EVAL_4 = _EVAL_14 & _EVAL_118;
  assign _EVAL_78 = _EVAL_168 == 5'h1f;
  assign TLMonitor__EVAL_1 = _EVAL_12;
  assign _EVAL_104 = _EVAL_126 | _EVAL_130;
  assign TLMonitor__EVAL = _EVAL_27;
  assign TLMonitor__EVAL_16 = _EVAL_31;
  assign _EVAL_126 = 3'h3 == _EVAL_44;
  assign _EVAL_57 = 3'h4 == _EVAL_44;
  assign TLMonitor__EVAL_3 = _EVAL_8;
  assign _EVAL_112 = _EVAL_158[4:0];
  assign TLMonitor__EVAL_0 = _EVAL_18;
  assign _EVAL_86 = _EVAL_168 | _EVAL_108;
  assign TLMonitor__EVAL_6 = _EVAL_46;
  assign _EVAL_59 = 8'h1 << _EVAL_44;
  assign _EVAL_90 = _EVAL_108 > 5'h0;
  assign _EVAL_111 = _EVAL_54 | _EVAL_64;
  assign TLMonitor__EVAL_17 = _EVAL_38;
  assign _EVAL_106 = _EVAL_30 & _EVAL_157;
  assign TLMonitor__EVAL_11 = _EVAL_10;
  assign TLMonitor__EVAL_14 = _EVAL_37;
  assign _EVAL_108 = _EVAL_70[4:0];
  assign TLMonitor__EVAL_7 = _EVAL_19;
  assign _EVAL_135 = _EVAL_142 | _EVAL_147;
  assign TLMonitor__EVAL_8 = _EVAL_3;
  assign TLMonitor__EVAL_10 = _EVAL_44;
  assign TLMonitor__EVAL_15 = _EVAL_30;
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
  _EVAL_64 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_130 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_147 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_168 = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_12) begin
    if (_EVAL_37) begin
      _EVAL_64 <= 1'h0;
    end else if (_EVAL_164) begin
      if (3'h2 == _EVAL_22) begin
        _EVAL_64 <= 1'h0;
      end else if (_EVAL_93) begin
        _EVAL_64 <= _EVAL_111;
      end
    end else if (_EVAL_93) begin
      _EVAL_64 <= _EVAL_111;
    end
    if (_EVAL_37) begin
      _EVAL_130 <= 1'h0;
    end else if (_EVAL_164) begin
      if (3'h3 == _EVAL_22) begin
        _EVAL_130 <= 1'h0;
      end else if (_EVAL_93) begin
        _EVAL_130 <= _EVAL_104;
      end
    end else if (_EVAL_93) begin
      _EVAL_130 <= _EVAL_104;
    end
    if (_EVAL_37) begin
      _EVAL_147 <= 1'h0;
    end else if (_EVAL_164) begin
      if (3'h4 == _EVAL_22) begin
        _EVAL_147 <= 1'h0;
      end else if (_EVAL_93) begin
        _EVAL_147 <= _EVAL_162;
      end
    end else if (_EVAL_93) begin
      _EVAL_147 <= _EVAL_162;
    end
    if (_EVAL_37) begin
      _EVAL_168 <= 5'h0;
    end else begin
      _EVAL_168 <= _EVAL_86;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_98 & _EVAL_133) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(b98e21ee)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_78 & _EVAL_133) begin
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
        if (_EVAL_90 & _EVAL_133) begin
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
        if (_EVAL_106 & _EVAL_133) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(3cee430f)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_122 & _EVAL_133) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(687f9502)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
