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
module _EVAL_145_assert(
  input   _EVAL_3,
  input   _EVAL_13,
  input   _EVAL_14,
  input   _EVAL_22,
  input   AsyncQueueSource__EVAL_12,
  input   AsyncQueueSink__EVAL_12
);
  wire  _EVAL_29;
  wire  _EVAL_30;
  wire  _EVAL_31;
  wire  _EVAL_32;
  wire  _EVAL_33;
  wire  _EVAL_34;
  wire  _EVAL_35;
  wire  _EVAL_36;
  wire  _EVAL_37;
  wire  _EVAL_38;
  wire  _EVAL_39;
  wire  _EVAL_40;
  wire  _EVAL_41;
  wire  _EVAL_42;
  wire  _EVAL_43;
  assign _EVAL_38 = ~_EVAL_14;
  assign _EVAL_30 = AsyncQueueSource__EVAL_12;
  assign _EVAL_42 = _EVAL_40 & _EVAL_32;
  assign _EVAL_43 = ~_EVAL_3;
  assign _EVAL_35 = _EVAL_29 & _EVAL_13;
  assign _EVAL_32 = ~_EVAL_13;
  assign _EVAL_39 = _EVAL_29 & _EVAL_32;
  assign _EVAL_29 = ~_EVAL_40;
  assign _EVAL_40 = AsyncQueueSink__EVAL_12;
  assign _EVAL_31 = ~_EVAL_30;
  assign _EVAL_36 = _EVAL_14 & _EVAL_31;
  assign _EVAL_33 = _EVAL_40 & _EVAL_13;
  assign _EVAL_37 = _EVAL_38 & _EVAL_31;
  assign _EVAL_41 = _EVAL_38 & _EVAL_30;
  assign _EVAL_34 = _EVAL_14 & _EVAL_30;
  always @(posedge _EVAL_22) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_41 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c2d3437a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_39 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(7bbd6c5c)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_42 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c10763ae)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_33 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(9df5ae29)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_37 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(6d5ff38c)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_35 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(3ad1962e)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_34 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(da55e811)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_36 & _EVAL_43) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c1b5d73d)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
