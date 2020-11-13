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
module _EVAL_69_assert(
  input         _EVAL_2,
  input  [2:0]  _EVAL_3,
  input  [2:0]  _EVAL_5,
  input  [2:0]  _EVAL_6,
  input  [1:0]  _EVAL_8,
  input  [29:0] _EVAL_18,
  input         _EVAL_19,
  input         _EVAL_20,
  input         _EVAL_21,
  input  [3:0]  _EVAL_28,
  input         _EVAL_34,
  input  [2:0]  _EVAL_35,
  input  [3:0]  _EVAL_37,
  input         _EVAL_39,
  input         _EVAL_42,
  input         _EVAL_44,
  input  [2:0]  _EVAL_45,
  input         _EVAL_46,
  input  [3:0]  _EVAL_51,
  input         _EVAL_109,
  input         _EVAL_110,
  input         _EVAL_135,
  input         _EVAL_183,
  input         _EVAL_241,
  input         _EVAL_259,
  input         _EVAL_330,
  input         _EVAL_392,
  input         _EVAL_444
);
  wire  _EVAL_82;
  wire  _EVAL_85;
  wire  _EVAL_177;
  wire  _EVAL_231;
  wire  _EVAL_276;
  wire  TLMonitor__EVAL;
  wire [3:0] TLMonitor__EVAL_0;
  wire [2:0] TLMonitor__EVAL_1;
  wire  TLMonitor__EVAL_2;
  wire [2:0] TLMonitor__EVAL_3;
  wire [2:0] TLMonitor__EVAL_4;
  wire [2:0] TLMonitor__EVAL_5;
  wire  TLMonitor__EVAL_6;
  wire  TLMonitor__EVAL_7;
  wire [29:0] TLMonitor__EVAL_8;
  wire [1:0] TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire [3:0] TLMonitor__EVAL_11;
  wire  TLMonitor__EVAL_12;
  wire [3:0] TLMonitor__EVAL_13;
  wire [2:0] TLMonitor__EVAL_14;
  wire  TLMonitor__EVAL_15;
  wire  TLMonitor__EVAL_16;
  wire  TLMonitor__EVAL_17;
  wire  TLMonitor__EVAL_18;
  wire  _EVAL_336;
  wire  _EVAL_357;
  wire  _EVAL_374;
  wire  _EVAL_445;
  wire  _EVAL_467;
  _EVAL_68_assert TLMonitor (
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
  assign TLMonitor__EVAL_9 = _EVAL_8;
  assign TLMonitor__EVAL_16 = _EVAL_42;
  assign TLMonitor__EVAL_1 = _EVAL_3;
  assign TLMonitor__EVAL_17 = _EVAL_19;
  assign TLMonitor__EVAL_3 = _EVAL_6;
  assign TLMonitor__EVAL_8 = _EVAL_18;
  assign TLMonitor__EVAL_0 = _EVAL_28;
  assign _EVAL_445 = ~_EVAL_110;
  assign TLMonitor__EVAL_13 = _EVAL_37;
  assign _EVAL_374 = _EVAL_444 | _EVAL_392;
  assign _EVAL_357 = ~_EVAL_336;
  assign TLMonitor__EVAL_14 = _EVAL_135 ? 3'h1 : _EVAL_45;
  assign TLMonitor__EVAL_7 = _EVAL_34;
  assign _EVAL_276 = _EVAL_445 | _EVAL_374;
  assign TLMonitor__EVAL_12 = _EVAL_135 ? _EVAL_183 : _EVAL_44;
  assign TLMonitor__EVAL_10 = _EVAL_21;
  assign _EVAL_467 = _EVAL_276 | _EVAL_42;
  assign TLMonitor__EVAL_5 = _EVAL_35;
  assign TLMonitor__EVAL = _EVAL_135 ? _EVAL_109 : _EVAL_46;
  assign TLMonitor__EVAL_11 = _EVAL_51;
  assign TLMonitor__EVAL_2 = _EVAL_2 & _EVAL_330;
  assign _EVAL_177 = ~_EVAL_467;
  assign TLMonitor__EVAL_6 = _EVAL_39;
  assign _EVAL_231 = ~_EVAL_392;
  assign _EVAL_85 = _EVAL_82 | _EVAL_231;
  assign TLMonitor__EVAL_18 = _EVAL_20;
  assign _EVAL_82 = ~_EVAL_444;
  assign TLMonitor__EVAL_4 = _EVAL_5;
  assign TLMonitor__EVAL_15 = _EVAL_259 & _EVAL_241;
  assign _EVAL_336 = _EVAL_85 | _EVAL_42;
  always @(posedge _EVAL_34) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_357) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_177) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(3808bb77)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_177) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_357) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(2658285f)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
