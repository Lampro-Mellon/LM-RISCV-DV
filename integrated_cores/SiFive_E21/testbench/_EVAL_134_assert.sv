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
module _EVAL_134_assert(
  input  [8:0] _EVAL_0,
  input        _EVAL_6,
  input        _EVAL_7,
  input  [2:0] _EVAL_11,
  input        _EVAL_12,
  input  [3:0] _EVAL_15,
  input        _EVAL_16,
  input        AsyncQueueSink__EVAL_10,
  input        AsyncQueueSink__EVAL_13,
  input  [2:0] AsyncQueueSink__EVAL_11,
  input        AsyncQueueSource__EVAL_2,
  input        AsyncQueueSink__EVAL_15,
  input        AsyncQueueSink__EVAL_3,
  input        AsyncQueueSink__EVAL_14,
  input  [1:0] AsyncQueueSink__EVAL_0,
  input  [1:0] AsyncQueueSink__EVAL_9
);
  wire  _EVAL_29;
  wire  _EVAL_30;
  wire  _EVAL_31;
  wire  _EVAL_32;
  wire  _EVAL_33;
  wire  _EVAL_34;
  wire  _EVAL_35;
  wire  TLMonitor__EVAL;
  wire [8:0] TLMonitor__EVAL_0;
  wire  TLMonitor__EVAL_1;
  wire [1:0] TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire [2:0] TLMonitor__EVAL_4;
  wire  TLMonitor__EVAL_5;
  wire  TLMonitor__EVAL_6;
  wire [1:0] TLMonitor__EVAL_7;
  wire  TLMonitor__EVAL_8;
  wire [2:0] TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire [3:0] TLMonitor__EVAL_11;
  wire  TLMonitor__EVAL_12;
  wire  TLMonitor__EVAL_13;
  wire  TLMonitor__EVAL_14;
  wire  _EVAL_36;
  wire  _EVAL_37;
  wire  _EVAL_38;
  wire  _EVAL_39;
  wire  _EVAL_40;
  wire  _EVAL_41;
  wire  _EVAL_42;
  wire  _EVAL_43;
  wire  _EVAL_44;
  _EVAL_128_assert TLMonitor (
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
    ._EVAL_14(TLMonitor__EVAL_14)
  );
  assign TLMonitor__EVAL_13 = AsyncQueueSink__EVAL_10;
  assign TLMonitor__EVAL = _EVAL_7;
  assign _EVAL_37 = _EVAL_16;
  assign _EVAL_29 = _EVAL_31 & _EVAL_33;
  assign TLMonitor__EVAL_0 = _EVAL_0;
  assign _EVAL_33 = AsyncQueueSource__EVAL_2;
  assign TLMonitor__EVAL_10 = AsyncQueueSink__EVAL_13;
  assign TLMonitor__EVAL_9 = AsyncQueueSink__EVAL_11;
  assign _EVAL_42 = _EVAL_6 & _EVAL_41;
  assign TLMonitor__EVAL_1 = AsyncQueueSource__EVAL_2;
  assign TLMonitor__EVAL_4 = _EVAL_11;
  assign _EVAL_34 = AsyncQueueSink__EVAL_3;
  assign _EVAL_32 = _EVAL_31 & _EVAL_41;
  assign TLMonitor__EVAL_8 = AsyncQueueSink__EVAL_15;
  assign _EVAL_31 = ~_EVAL_6;
  assign TLMonitor__EVAL_5 = _EVAL_16;
  assign _EVAL_39 = _EVAL_34 & _EVAL_12;
  assign TLMonitor__EVAL_14 = _EVAL_6;
  assign _EVAL_44 = _EVAL_34 & _EVAL_35;
  assign TLMonitor__EVAL_6 = AsyncQueueSink__EVAL_3;
  assign _EVAL_43 = ~_EVAL_34;
  assign _EVAL_41 = ~_EVAL_33;
  assign _EVAL_40 = _EVAL_43 & _EVAL_35;
  assign TLMonitor__EVAL_3 = AsyncQueueSink__EVAL_14;
  assign TLMonitor__EVAL_12 = _EVAL_12;
  assign TLMonitor__EVAL_2 = AsyncQueueSink__EVAL_0;
  assign TLMonitor__EVAL_11 = _EVAL_15;
  assign TLMonitor__EVAL_7 = AsyncQueueSink__EVAL_9;
  assign _EVAL_38 = _EVAL_6 & _EVAL_33;
  assign _EVAL_35 = ~_EVAL_12;
  assign _EVAL_30 = _EVAL_43 & _EVAL_12;
  assign _EVAL_36 = ~_EVAL_37;
  always @(posedge _EVAL_7) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_39 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(3668e84d)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_44 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(67297c84)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_29 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(3c201f04)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_40 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(ff48fd53)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_30 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(fe1f9bd5)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_32 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(1d53c700)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_38 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(5e066e39)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_42 & _EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(1b17907d)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
