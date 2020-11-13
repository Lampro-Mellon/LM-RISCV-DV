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
/* verilator lint_off UNOPTFLAT */

// Integrated clock gating cell
// Code from "Low Power Design Methodologies and Flows"
module EICG(
           // Outputs
           gclk,
           // Inputs
           en, test_en, clk
           );
   input en;
   input test_en;
   input clk;
   output gclk;

   reg    en_out /*verilator clock_enable*/;

   always @(*) begin
      if (!clk) begin
         en_out = en || test_en;
      end
   end
   assign gclk = en_out && clk;
endmodule

module EICG_wrapper(
           // Outputs
           out,
           // Inputs
           en, test_en, in
           );
   input en;
   input test_en;
   input in;
   output out;

   EICG U_EICG( .gclk(out),
                .en(en),
                .test_en(test_en),
                .clk(in) );
endmodule
