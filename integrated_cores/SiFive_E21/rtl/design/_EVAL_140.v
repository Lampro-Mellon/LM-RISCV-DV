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
module _EVAL_140(
  input   _EVAL,
  input   _EVAL_0,
  output  _EVAL_1,
  input   _EVAL_2
);
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL;
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_0;
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_1;
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_2;
  _EVAL_139 AsyncResetSynchronizerPrimitiveShiftReg_d3_i0 (
    ._EVAL(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL),
    ._EVAL_0(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_0),
    ._EVAL_1(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_1),
    ._EVAL_2(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_2)
  );
  assign _EVAL_1 = AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL;
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_1 = _EVAL_0;
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_0 = _EVAL_2;
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0__EVAL_2 = _EVAL;
endmodule
