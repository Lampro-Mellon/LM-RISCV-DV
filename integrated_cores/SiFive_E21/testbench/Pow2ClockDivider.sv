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
module Pow2ClockDivider(
  input   clock,
  output  io_clock_out
);
  wire  ClockDivider2_clk_out;
  wire  ClockDivider2_clk_in;
  wire  ClockDivider2_1_clk_out;
  wire  ClockDivider2_1_clk_in;
  ClockDivider2 ClockDivider2 (
    .clk_out(ClockDivider2_clk_out),
    .clk_in(ClockDivider2_clk_in)
  );
  ClockDivider2 ClockDivider2_1 (
    .clk_out(ClockDivider2_1_clk_out),
    .clk_in(ClockDivider2_1_clk_in)
  );
  assign io_clock_out = ClockDivider2_1_clk_out;
  assign ClockDivider2_clk_in = clock;
  assign ClockDivider2_1_clk_in = ClockDivider2_clk_out;

endmodule
