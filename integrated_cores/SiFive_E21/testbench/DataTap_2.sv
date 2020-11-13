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
module DataTap_2(
  output         _10,
  output         _9,
  output         _8,
  output [7:0]   _7,
  output         _6,
  output         _5,
  output [31:0]  _4,
  output [31:0]  _3,
  output [31:0]  _2,
  output [142:0] _1,
  output [15:0]  _0
);
  assign _10 = system.tile.core.csr._EVAL_21;
  assign _9 = system.tile.core.csr._EVAL_2647;
  assign _8 = system.tile.core._EVAL_4830;
  assign _7 = system.tile.core.csr._EVAL_108;
  assign _6 = system.tile.core.csr._EVAL_43;
  assign _5 = system.tile.core.csr._EVAL_2567;
  assign _4 = system.tile.core.csr._EVAL_2870;
  assign _3 = system.tile.core.csr._EVAL_2931;
  assign _2 = system.tile.core.csr._EVAL_1816;
  assign _1 = system.tile.core.csr._EVAL_1563;
  assign _0 = system.tile.core.csr._EVAL_2828;
endmodule
