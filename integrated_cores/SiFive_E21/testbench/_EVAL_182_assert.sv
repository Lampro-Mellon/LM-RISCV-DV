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
module _EVAL_182_assert(
  input   _EVAL_1,
  input   _EVAL_3,
  input   _EVAL_6,
  input   _EVAL_7,
  input   _EVAL_8
);
  wire  _EVAL_13;
  wire  _EVAL_26;
  wire  _EVAL_30;
  wire  _EVAL_38;
  wire  _EVAL_48;
  wire  _EVAL_50;
  wire  _EVAL_51;
  wire  _EVAL_79;
  wire  _EVAL_81;
  wire  _EVAL_94;
  wire  _EVAL_96;
  wire  _EVAL_105;
  assign _EVAL_30 = _EVAL_48 & _EVAL_13;
  assign _EVAL_50 = ~_EVAL_94;
  assign _EVAL_26 = _EVAL_8 & _EVAL_3;
  assign _EVAL_105 = ~_EVAL_79;
  assign _EVAL_96 = _EVAL_6 & _EVAL_3;
  assign _EVAL_51 = ~_EVAL_38;
  assign _EVAL_48 = _EVAL_50 & _EVAL_81;
  assign _EVAL_94 = _EVAL_6 & _EVAL_8;
  assign _EVAL_13 = ~_EVAL_26;
  assign _EVAL_79 = _EVAL_30 | _EVAL_38;
  assign _EVAL_81 = ~_EVAL_96;
  assign _EVAL_38 = _EVAL_1;
  always @(posedge _EVAL_7) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_105) begin
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
        if (_EVAL_6 & _EVAL_51) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(8c4e463e)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_105) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(80e19e64)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
