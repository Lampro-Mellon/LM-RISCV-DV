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
module SiFive_DebugCompatibility_ResetSynchronizerShiftReg_w1_d3_i0_1(
  input   clock,
  input   reset,
  input   io_d,
  output  io_q
);
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock;
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset;
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d;
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q;
  SiFive_DebugCompatibility_InferredResetSynchronizerPrimitiveShiftReg_d3_i0_1 InferredResetSynchronizerPrimitiveShiftReg_d3_i0 (
    .clock(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock),
    .reset(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset),
    .io_d(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d),
    .io_q(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q)
  );
  assign io_q = InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q;
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock = clock;
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset = reset;
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d = io_d;

endmodule
