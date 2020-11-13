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
module _EVAL_118_assert(
  input  [2:0]  _EVAL,
  input         _EVAL_3,
  input  [8:0]  _EVAL_12,
  input         _EVAL_13,
  input         _EVAL_21,
  input  [3:0]  _EVAL_24,
  input         _EVAL_31,
  input         _EVAL_46,
  input         _EVAL_47,
  input         _EVAL_56,
  input         _EVAL_58,
  input         _EVAL_77,
  input  [42:0] _EVAL_100,
  input         _EVAL_101,
  input         _EVAL_138
);
  wire  _EVAL_45;
  wire  _EVAL_49;
  wire  _EVAL_53;
  wire  _EVAL_74;
  wire  _EVAL_76;
  wire [1:0] TLMonitor__EVAL;
  wire [2:0] TLMonitor__EVAL_0;
  wire [1:0] TLMonitor__EVAL_1;
  wire  TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire  TLMonitor__EVAL_4;
  wire [2:0] TLMonitor__EVAL_5;
  wire  TLMonitor__EVAL_6;
  wire  TLMonitor__EVAL_7;
  wire  TLMonitor__EVAL_8;
  wire  TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire  TLMonitor__EVAL_11;
  wire [8:0] TLMonitor__EVAL_12;
  wire [3:0] TLMonitor__EVAL_13;
  wire  _EVAL_88;
  wire  _EVAL_102;
  wire  _EVAL_118;
  wire  _EVAL_120;
  wire  _EVAL_124;
  wire  _EVAL_132;
  _EVAL_117_assert TLMonitor (
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
    ._EVAL_13(TLMonitor__EVAL_13)
  );
  assign TLMonitor__EVAL_1 = _EVAL_100[39:38];
  assign TLMonitor__EVAL_13 = _EVAL_24;
  assign _EVAL_124 = ~_EVAL_46;
  assign TLMonitor__EVAL_5 = _EVAL_100[42:40];
  assign TLMonitor__EVAL_0 = _EVAL;
  assign _EVAL_102 = _EVAL_88 | _EVAL_74;
  assign _EVAL_49 = ~_EVAL_56;
  assign TLMonitor__EVAL_7 = _EVAL_100[0];
  assign _EVAL_132 = _EVAL_101 | _EVAL_46;
  assign TLMonitor__EVAL_8 = _EVAL_31;
  assign _EVAL_120 = _EVAL_49 | _EVAL_132;
  assign TLMonitor__EVAL_6 = _EVAL_77 ? _EVAL_56 : _EVAL_58;
  assign TLMonitor__EVAL_12 = _EVAL_12;
  assign TLMonitor__EVAL_11 = _EVAL_100[33];
  assign _EVAL_74 = _EVAL_13;
  assign TLMonitor__EVAL_2 = _EVAL_13;
  assign _EVAL_76 = ~_EVAL_102;
  assign TLMonitor__EVAL_10 = _EVAL_47 | _EVAL_138;
  assign TLMonitor__EVAL_3 = _EVAL_100[34];
  assign _EVAL_88 = _EVAL_118 | _EVAL_124;
  assign _EVAL_53 = _EVAL_120 | _EVAL_74;
  assign _EVAL_45 = ~_EVAL_53;
  assign _EVAL_118 = ~_EVAL_101;
  assign TLMonitor__EVAL = _EVAL_100[37:36];
  assign TLMonitor__EVAL_9 = _EVAL_21;
  assign TLMonitor__EVAL_4 = _EVAL_3;
  always @(posedge _EVAL_21) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_76) begin
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
        if (_EVAL_45) begin
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
        if (_EVAL_76) begin
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
        if (_EVAL_45) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
