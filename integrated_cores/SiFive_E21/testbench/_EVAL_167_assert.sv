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
module _EVAL_167_assert(
  input  [1:0]  _EVAL,
  input  [3:0]  _EVAL_3,
  input         _EVAL_4,
  input         _EVAL_5,
  input  [2:0]  _EVAL_6,
  input  [2:0]  _EVAL_7,
  input  [31:0] _EVAL_9,
  input  [2:0]  _EVAL_10,
  input         _EVAL_11,
  input         _EVAL_12,
  input         _EVAL_16,
  input  [2:0]  _EVAL_22,
  input         _EVAL_29,
  input         _EVAL_38,
  input  [1:0]  _EVAL_43,
  input         _EVAL_49
);
  wire  TLMonitor__EVAL;
  wire  TLMonitor__EVAL_0;
  wire  TLMonitor__EVAL_1;
  wire [2:0] TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire [2:0] TLMonitor__EVAL_4;
  wire [31:0] TLMonitor__EVAL_5;
  wire  TLMonitor__EVAL_6;
  wire [2:0] TLMonitor__EVAL_7;
  wire [2:0] TLMonitor__EVAL_8;
  wire  TLMonitor__EVAL_9;
  wire [3:0] TLMonitor__EVAL_10;
  wire [1:0] TLMonitor__EVAL_11;
  wire [2:0] TLMonitor__EVAL_12;
  wire  TLMonitor__EVAL_13;
  wire [1:0] TLMonitor__EVAL_14;
  wire  _EVAL_48;
  _EVAL_166_assert TLMonitor (
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
  assign TLMonitor__EVAL_2 = _EVAL_22;
  assign TLMonitor__EVAL_9 = _EVAL_16;
  assign TLMonitor__EVAL_3 = _EVAL_29 | _EVAL_12;
  assign TLMonitor__EVAL_12 = _EVAL_7;
  assign TLMonitor__EVAL_5 = _EVAL_9;
  assign TLMonitor__EVAL_8 = _EVAL_10;
  assign TLMonitor__EVAL_11 = _EVAL;
  assign TLMonitor__EVAL_10 = _EVAL_3;
  assign TLMonitor__EVAL = _EVAL_11;
  assign TLMonitor__EVAL_7 = _EVAL_6;
  assign TLMonitor__EVAL_14 = _EVAL_43;
  assign _EVAL_48 = ~_EVAL_11;
  assign TLMonitor__EVAL_6 = _EVAL_4;
  assign TLMonitor__EVAL_0 = _EVAL_49;
  assign TLMonitor__EVAL_1 = _EVAL_5;
  assign TLMonitor__EVAL_4 = {{2'd0}, _EVAL_38};
  assign TLMonitor__EVAL_13 = _EVAL_12;
  always @(posedge _EVAL_4) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_49 & _EVAL_48) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(531ff15)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
