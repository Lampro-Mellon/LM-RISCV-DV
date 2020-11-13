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
module _EVAL_151_assert(
  input        _EVAL_6,
  input        _EVAL_12,
  input        _EVAL_19,
  input        _EVAL_23,
  input        _EVAL_67,
  input  [2:0] _EVAL_75,
  input  [2:0] _EVAL_87,
  input        _EVAL_175,
  input  [2:0] _EVAL_190,
  input        _EVAL_220,
  input        _EVAL_248
);
  wire  _EVAL_29;
  wire  _EVAL_34;
  wire  _EVAL_37;
  wire  _EVAL_39;
  wire  _EVAL_45;
  wire  _EVAL_56;
  wire  _EVAL_63;
  wire  _EVAL_68;
  wire  _EVAL_73;
  wire  _EVAL_76;
  wire  _EVAL_82;
  wire  _EVAL_88;
  wire  _EVAL_95;
  wire  _EVAL_96;
  wire  _EVAL_102;
  wire  _EVAL_104;
  wire  _EVAL_109;
  wire  _EVAL_117;
  wire  _EVAL_126;
  wire  _EVAL_131;
  wire  _EVAL_136;
  wire [3:0] _EVAL_137;
  wire  _EVAL_139;
  wire  _EVAL_157;
  wire  _EVAL_159;
  wire  _EVAL_177;
  wire  _EVAL_182;
  wire  _EVAL_195;
  wire  _EVAL_208;
  wire  _EVAL_229;
  wire  _EVAL_235;
  wire  _EVAL_249;
  assign _EVAL_82 = _EVAL_190 == 3'h2;
  assign _EVAL_157 = ~_EVAL_63;
  assign _EVAL_45 = _EVAL_87 == 3'h2;
  assign _EVAL_37 = _EVAL_87 == 3'h7;
  assign _EVAL_102 = _EVAL_190 == 3'h0;
  assign _EVAL_96 = _EVAL_87 == 3'h3;
  assign _EVAL_137 = _EVAL_87 + 3'h2;
  assign _EVAL_139 = _EVAL_195 | _EVAL_73;
  assign _EVAL_63 = _EVAL_229 | _EVAL_23;
  assign _EVAL_159 = _EVAL_76 | _EVAL_23;
  assign _EVAL_76 = _EVAL_139 | _EVAL_126;
  assign _EVAL_195 = ~_EVAL_67;
  assign _EVAL_249 = ~_EVAL_6;
  assign _EVAL_136 = _EVAL_137 <= 4'h7;
  assign _EVAL_109 = ~_EVAL_159;
  assign _EVAL_235 = _EVAL_87 == 3'h5;
  assign _EVAL_95 = _EVAL_75 == 3'h1;
  assign _EVAL_182 = _EVAL_190 == 3'h1;
  assign _EVAL_56 = _EVAL_87 == 3'h4;
  assign _EVAL_68 = _EVAL_87 == 3'h6;
  assign _EVAL_73 = ~_EVAL_220;
  assign _EVAL_39 = ~_EVAL_23;
  assign _EVAL_117 = _EVAL_87 == 3'h1;
  assign _EVAL_126 = _EVAL_248 & _EVAL_136;
  assign _EVAL_208 = ~_EVAL_175;
  assign _EVAL_104 = _EVAL_87 == 3'h0;
  assign _EVAL_29 = ~_EVAL_177;
  assign _EVAL_131 = _EVAL_75 == 3'h0;
  assign _EVAL_229 = _EVAL_249 | _EVAL_19;
  assign _EVAL_34 = _EVAL_208 & _EVAL_220;
  assign _EVAL_88 = _EVAL_75 == 3'h2;
  assign _EVAL_177 = _EVAL_195 | _EVAL_23;
  always @(posedge _EVAL_12) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_235 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(a2667913)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_102 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(b2336ba7)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_157) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(be341866)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_95 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(1a3134a0)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_182 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(cef68bc4)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_37 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c908924f)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_88 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(1d2f8429)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_34 & _EVAL_29) begin
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
        if (_EVAL_104 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(59103b61)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_45 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(4c5c80a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_96 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(57f6bb08)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_68 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(83d9ce98)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_109) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(bc10f68a)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_131 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(72ae292f)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_82 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(80d52ead)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_34 & _EVAL_29) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(b2d34a76)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_117 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(cb13b32d)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_157) begin
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
        if (_EVAL_56 & _EVAL_39) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(fe5bd946)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_109) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end

endmodule
