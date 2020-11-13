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
module DataTap_9(
  output        _0_clock,
  output        _0_reset,
  output        _0_excpt,
  output [2:0]  _0_priv_mode,
  output [31:0] _0_hartid,
  output [31:0] _0_timer,
  output        _0_valid,
  output [31:0] _0_pc,
  output [4:0]  _0_wrdst,
  output [31:0] _0_wrdata,
  output        _0_wrenx,
  output        _0_wrenf,
  output [4:0]  _0_rd0src,
  output [31:0] _0_rd0val,
  output [4:0]  _0_rd1src,
  output [31:0] _0_rd1val,
  output [31:0] _0_inst
);
  assign _0_clock = system.tile.core._EVAL_14969;
  assign _0_reset = system.tile.core._EVAL_16804;
  assign _0_excpt = system.tile.core._EVAL_221;
  assign _0_priv_mode = system.tile.core._EVAL_12424;
  assign _0_hartid = system.tile.core._EVAL_13006;
  assign _0_timer = system.tile.core._EVAL_7342;
  assign _0_valid = system.tile.core._EVAL_17589;
  assign _0_pc = system.tile.core._EVAL_12058;
  assign _0_wrdst = system.tile.core._EVAL_5579;
  assign _0_wrdata = system.tile.core._EVAL_17736;
  assign _0_wrenx = system.tile.core._EVAL_2447;
  assign _0_wrenf = system.tile.core._EVAL_5906;
  assign _0_rd0src = system.tile.core._EVAL_12112;
  assign _0_rd0val = system.tile.core._EVAL_4897;
  assign _0_rd1src = system.tile.core._EVAL_11561;
  assign _0_rd1val = system.tile.core._EVAL_16593;
  assign _0_inst = system.tile.core._EVAL_11129;
endmodule
