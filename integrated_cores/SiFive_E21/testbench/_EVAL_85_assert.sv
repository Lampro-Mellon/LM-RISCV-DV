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
module _EVAL_85_assert(
  input         _EVAL_0,
  input         _EVAL_1,
  input  [2:0]  _EVAL_2,
  input  [29:0] _EVAL_6,
  input         _EVAL_9,
  input  [2:0]  _EVAL_12,
  input  [3:0]  _EVAL_16,
  input         _EVAL_20,
  input  [1:0]  _EVAL_21,
  input  [2:0]  _EVAL_23,
  input         _EVAL_29,
  input         _EVAL_48,
  input         _EVAL_55,
  input         _EVAL_65,
  input         _EVAL_93,
  input         _EVAL_106,
  input         _EVAL_134,
  input  [2:0]  Queue__EVAL_5,
  input         Queue__EVAL_11,
  input  [2:0]  Queue__EVAL_8,
  input         Queue__EVAL_6,
  input  [1:0]  Queue__EVAL_3,
  input  [1:0]  Queue__EVAL_17,
  input         Queue__EVAL_0,
  input         Queue__EVAL_10,
  input         Queue__EVAL
);
  wire  _EVAL_52;
  wire  _EVAL_76;
  wire  _EVAL_80;
  wire  _EVAL_83;
  wire  _EVAL_102;
  wire  _EVAL_111;
  wire  _EVAL_115;
  wire  _EVAL_122;
  wire  _EVAL_123;
  wire  TLMonitor__EVAL;
  wire [29:0] TLMonitor__EVAL_0;
  wire [3:0] TLMonitor__EVAL_1;
  wire [2:0] TLMonitor__EVAL_2;
  wire [2:0] TLMonitor__EVAL_3;
  wire [2:0] TLMonitor__EVAL_4;
  wire  TLMonitor__EVAL_5;
  wire [2:0] TLMonitor__EVAL_6;
  wire  TLMonitor__EVAL_7;
  wire [1:0] TLMonitor__EVAL_8;
  wire [2:0] TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire  TLMonitor__EVAL_11;
  wire [1:0] TLMonitor__EVAL_12;
  wire  TLMonitor__EVAL_13;
  wire [1:0] TLMonitor__EVAL_14;
  wire  TLMonitor__EVAL_15;
  wire  TLMonitor__EVAL_16;
  wire  TLMonitor__EVAL_17;
  wire  TLMonitor__EVAL_18;
  wire  _EVAL_135;
  _EVAL_83_assert TLMonitor (
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
  assign _EVAL_122 = _EVAL_111 | _EVAL_29;
  assign TLMonitor__EVAL_12 = _EVAL_21;
  assign TLMonitor__EVAL_1 = _EVAL_16;
  assign TLMonitor__EVAL = _EVAL_1;
  assign TLMonitor__EVAL_9 = _EVAL_23;
  assign TLMonitor__EVAL_3 = Queue__EVAL_5;
  assign TLMonitor__EVAL_5 = Queue__EVAL_11;
  assign TLMonitor__EVAL_6 = Queue__EVAL_8;
  assign TLMonitor__EVAL_10 = _EVAL_20;
  assign TLMonitor__EVAL_17 = Queue__EVAL_6;
  assign TLMonitor__EVAL_4 = _EVAL_12;
  assign TLMonitor__EVAL_0 = _EVAL_6;
  assign _EVAL_52 = _EVAL_83 | _EVAL_115;
  assign _EVAL_76 = _EVAL_106 & _EVAL_65;
  assign _EVAL_102 = _EVAL_52 | _EVAL_29;
  assign _EVAL_80 = ~_EVAL_122;
  assign TLMonitor__EVAL_11 = _EVAL_55 ? 1'h0 : _EVAL_48;
  assign _EVAL_111 = _EVAL_123 | _EVAL_93;
  assign TLMonitor__EVAL_16 = _EVAL_0;
  assign _EVAL_135 = ~_EVAL_102;
  assign TLMonitor__EVAL_14 = Queue__EVAL_3;
  assign TLMonitor__EVAL_8 = Queue__EVAL_17;
  assign TLMonitor__EVAL_15 = _EVAL_9;
  assign _EVAL_123 = _EVAL_134 | _EVAL_65;
  assign TLMonitor__EVAL_2 = _EVAL_2;
  assign TLMonitor__EVAL_18 = Queue__EVAL_0;
  assign _EVAL_83 = ~_EVAL_76;
  assign TLMonitor__EVAL_7 = Queue__EVAL_10;
  assign TLMonitor__EVAL_13 = _EVAL_29;
  assign _EVAL_115 = Queue__EVAL;
  always @(posedge _EVAL_9) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_135) begin
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
        if (_EVAL_80) begin
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
        if (_EVAL_80) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(eaaf6404)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_135) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(e6e1787a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
