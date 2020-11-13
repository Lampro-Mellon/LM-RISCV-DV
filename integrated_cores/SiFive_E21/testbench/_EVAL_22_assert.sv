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
module _EVAL_22_assert(
  input  [2:0]  _EVAL_1,
  input  [30:0] _EVAL_2,
  input  [3:0]  _EVAL_9,
  input  [2:0]  _EVAL_14,
  input         _EVAL_16,
  input         _EVAL_17,
  input  [2:0]  _EVAL_20,
  input         _EVAL_24,
  input         _EVAL_29,
  input  [2:0]  _EVAL_31,
  input         _EVAL_34,
  input         _EVAL_63,
  input         _EVAL_73,
  input         _EVAL_95,
  input         _EVAL_97,
  input         _EVAL_101,
  input         _EVAL_190,
  input  [1:0]  _EVAL_206,
  input  [2:0]  Queue__EVAL_10,
  input         Queue__EVAL_7,
  input  [1:0]  Queue__EVAL_3,
  input         Queue__EVAL_14,
  input         Queue__EVAL_2,
  input         Queue__EVAL_16,
  input  [2:0]  Queue__EVAL_12,
  input  [2:0]  Queue__EVAL_11,
  input         Queue__EVAL_5
);
  wire  _EVAL_45;
  wire  _EVAL_67;
  wire  _EVAL_85;
  wire  _EVAL_109;
  wire  _EVAL_117;
  wire  _EVAL_132;
  wire  _EVAL_142;
  wire  _EVAL_145;
  wire  _EVAL_147;
  wire  _EVAL_173;
  wire  _EVAL_174;
  wire  _EVAL_181;
  wire  TLMonitor__EVAL;
  wire [2:0] TLMonitor__EVAL_0;
  wire  TLMonitor__EVAL_1;
  wire [2:0] TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire  TLMonitor__EVAL_4;
  wire  TLMonitor__EVAL_5;
  wire [3:0] TLMonitor__EVAL_6;
  wire [30:0] TLMonitor__EVAL_7;
  wire [2:0] TLMonitor__EVAL_8;
  wire  TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire  TLMonitor__EVAL_11;
  wire [2:0] TLMonitor__EVAL_12;
  wire [1:0] TLMonitor__EVAL_13;
  wire [2:0] TLMonitor__EVAL_14;
  wire  TLMonitor__EVAL_15;
  wire [2:0] TLMonitor__EVAL_16;
  wire  TLMonitor__EVAL_17;
  wire [2:0] TLMonitor__EVAL_18;
  wire  _EVAL_197;
  _EVAL_20_assert TLMonitor (
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
  assign _EVAL_174 = _EVAL_142 | _EVAL_29;
  assign TLMonitor__EVAL_2 = Queue__EVAL_10;
  assign _EVAL_147 = ~_EVAL_173;
  assign TLMonitor__EVAL_3 = Queue__EVAL_7;
  assign TLMonitor__EVAL_18 = _EVAL_14;
  assign TLMonitor__EVAL_13 = Queue__EVAL_3;
  assign _EVAL_145 = ~_EVAL_132;
  assign _EVAL_117 = _EVAL_109 | _EVAL_73;
  assign TLMonitor__EVAL_8 = _EVAL_20;
  assign _EVAL_173 = _EVAL_117 | _EVAL_29;
  assign TLMonitor__EVAL_9 = _EVAL_97 ? 1'h0 : _EVAL_101;
  assign TLMonitor__EVAL_15 = Queue__EVAL_14;
  assign _EVAL_181 = ~_EVAL_67;
  assign TLMonitor__EVAL_10 = Queue__EVAL_2;
  assign TLMonitor__EVAL_11 = Queue__EVAL_16;
  assign _EVAL_45 = ~_EVAL_174;
  assign _EVAL_142 = _EVAL_181 | _EVAL_197;
  assign _EVAL_109 = _EVAL_95 | _EVAL_63;
  assign TLMonitor__EVAL_17 = _EVAL_17;
  assign _EVAL_197 = Queue__EVAL_5;
  assign TLMonitor__EVAL_14 = _EVAL_31;
  assign TLMonitor__EVAL_5 = _EVAL_16;
  assign TLMonitor__EVAL = _EVAL_29;
  assign TLMonitor__EVAL_6 = _EVAL_9;
  assign _EVAL_67 = _EVAL_190 & _EVAL_63;
  assign TLMonitor__EVAL_16 = _EVAL_1;
  assign TLMonitor__EVAL_0 = Queue__EVAL_12;
  assign _EVAL_85 = _EVAL_206 <= 2'h2;
  assign TLMonitor__EVAL_7 = _EVAL_2;
  assign _EVAL_132 = _EVAL_85 | _EVAL_29;
  assign TLMonitor__EVAL_4 = _EVAL_24;
  assign TLMonitor__EVAL_1 = _EVAL_34;
  assign TLMonitor__EVAL_12 = Queue__EVAL_11;
  always @(posedge _EVAL_17) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_147) begin
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
        if (_EVAL_45) begin
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
        if (_EVAL_145) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(b743bc08)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_145) begin
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
          $fwrite(32'h80000002,"Obfuscated Simulation Output(e6e1787a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_147) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(eaaf6404)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
