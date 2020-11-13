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
module testharness(
  input  [10:0] RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [7:0]  RW0_wdata_0,
  input  [7:0]  RW0_wdata_1,
  input  [7:0]  RW0_wdata_2,
  input  [7:0]  RW0_wdata_3,
  output [7:0]  RW0_rdata_0,
  output [7:0]  RW0_rdata_1,
  output [7:0]  RW0_rdata_2,
  output [7:0]  RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [10:0] testharness_ext_RW0_addr;
  wire  testharness_ext_RW0_en;
  wire  testharness_ext_RW0_clk;
  wire  testharness_ext_RW0_wmode;
  wire [31:0] testharness_ext_RW0_wdata;
  wire [31:0] testharness_ext_RW0_rdata;
  wire [3:0] testharness_ext_RW0_wmask;
  wire [15:0] _GEN_0;
  wire [15:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  testharness_ext testharness_ext (
    .RW0_addr(testharness_ext_RW0_addr),
    .RW0_en(testharness_ext_RW0_en),
    .RW0_clk(testharness_ext_RW0_clk),
    .RW0_wmode(testharness_ext_RW0_wmode),
    .RW0_wdata(testharness_ext_RW0_wdata),
    .RW0_rdata(testharness_ext_RW0_rdata),
    .RW0_wmask(testharness_ext_RW0_wmask)
  );
  assign testharness_ext_RW0_clk = RW0_clk;
  assign testharness_ext_RW0_en = RW0_en;
  assign testharness_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = testharness_ext_RW0_rdata[7:0];
  assign RW0_rdata_1 = testharness_ext_RW0_rdata[15:8];
  assign RW0_rdata_2 = testharness_ext_RW0_rdata[23:16];
  assign RW0_rdata_3 = testharness_ext_RW0_rdata[31:24];
  assign testharness_ext_RW0_wmode = RW0_wmode;
  assign _GEN_0 = {RW0_wdata_3,RW0_wdata_2};
  assign _GEN_1 = {RW0_wdata_1,RW0_wdata_0};
  assign testharness_ext_RW0_wdata = {_GEN_0,_GEN_1};
  assign _GEN_2 = {RW0_wmask_3,RW0_wmask_2};
  assign _GEN_3 = {RW0_wmask_1,RW0_wmask_0};
  assign testharness_ext_RW0_wmask = {_GEN_2,_GEN_3};

endmodule
