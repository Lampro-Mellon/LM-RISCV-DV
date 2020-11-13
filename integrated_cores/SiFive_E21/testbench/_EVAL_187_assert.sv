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
module _EVAL_187_assert(
  input         _EVAL_0,
  input         _EVAL_2,
  input  [3:0]  _EVAL_5,
  input  [15:0] _EVAL_6,
  input  [10:0] _EVAL_13,
  input         _EVAL_21,
  input         _EVAL_30,
  input         _EVAL_31,
  input  [1:0]  _EVAL_50,
  input         _EVAL_67,
  input         _EVAL_75,
  input         _EVAL_77,
  input         _EVAL_91,
  input         _EVAL_95,
  input         dmiAccessChain__EVAL_4,
  input         dmiAccessChain__EVAL_6
);
  wire  _EVAL_17;
  wire  _EVAL_19;
  wire  _EVAL_20;
  wire  _EVAL_22;
  wire  _EVAL_24;
  wire  _EVAL_36;
  wire  _EVAL_38;
  wire [30:0] _EVAL_39;
  wire  _EVAL_46;
  wire [1:0] _EVAL_51;
  wire  _EVAL_52;
  wire  _EVAL_61;
  wire  _EVAL_62;
  wire [30:0] _EVAL_63;
  wire  _EVAL_64;
  wire  _EVAL_65;
  wire  _EVAL_66;
  wire [30:0] _EVAL_69;
  wire [12:0] _EVAL_73;
  wire [31:0] _EVAL_76;
  wire  _EVAL_78;
  wire  _EVAL_79;
  wire [11:0] _EVAL_80;
  wire  _EVAL_81;
  wire  _EVAL_85;
  wire  _EVAL_86;
  wire  _EVAL_87;
  wire  _EVAL_90;
  wire  _EVAL_92;
  wire  _EVAL_97;
  wire  _EVAL_98;
  wire [31:0] _GEN_0;
  assign _EVAL_90 = _EVAL_77 ? 1'h0 : _EVAL_61;
  assign _EVAL_85 = ~_EVAL_19;
  assign _EVAL_98 = _EVAL_50 == 2'h1;
  assign _GEN_0 = _EVAL_76 % 32'h2;
  assign _EVAL_51 = _GEN_0[1:0];
  assign _EVAL_20 = ~_EVAL_81;
  assign _EVAL_63 = {{19'd0}, _EVAL_80};
  assign _EVAL_64 = _EVAL_17 & _EVAL_31;
  assign _EVAL_66 = _EVAL_69 != 31'h7f;
  assign _EVAL_78 = _EVAL_24 & _EVAL_75;
  assign _EVAL_39 = _EVAL_76[31:1];
  assign _EVAL_97 = ~_EVAL_91;
  assign _EVAL_36 = ~_EVAL_87;
  assign _EVAL_79 = ~_EVAL_78;
  assign _EVAL_69 = _EVAL_39 & _EVAL_63;
  assign _EVAL_86 = ~_EVAL_67;
  assign _EVAL_52 = ~_EVAL_92;
  assign _EVAL_81 = _EVAL_0;
  assign _EVAL_19 = _EVAL_66 | _EVAL_81;
  assign _EVAL_38 = _EVAL_65 & _EVAL_95;
  assign _EVAL_46 = _EVAL_51 == 2'h1;
  assign _EVAL_65 = _EVAL_98 & dmiAccessChain__EVAL_4;
  assign _EVAL_62 = _EVAL_65 & _EVAL_31;
  assign _EVAL_22 = _EVAL_17 & _EVAL_95;
  assign _EVAL_73 = 12'h800 - 12'h1;
  assign _EVAL_61 = _EVAL_30 ? 1'h0 : 1'h1;
  assign _EVAL_80 = _EVAL_73[11:0];
  assign _EVAL_17 = _EVAL_21 & dmiAccessChain__EVAL_4;
  assign _EVAL_76 = {_EVAL_5,_EVAL_6,_EVAL_13,1'h1};
  assign _EVAL_92 = _EVAL_46 | _EVAL_81;
  assign _EVAL_87 = _EVAL_79 | _EVAL_81;
  assign _EVAL_24 = dmiAccessChain__EVAL_6 & _EVAL_90;
  always @(posedge _EVAL_2) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_85) begin
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
        if (_EVAL_22 & _EVAL_20) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(bdb1ce1a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_64 & _EVAL_20) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(690966e)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_86 & _EVAL_20) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(bd537bc7)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_52) begin
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
        if (_EVAL_97 & _EVAL_20) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(f563de19)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_52) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(dac4410d)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_85) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(d933ef54)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_38 & _EVAL_20) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(2829c64a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_36) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(e481a8c4)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_36) begin
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
        if (_EVAL_62 & _EVAL_20) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c401cee2)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
