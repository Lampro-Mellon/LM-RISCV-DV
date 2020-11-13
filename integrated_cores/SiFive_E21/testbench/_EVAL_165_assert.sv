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
module _EVAL_165_assert(
  input   _EVAL,
  input   _EVAL_21,
  input   _EVAL_32,
  input   _EVAL_35,
  input   _EVAL_51,
  input   _EVAL_52,
  input   _EVAL_77,
  input   _EVAL_78,
  input   _EVAL_90,
  input   _EVAL_115,
  input   core__EVAL_28,
  input   buffer__EVAL_17,
  input   buffer__EVAL_86,
  input   widget_1__EVAL_5,
  input   widget__EVAL_31
);
  wire  _EVAL_69;
  wire  _EVAL_71;
  wire  _EVAL_72;
  wire  _EVAL_73;
  wire  _EVAL_74;
  wire  _EVAL_75;
  wire  _EVAL_76;
  wire  _EVAL_79;
  wire  _EVAL_84;
  wire  _EVAL_86;
  wire  _EVAL_87;
  wire  _EVAL_88;
  wire  _EVAL_89;
  wire  _EVAL_91;
  wire  _EVAL_92;
  wire  _EVAL_93;
  wire  _EVAL_94;
  wire  _EVAL_96;
  wire  _EVAL_97;
  wire  _EVAL_100;
  wire  _EVAL_103;
  reg  _EVAL_104;
  reg [31:0] _RAND_0;
  wire  _EVAL_105;
  wire  _EVAL_106;
  wire  _EVAL_108;
  wire  _EVAL_110;
  wire  _EVAL_111;
  wire  _EVAL_112;
  wire  _EVAL_113;
  wire  _EVAL_114;
  wire  _EVAL_117;
  assign _EVAL_94 = ~_EVAL_72;
  assign _EVAL_114 = _EVAL_108 & _EVAL_32;
  assign _EVAL_75 = ~_EVAL_32;
  assign _EVAL_100 = ~_EVAL_112;
  assign _EVAL_92 = ~_EVAL_111;
  assign _EVAL_96 = _EVAL_108 & _EVAL_75;
  assign _EVAL_86 = core__EVAL_28 & _EVAL_51;
  assign _EVAL_112 = widget_1__EVAL_5;
  assign _EVAL_108 = ~_EVAL_115;
  assign _EVAL_105 = core__EVAL_28 & _EVAL_77;
  assign _EVAL_97 = ~_EVAL_87;
  assign _EVAL_87 = widget__EVAL_31;
  assign _EVAL_71 = ~_EVAL_84;
  assign _EVAL_69 = ~_EVAL_113;
  assign _EVAL_93 = core__EVAL_28 & _EVAL_52;
  assign _EVAL_76 = core__EVAL_28 & _EVAL_35;
  assign _EVAL_74 = ~_EVAL_103;
  assign _EVAL_72 = _EVAL_100 | _EVAL_32;
  assign _EVAL_111 = _EVAL_104 & _EVAL_78;
  assign _EVAL_91 = ~_EVAL_117;
  assign _EVAL_110 = _EVAL_97 | _EVAL_32;
  assign _EVAL_89 = _EVAL_115 & _EVAL_32;
  assign _EVAL_88 = _EVAL_71 | _EVAL_32;
  assign _EVAL_103 = buffer__EVAL_86;
  assign _EVAL_73 = core__EVAL_28 & _EVAL;
  assign _EVAL_84 = buffer__EVAL_17;
  assign _EVAL_79 = ~_EVAL_88;
  assign _EVAL_113 = _EVAL_74 | _EVAL_32;
  assign _EVAL_106 = ~_EVAL_110;
  assign _EVAL_117 = _EVAL_92 | _EVAL_32;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _EVAL_104 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_21) begin
    if (_EVAL_32) begin
      _EVAL_104 <= 1'h0;
    end else begin
      _EVAL_104 <= _EVAL_90;
    end
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_108 & _EVAL_79) begin
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
        if (_EVAL_108 & _EVAL_69) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(65ba96c6)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_108 & _EVAL_94) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(15c175b2)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_108 & _EVAL_69) begin
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
        if (_EVAL_86 & _EVAL_75) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(737faeb7)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_114) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(94c0a67b)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_73 & _EVAL_75) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(502e773c)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_108 & _EVAL_106) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_108 & _EVAL_94) begin
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
        if (_EVAL_105 & _EVAL_75) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(f39ceaf8)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_91) begin
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
        if (_EVAL_108 & _EVAL_79) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(e0e08bc4)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_93 & _EVAL_75) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(de184592)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_89) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(611c0d64)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_108) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(4ef9a32c)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_96) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(f131d456)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_91) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c618a607)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_108 & _EVAL_106) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(2a336dbd)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_76 & _EVAL_75) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(df63822)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
