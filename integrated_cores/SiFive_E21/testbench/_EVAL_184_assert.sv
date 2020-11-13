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
module _EVAL_184_assert(
  input   _EVAL,
  input   _EVAL_0,
  input   _EVAL_1,
  input   _EVAL_3,
  input   _EVAL_6
);
  wire  _EVAL_10;
  wire  _EVAL_11;
  wire  _EVAL_14;
  wire  _EVAL_18;
  wire  _EVAL_19;
  wire  _EVAL_22;
  wire  _EVAL_24;
  wire  _EVAL_25;
  wire  _EVAL_28;
  wire  _EVAL_31;
  wire  _EVAL_32;
  wire  _EVAL_33;
  assign _EVAL_33 = _EVAL_1 & _EVAL_0;
  assign _EVAL_32 = _EVAL_24 & _EVAL_28;
  assign _EVAL_28 = ~_EVAL_33;
  assign _EVAL_14 = ~_EVAL_22;
  assign _EVAL_31 = _EVAL_6;
  assign _EVAL_10 = ~_EVAL_31;
  assign _EVAL_18 = _EVAL_3 & _EVAL_0;
  assign _EVAL_24 = _EVAL_14 & _EVAL_11;
  assign _EVAL_11 = ~_EVAL_18;
  assign _EVAL_19 = ~_EVAL_25;
  assign _EVAL_22 = _EVAL_3 & _EVAL_1;
  assign _EVAL_25 = _EVAL_32 | _EVAL_31;
  always @(posedge _EVAL) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_3 & _EVAL_10) begin
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
        if (_EVAL_19) begin
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
        if (_EVAL_3 & _EVAL_10) begin
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
        if (_EVAL_19) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(66ca24a7)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
