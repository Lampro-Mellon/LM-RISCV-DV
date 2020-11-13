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
module _EVAL_186_assert(
  input   _EVAL_0,
  input   _EVAL_1,
  input   _EVAL_3,
  input   _EVAL_4,
  input   _EVAL_5
);
  wire  _EVAL_6;
  wire  _EVAL_7;
  wire  _EVAL_8;
  wire  _EVAL_9;
  wire  _EVAL_11;
  wire  _EVAL_12;
  wire  _EVAL_13;
  wire  _EVAL_14;
  wire  _EVAL_15;
  wire  _EVAL_16;
  wire  _EVAL_17;
  wire  _EVAL_19;
  assign _EVAL_17 = _EVAL_6 & _EVAL_19;
  assign _EVAL_16 = _EVAL_0 & _EVAL_5;
  assign _EVAL_8 = ~_EVAL_14;
  assign _EVAL_6 = ~_EVAL_7;
  assign _EVAL_9 = _EVAL_1 & _EVAL_5;
  assign _EVAL_15 = ~_EVAL_12;
  assign _EVAL_14 = _EVAL_13 | _EVAL_12;
  assign _EVAL_7 = _EVAL_1 & _EVAL_0;
  assign _EVAL_12 = _EVAL_4;
  assign _EVAL_13 = _EVAL_17 & _EVAL_11;
  assign _EVAL_19 = ~_EVAL_9;
  assign _EVAL_11 = ~_EVAL_16;
  always @(posedge _EVAL_3) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_8) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c0807324)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_8) begin
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
        if (_EVAL_1 & _EVAL_15) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(a12230c1)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
