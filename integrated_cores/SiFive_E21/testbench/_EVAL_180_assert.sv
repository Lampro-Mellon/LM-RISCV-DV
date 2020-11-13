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
module _EVAL_180_assert(
  input   _EVAL,
  input   _EVAL_0,
  input   _EVAL_4,
  input   _EVAL_7,
  input   _EVAL_8
);
  wire  _EVAL_14;
  wire  _EVAL_31;
  wire  _EVAL_58;
  wire  _EVAL_66;
  wire  _EVAL_88;
  wire  _EVAL_89;
  wire  _EVAL_91;
  wire  _EVAL_95;
  wire  _EVAL_101;
  wire  _EVAL_116;
  wire  _EVAL_130;
  wire  _EVAL_148;
  assign _EVAL_31 = ~_EVAL_101;
  assign _EVAL_91 = _EVAL_148 | _EVAL_14;
  assign _EVAL_101 = _EVAL_8 & _EVAL_7;
  assign _EVAL_95 = ~_EVAL_91;
  assign _EVAL_89 = _EVAL_4 & _EVAL_7;
  assign _EVAL_116 = ~_EVAL_14;
  assign _EVAL_14 = _EVAL_0;
  assign _EVAL_88 = ~_EVAL_89;
  assign _EVAL_130 = _EVAL_58 & _EVAL_31;
  assign _EVAL_66 = _EVAL_8 & _EVAL_4;
  assign _EVAL_58 = ~_EVAL_66;
  assign _EVAL_148 = _EVAL_130 & _EVAL_88;
  always @(posedge _EVAL) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_8 & _EVAL_116) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(b78a2954)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_95) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(66ca24a7)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_8 & _EVAL_116) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(1646262a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_95) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
