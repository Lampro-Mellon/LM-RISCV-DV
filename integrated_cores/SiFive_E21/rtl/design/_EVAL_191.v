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
module _EVAL_191(
  input  [7:0]  _EVAL,
  output [7:0]  _EVAL_0,
  input         _EVAL_1,
  input         _EVAL_2,
  input         _EVAL_3,
  output [7:0]  _EVAL_4,
  output [7:0]  _EVAL_5,
  input         _EVAL_6,
  input         _EVAL_7,
  output [7:0]  _EVAL_8,
  input  [11:0] _EVAL_9,
  input  [7:0]  _EVAL_10,
  input         _EVAL_11,
  input  [7:0]  _EVAL_12,
  input  [7:0]  _EVAL_13,
  input         _EVAL_14
);
  wire [1:0] _EVAL_15;
  wire [15:0] _EVAL_16;
  wire [15:0] _EVAL_17;
  wire [11:0] syssram0_ext_RW0_addr;
  wire  syssram0_ext_RW0_en;
  wire  syssram0_ext_RW0_clk;
  wire  syssram0_ext_RW0_wmode;
  wire [31:0] syssram0_ext_RW0_wdata;
  wire [31:0] syssram0_ext_RW0_rdata;
  wire [3:0] syssram0_ext_RW0_wmask;
  wire [1:0] _EVAL_18;
  SiFive_syssram0_ext syssram0_ext (
    .RW0_addr(syssram0_ext_RW0_addr),
    .RW0_en(syssram0_ext_RW0_en),
    .RW0_clk(syssram0_ext_RW0_clk),
    .RW0_wmode(syssram0_ext_RW0_wmode),
    .RW0_wdata(syssram0_ext_RW0_wdata),
    .RW0_rdata(syssram0_ext_RW0_rdata),
    .RW0_wmask(syssram0_ext_RW0_wmask)
  );
  assign syssram0_ext_RW0_addr = _EVAL_9;
  assign _EVAL_0 = syssram0_ext_RW0_rdata[15:8];
  assign _EVAL_8 = syssram0_ext_RW0_rdata[7:0];
  assign _EVAL_5 = syssram0_ext_RW0_rdata[31:24];
  assign syssram0_ext_RW0_clk = _EVAL_3;
  assign _EVAL_4 = syssram0_ext_RW0_rdata[23:16];
  assign _EVAL_17 = {_EVAL_12,_EVAL_10};
  assign syssram0_ext_RW0_en = _EVAL_1;
  assign _EVAL_16 = {_EVAL_13,_EVAL};
  assign syssram0_ext_RW0_wmode = _EVAL_2;
  assign syssram0_ext_RW0_wmask = {_EVAL_15,_EVAL_18};
  assign _EVAL_18 = {_EVAL_11,_EVAL_7};
  assign syssram0_ext_RW0_wdata = {_EVAL_16,_EVAL_17};
  assign _EVAL_15 = {_EVAL_6,_EVAL_14};
endmodule
