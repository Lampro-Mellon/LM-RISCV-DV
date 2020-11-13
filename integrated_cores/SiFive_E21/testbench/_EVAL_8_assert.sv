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
module _EVAL_8_assert(
  input  [1:0]  _EVAL_0,
  input         _EVAL_1,
  input         _EVAL_3,
  input  [1:0]  _EVAL_7,
  input         _EVAL_9,
  input         _EVAL_10,
  input  [3:0]  _EVAL_12,
  input  [2:0]  _EVAL_14,
  input         _EVAL_16,
  input         _EVAL_20,
  input         _EVAL_21,
  input         _EVAL_23,
  input         _EVAL_26,
  input         _EVAL_30,
  input         _EVAL_32,
  input         _EVAL_33,
  input  [31:0] _EVAL_47,
  input  [2:0]  _EVAL_48,
  input         _EVAL_49,
  input  [31:0] _EVAL_50,
  input         _EVAL_51,
  input  [3:0]  _EVAL_56,
  input  [2:0]  _EVAL_57,
  input  [2:0]  _EVAL_58,
  input         _EVAL_62,
  input         _EVAL_66,
  input         _EVAL_68,
  input         _EVAL_70,
  input         _EVAL_71,
  input  [3:0]  _EVAL_86,
  input  [3:0]  _EVAL_87,
  input         _EVAL_90,
  input  [3:0]  _EVAL_94,
  input  [3:0]  _EVAL_97,
  input         _EVAL_98,
  input  [2:0]  _EVAL_100,
  input         _EVAL_103,
  input  [2:0]  _EVAL_104,
  input         _EVAL_127,
  input         _EVAL_187,
  input         _EVAL_188,
  input         _EVAL_194,
  input         _EVAL_195,
  input         _EVAL_247
);
  wire [2:0] TLMonitor__EVAL;
  wire  TLMonitor__EVAL_0;
  wire  TLMonitor__EVAL_1;
  wire  TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire  TLMonitor__EVAL_4;
  wire  TLMonitor__EVAL_5;
  wire  TLMonitor__EVAL_6;
  wire [31:0] TLMonitor__EVAL_7;
  wire [2:0] TLMonitor__EVAL_8;
  wire [2:0] TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire  TLMonitor__EVAL_11;
  wire  TLMonitor__EVAL_12;
  wire [3:0] TLMonitor__EVAL_13;
  wire [3:0] TLMonitor__EVAL_14;
  wire [3:0] TLMonitor__EVAL_15;
  wire [1:0] TLMonitor__EVAL_16;
  wire  TLMonitor__EVAL_17;
  wire  TLMonitor__EVAL_18;
  wire  _EVAL_110;
  wire  _EVAL_113;
  wire [1:0] _EVAL_119;
  wire  _EVAL_122;
  wire [5:0] _EVAL_125;
  reg [5:0] _EVAL_129;
  reg [31:0] _RAND_0;
  wire  _EVAL_131;
  reg [1:0] _EVAL_132;
  reg [31:0] _RAND_1;
  wire [5:0] _EVAL_133;
  wire  _EVAL_136;
  wire [22:0] _EVAL_138;
  wire  _EVAL_139;
  wire [1:0] _EVAL_142;
  wire [6:0] _EVAL_145;
  wire [22:0] _EVAL_146;
  wire  _EVAL_147;
  wire [1:0] _EVAL_152;
  wire  _EVAL_154;
  wire [7:0] _EVAL_156;
  wire  _EVAL_162;
  wire  _EVAL_163;
  wire [32:0] _EVAL_167;
  wire  _EVAL_168;
  wire [1:0] _EVAL_169;
  wire  _EVAL_170;
  wire  _EVAL_171;
  wire  _EVAL_172;
  reg [5:0] _EVAL_178;
  reg [31:0] _RAND_2;
  wire [1:0] _EVAL_179;
  wire  _EVAL_183;
  wire [7:0] _EVAL_186;
  reg  _EVAL_189;
  reg [31:0] _RAND_3;
  wire [1:0] _EVAL_190;
  wire [32:0] _EVAL_192;
  wire  _EVAL_198;
  wire [7:0] _EVAL_199;
  wire  _EVAL_201;
  reg  _EVAL_204;
  reg [31:0] _RAND_4;
  wire [1:0] _EVAL_206;
  wire  _EVAL_210;
  wire [7:0] _EVAL_213;
  wire [1:0] _EVAL_215;
  wire  _EVAL_217;
  wire [6:0] _EVAL_219;
  wire  _EVAL_221;
  wire [1:0] _EVAL_223;
  wire [5:0] _EVAL_226;
  wire  _EVAL_230;
  wire  _EVAL_232;
  wire [32:0] _EVAL_233;
  wire [5:0] _EVAL_235;
  wire [31:0] _EVAL_237;
  wire [1:0] _EVAL_238;
  wire  _EVAL_239;
  wire  _EVAL_240;
  wire [2:0] TLMonitor_1__EVAL;
  wire  TLMonitor_1__EVAL_0;
  wire  TLMonitor_1__EVAL_1;
  wire  TLMonitor_1__EVAL_2;
  wire  TLMonitor_1__EVAL_3;
  wire  TLMonitor_1__EVAL_4;
  wire  TLMonitor_1__EVAL_5;
  wire  TLMonitor_1__EVAL_6;
  wire [31:0] TLMonitor_1__EVAL_7;
  wire [2:0] TLMonitor_1__EVAL_8;
  wire [2:0] TLMonitor_1__EVAL_9;
  wire  TLMonitor_1__EVAL_10;
  wire  TLMonitor_1__EVAL_11;
  wire  TLMonitor_1__EVAL_12;
  wire [3:0] TLMonitor_1__EVAL_13;
  wire [3:0] TLMonitor_1__EVAL_14;
  wire [3:0] TLMonitor_1__EVAL_15;
  wire [1:0] TLMonitor_1__EVAL_16;
  wire  TLMonitor_1__EVAL_17;
  wire  TLMonitor_1__EVAL_18;
  wire  _EVAL_243;
  reg [1:0] _EVAL_244;
  reg [31:0] _RAND_5;
  wire  _EVAL_250;
  _EVAL_7_assert TLMonitor (
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
  _EVAL_7_assert TLMonitor_1 (
    ._EVAL(TLMonitor_1__EVAL),
    ._EVAL_0(TLMonitor_1__EVAL_0),
    ._EVAL_1(TLMonitor_1__EVAL_1),
    ._EVAL_2(TLMonitor_1__EVAL_2),
    ._EVAL_3(TLMonitor_1__EVAL_3),
    ._EVAL_4(TLMonitor_1__EVAL_4),
    ._EVAL_5(TLMonitor_1__EVAL_5),
    ._EVAL_6(TLMonitor_1__EVAL_6),
    ._EVAL_7(TLMonitor_1__EVAL_7),
    ._EVAL_8(TLMonitor_1__EVAL_8),
    ._EVAL_9(TLMonitor_1__EVAL_9),
    ._EVAL_10(TLMonitor_1__EVAL_10),
    ._EVAL_11(TLMonitor_1__EVAL_11),
    ._EVAL_12(TLMonitor_1__EVAL_12),
    ._EVAL_13(TLMonitor_1__EVAL_13),
    ._EVAL_14(TLMonitor_1__EVAL_14),
    ._EVAL_15(TLMonitor_1__EVAL_15),
    ._EVAL_16(TLMonitor_1__EVAL_16),
    ._EVAL_17(TLMonitor_1__EVAL_17),
    ._EVAL_18(TLMonitor_1__EVAL_18)
  );
  assign _EVAL_152 = _EVAL_113 ? _EVAL_142 : 2'h0;
  assign _EVAL_210 = _EVAL_100[2];
  assign TLMonitor__EVAL_7 = _EVAL_47;
  assign TLMonitor__EVAL_15 = _EVAL_94;
  assign _EVAL_190 = 2'h1 << _EVAL_9;
  assign TLMonitor__EVAL_6 = _EVAL_20;
  assign _EVAL_240 = _EVAL_179 > 2'h0;
  assign TLMonitor_1__EVAL_14 = _EVAL_97;
  assign _EVAL_179 = _EVAL_188 ? _EVAL_169 : 2'h0;
  assign _EVAL_201 = _EVAL_119 > 2'h0;
  assign TLMonitor__EVAL_16 = _EVAL_7;
  assign _EVAL_139 = _EVAL_217 & _EVAL_136;
  assign _EVAL_183 = _EVAL_10 & _EVAL_20;
  assign TLMonitor__EVAL_8 = _EVAL_100;
  assign TLMonitor_1__EVAL_8 = _EVAL_57;
  assign TLMonitor_1__EVAL_10 = _EVAL_90;
  assign TLMonitor__EVAL_4 = _EVAL_68;
  assign _EVAL_233 = _EVAL_167;
  assign _EVAL_226 = _EVAL_219[5:0];
  assign TLMonitor__EVAL_11 = _EVAL_1;
  assign TLMonitor_1__EVAL_3 = _EVAL_33;
  assign _EVAL_223 = _EVAL_132 | _EVAL_152;
  assign _EVAL_138 = 23'hff << _EVAL_56;
  assign _EVAL_250 = ~_EVAL_170;
  assign _EVAL_125 = _EVAL_199[7:2];
  assign _EVAL_122 = _EVAL_103 & _EVAL_187;
  assign _EVAL_163 = ~_EVAL_221;
  assign _EVAL_219 = _EVAL_129 - 6'h1;
  assign TLMonitor_1__EVAL_16 = _EVAL_0;
  assign TLMonitor__EVAL_1 = _EVAL_26;
  assign _EVAL_221 = _EVAL_189 | _EVAL_204;
  assign _EVAL_156 = _EVAL_146[7:0];
  assign TLMonitor_1__EVAL_2 = _EVAL_32;
  assign TLMonitor__EVAL_10 = _EVAL_23;
  assign TLMonitor_1__EVAL_17 = _EVAL_21;
  assign _EVAL_142 = 2'h1 << _EVAL_26;
  assign _EVAL_154 = _EVAL_152 > 2'h0;
  assign TLMonitor_1__EVAL_13 = _EVAL_12;
  assign TLMonitor__EVAL_17 = _EVAL_98;
  assign _EVAL_172 = _EVAL_129 == 6'h0;
  assign _EVAL_133 = _EVAL_186[7:2];
  assign _EVAL_206 = _EVAL_244 | _EVAL_215;
  assign TLMonitor_1__EVAL_5 = _EVAL_66;
  assign TLMonitor_1__EVAL_1 = _EVAL_16;
  assign _EVAL_171 = _EVAL_139 & _EVAL_232;
  assign _EVAL_186 = ~_EVAL_156;
  assign _EVAL_239 = _EVAL_215 > 2'h0;
  assign _EVAL_215 = _EVAL_110 ? _EVAL_238 : 2'h0;
  assign _EVAL_217 = _EVAL_178 == 6'h0;
  assign TLMonitor_1__EVAL_9 = _EVAL_104;
  assign _EVAL_213 = _EVAL_138[7:0];
  assign _EVAL_199 = ~_EVAL_213;
  assign _EVAL_145 = _EVAL_178 - 6'h1;
  assign _EVAL_235 = _EVAL_145[5:0];
  assign _EVAL_147 = ~_EVAL_1;
  assign TLMonitor__EVAL_5 = _EVAL_9;
  assign _EVAL_192 = {1'b0,$signed(_EVAL_237)};
  assign _EVAL_131 = ~_EVAL_194;
  assign _EVAL_113 = _EVAL_168 & _EVAL_250;
  assign TLMonitor_1__EVAL = _EVAL_14;
  assign _EVAL_232 = _EVAL_3 & _EVAL_51;
  assign TLMonitor_1__EVAL_0 = _EVAL_49 & _EVAL_195;
  assign _EVAL_119 = _EVAL_171 ? _EVAL_190 : 2'h0;
  assign _EVAL_146 = 23'hff << _EVAL_87;
  assign _EVAL_237 = _EVAL_47 ^ 32'h80000000;
  assign TLMonitor_1__EVAL_12 = _EVAL_30;
  assign _EVAL_136 = _EVAL_58 != 3'h6;
  assign TLMonitor_1__EVAL_11 = _EVAL_1;
  assign _EVAL_110 = _EVAL_127 & _EVAL_247;
  assign TLMonitor__EVAL_2 = _EVAL_71;
  assign TLMonitor__EVAL = _EVAL_48;
  assign TLMonitor__EVAL_14 = _EVAL_56;
  assign _EVAL_169 = 2'h1 << _EVAL_66;
  assign _EVAL_168 = _EVAL_172 & _EVAL_183;
  assign TLMonitor__EVAL_13 = _EVAL_87;
  assign TLMonitor_1__EVAL_6 = _EVAL_103;
  assign _EVAL_170 = $signed(_EVAL_233) == 33'sh0;
  assign _EVAL_230 = ~_EVAL_210;
  assign TLMonitor__EVAL_9 = _EVAL_58;
  assign TLMonitor__EVAL_12 = _EVAL_3;
  assign _EVAL_238 = 2'h1 << _EVAL_16;
  assign _EVAL_198 = _EVAL_132 == 2'h3;
  assign TLMonitor__EVAL_0 = _EVAL_10;
  assign _EVAL_243 = _EVAL_58[0];
  assign TLMonitor_1__EVAL_4 = _EVAL_68;
  assign TLMonitor__EVAL_18 = _EVAL_51;
  assign TLMonitor_1__EVAL_7 = _EVAL_50;
  assign TLMonitor_1__EVAL_18 = _EVAL_62;
  assign _EVAL_162 = _EVAL_244 == 2'h3;
  assign TLMonitor_1__EVAL_15 = _EVAL_86;
  assign TLMonitor__EVAL_3 = _EVAL_70;
  assign _EVAL_167 = $signed(_EVAL_192) & 33'sh80000000;
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
  _EVAL_129 = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_132 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_178 = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _EVAL_189 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _EVAL_204 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _EVAL_244 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_68) begin
    if (_EVAL_1) begin
      _EVAL_129 <= 6'h0;
    end else if (_EVAL_183) begin
      if (_EVAL_172) begin
        if (_EVAL_230) begin
          _EVAL_129 <= _EVAL_133;
        end else begin
          _EVAL_129 <= 6'h0;
        end
      end else begin
        _EVAL_129 <= _EVAL_226;
      end
    end
    if (_EVAL_1) begin
      _EVAL_132 <= 2'h0;
    end else begin
      _EVAL_132 <= _EVAL_223;
    end
    if (_EVAL_1) begin
      _EVAL_178 <= 6'h0;
    end else if (_EVAL_232) begin
      if (_EVAL_217) begin
        if (_EVAL_243) begin
          _EVAL_178 <= _EVAL_125;
        end else begin
          _EVAL_178 <= 6'h0;
        end
      end else begin
        _EVAL_178 <= _EVAL_235;
      end
    end
    if (_EVAL_1) begin
      _EVAL_189 <= 1'h0;
    end else if (_EVAL_171) begin
      if (~_EVAL_9) begin
        _EVAL_189 <= 1'h0;
      end else if (_EVAL_168) begin
        if (~_EVAL_26) begin
          _EVAL_189 <= _EVAL_250;
        end
      end
    end else if (_EVAL_168) begin
      if (~_EVAL_26) begin
        _EVAL_189 <= _EVAL_250;
      end
    end
    if (_EVAL_1) begin
      _EVAL_204 <= 1'h0;
    end else if (_EVAL_171) begin
      if (_EVAL_9) begin
        _EVAL_204 <= 1'h0;
      end else if (_EVAL_168) begin
        if (_EVAL_26) begin
          _EVAL_204 <= _EVAL_250;
        end
      end
    end else if (_EVAL_168) begin
      if (_EVAL_26) begin
        _EVAL_204 <= _EVAL_250;
      end
    end
    if (_EVAL_1) begin
      _EVAL_244 <= 2'h0;
    end else begin
      _EVAL_244 <= _EVAL_206;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_163 & _EVAL_147) begin
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
        if (_EVAL_239 & _EVAL_147) begin
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
        if (_EVAL_154 & _EVAL_147) begin
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
        if (_EVAL_201 & _EVAL_147) begin
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
        if (_EVAL_198 & _EVAL_147) begin
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
        if (_EVAL_162 & _EVAL_147) begin
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
        if (_EVAL_131 & _EVAL_147) begin
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
        if (_EVAL_122 & _EVAL_147) begin
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
        if (_EVAL_240 & _EVAL_147) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(687f9502)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
