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
module _EVAL_63_assert(
  input         _EVAL_7,
  input  [3:0]  _EVAL_12,
  input  [2:0]  _EVAL_39,
  input         _EVAL_40,
  input  [29:0] _EVAL_60,
  input         _EVAL_61,
  input  [2:0]  _EVAL_70,
  input         _EVAL_79,
  input         _EVAL_86,
  input  [3:0]  _EVAL_90,
  input  [2:0]  _EVAL_110,
  input         _EVAL_150,
  input         _EVAL_161,
  input         _EVAL_166,
  input         _EVAL_208,
  input         _EVAL_226,
  input  [46:0] _EVAL_235,
  input         _EVAL_237,
  input         _EVAL_242,
  input         _EVAL_245,
  input         _EVAL_251,
  input         _EVAL_265
);
  wire  _EVAL_117;
  wire  _EVAL_126;
  wire  _EVAL_135;
  wire  _EVAL_139;
  wire  _EVAL_145;
  wire  _EVAL_170;
  wire  _EVAL_172;
  wire  _EVAL_173;
  wire  _EVAL_186;
  wire  _EVAL_188;
  wire  _EVAL_199;
  wire  _EVAL_214;
  wire  _EVAL_216;
  wire  _EVAL_219;
  wire  _EVAL_221;
  wire  _EVAL_229;
  wire  _EVAL_230;
  wire  _EVAL_231;
  wire  _EVAL_232;
  wire  _EVAL_239;
  wire  _EVAL_244;
  wire  _EVAL_249;
  wire  TLMonitor__EVAL;
  wire [2:0] TLMonitor__EVAL_0;
  wire [2:0] TLMonitor__EVAL_1;
  wire [3:0] TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire [2:0] TLMonitor__EVAL_4;
  wire  TLMonitor__EVAL_5;
  wire  TLMonitor__EVAL_6;
  wire  TLMonitor__EVAL_7;
  wire  TLMonitor__EVAL_8;
  wire [2:0] TLMonitor__EVAL_9;
  wire [2:0] TLMonitor__EVAL_10;
  wire [3:0] TLMonitor__EVAL_11;
  wire [3:0] TLMonitor__EVAL_12;
  wire  TLMonitor__EVAL_13;
  wire  TLMonitor__EVAL_14;
  wire  TLMonitor__EVAL_15;
  wire [1:0] TLMonitor__EVAL_16;
  wire  TLMonitor__EVAL_17;
  wire [29:0] TLMonitor__EVAL_18;
  wire  _EVAL_273;
  wire  _EVAL_277;
  wire  _EVAL_278;
  _EVAL_62_assert TLMonitor (
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
  assign _EVAL_277 = ~_EVAL_229;
  assign TLMonitor__EVAL_13 = _EVAL_40;
  assign _EVAL_230 = ~_EVAL_244;
  assign TLMonitor__EVAL_8 = _EVAL_61;
  assign _EVAL_216 = _EVAL_278 | _EVAL_219;
  assign _EVAL_273 = ~_EVAL_239;
  assign TLMonitor__EVAL_2 = _EVAL_90;
  assign _EVAL_170 = _EVAL_230 | _EVAL_214;
  assign TLMonitor__EVAL_7 = _EVAL_235[0];
  assign TLMonitor__EVAL_1 = _EVAL_235[37:35];
  assign TLMonitor__EVAL_11 = _EVAL_235[41:38];
  assign _EVAL_214 = ~_EVAL_161;
  assign _EVAL_145 = _EVAL_249 | _EVAL_135;
  assign TLMonitor__EVAL_10 = _EVAL_110;
  assign _EVAL_249 = ~_EVAL_237;
  assign _EVAL_232 = ~_EVAL_251;
  assign _EVAL_173 = _EVAL_145 & _EVAL_117;
  assign _EVAL_139 = _EVAL_126 & _EVAL_216;
  assign TLMonitor__EVAL_16 = _EVAL_235[43:42];
  assign _EVAL_172 = ~_EVAL_150;
  assign _EVAL_199 = _EVAL_172 | _EVAL_231;
  assign TLMonitor__EVAL_18 = _EVAL_60;
  assign _EVAL_239 = _EVAL_237 | _EVAL_242;
  assign _EVAL_221 = _EVAL_139 | _EVAL_86;
  assign _EVAL_117 = _EVAL_273 | _EVAL_232;
  assign TLMonitor__EVAL_15 = _EVAL_86;
  assign _EVAL_278 = ~_EVAL_186;
  assign _EVAL_231 = _EVAL_186 | _EVAL_245;
  assign TLMonitor__EVAL_17 = _EVAL_235[34];
  assign _EVAL_135 = ~_EVAL_242;
  assign TLMonitor__EVAL = _EVAL_226 ? _EVAL_150 : _EVAL_265;
  assign _EVAL_188 = ~_EVAL_221;
  assign TLMonitor__EVAL_0 = _EVAL_39;
  assign TLMonitor__EVAL_14 = _EVAL_7;
  assign _EVAL_229 = _EVAL_199 | _EVAL_86;
  assign TLMonitor__EVAL_3 = _EVAL_79;
  assign TLMonitor__EVAL_12 = _EVAL_12;
  assign TLMonitor__EVAL_4 = _EVAL_235[46:44];
  assign _EVAL_244 = _EVAL_239 | _EVAL_251;
  assign _EVAL_186 = _EVAL_244 | _EVAL_161;
  assign TLMonitor__EVAL_6 = _EVAL_166 | _EVAL_208;
  assign TLMonitor__EVAL_5 = _EVAL_235[33];
  assign _EVAL_126 = _EVAL_173 & _EVAL_170;
  assign _EVAL_219 = ~_EVAL_245;
  assign TLMonitor__EVAL_9 = _EVAL_70;
  always @(posedge _EVAL_79) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_277) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(3808bb77)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_188) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(2658285f)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_277) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_188) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
