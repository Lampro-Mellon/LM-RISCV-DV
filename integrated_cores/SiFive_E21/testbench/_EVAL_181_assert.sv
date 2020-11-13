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
module _EVAL_181_assert(
  input   _EVAL_1,
  input   _EVAL_2,
  input   _EVAL_3,
  input   _EVAL_7,
  input   _EVAL_11
);
  wire  _EVAL_29;
  wire  _EVAL_51;
  wire  _EVAL_83;
  wire  _EVAL_89;
  wire  _EVAL_94;
  wire  _EVAL_113;
  wire  _EVAL_118;
  wire  _EVAL_170;
  wire  _EVAL_173;
  wire  _EVAL_178;
  wire  _EVAL_186;
  wire  _EVAL_194;
  assign _EVAL_186 = ~_EVAL_194;
  assign _EVAL_89 = _EVAL_94 & _EVAL_113;
  assign _EVAL_173 = ~_EVAL_170;
  assign _EVAL_51 = _EVAL_11 & _EVAL_7;
  assign _EVAL_113 = ~_EVAL_83;
  assign _EVAL_170 = _EVAL_1;
  assign _EVAL_83 = _EVAL_2 & _EVAL_7;
  assign _EVAL_178 = ~_EVAL_29;
  assign _EVAL_194 = _EVAL_11 & _EVAL_2;
  assign _EVAL_94 = _EVAL_186 & _EVAL_118;
  assign _EVAL_118 = ~_EVAL_51;
  assign _EVAL_29 = _EVAL_89 | _EVAL_170;
  always @(posedge _EVAL_3) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_178) begin
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
        if (_EVAL_11 & _EVAL_173) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(1646262a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_11 & _EVAL_173) begin
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
        if (_EVAL_178) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(66ca24a7)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
