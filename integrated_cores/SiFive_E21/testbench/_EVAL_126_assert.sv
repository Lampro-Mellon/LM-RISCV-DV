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
module _EVAL_126_assert(
  input          _EVAL_0,
  input          _EVAL_5,
  input  [3:0]   _EVAL_6,
  input          _EVAL_11,
  input  [2:0]   _EVAL_12,
  input          _EVAL_14,
  input  [127:0] _EVAL_15,
  input          _EVAL_16,
  input          _EVAL_38,
  input          _EVAL_43,
  input          _EVAL_48,
  input          _EVAL_52,
  input          _EVAL_57,
  input          _EVAL_59,
  input  [42:0]  _EVAL_60
);
  wire  _EVAL_18;
  wire  _EVAL_20;
  wire  _EVAL_21;
  wire  _EVAL_23;
  wire  _EVAL_28;
  wire [1:0] _EVAL_29;
  wire  _EVAL_30;
  wire  TLMonitor__EVAL;
  wire [2:0] TLMonitor__EVAL_0;
  wire  TLMonitor__EVAL_1;
  wire  TLMonitor__EVAL_2;
  wire  TLMonitor__EVAL_3;
  wire [3:0] TLMonitor__EVAL_4;
  wire [1:0] TLMonitor__EVAL_5;
  wire [2:0] TLMonitor__EVAL_6;
  wire  TLMonitor__EVAL_7;
  wire  TLMonitor__EVAL_8;
  wire  TLMonitor__EVAL_9;
  wire  TLMonitor__EVAL_10;
  wire  TLMonitor__EVAL_11;
  wire [127:0] TLMonitor__EVAL_12;
  wire  TLMonitor__EVAL_13;
  wire [1:0] TLMonitor__EVAL_14;
  wire  _EVAL_50;
  wire  _EVAL_54;
  wire  _EVAL_56;
  wire  _EVAL_58;
  reg  _EVAL_63;
  reg [31:0] _RAND_0;
  _EVAL_125_assert TLMonitor (
    ._EVAL(TLMonitor__EVAL),
    ._EVAL_0(TLMonitor__EVAL_0),
    ._EVAL_1(TLMonitor__EVAL_1),
    ._EVAL_2(TLMonitor__EVAL_2),
    ._EVAL_3(TLMonitor__EVAL_3),
    ._EVAL_4(TLMonitor__EVAL_4),
    ._EVAL_5(TLMonitor__EVAL_5),
    ._EVAL_6(TLMonitor__EVAL_6),
    ._EVAL_7(TLMonitor__EVAL_7),
    ._EVAL_8(TLMonitor__EVAL_8),
    ._EVAL_9(TLMonitor__EVAL_9),
    ._EVAL_10(TLMonitor__EVAL_10),
    ._EVAL_11(TLMonitor__EVAL_11),
    ._EVAL_12(TLMonitor__EVAL_12),
    ._EVAL_13(TLMonitor__EVAL_13),
    ._EVAL_14(TLMonitor__EVAL_14)
  );
  assign TLMonitor__EVAL_6 = _EVAL_12;
  assign _EVAL_58 = _EVAL_30 | _EVAL_52;
  assign _EVAL_18 = ~_EVAL_63;
  assign TLMonitor__EVAL_4 = _EVAL_6;
  assign TLMonitor__EVAL_1 = _EVAL_11;
  assign _EVAL_30 = ~_EVAL_48;
  assign TLMonitor__EVAL = _EVAL_0;
  assign _EVAL_28 = ~_EVAL_20;
  assign _EVAL_56 = _EVAL_58 | _EVAL_23;
  assign TLMonitor__EVAL_11 = _EVAL_60[33];
  assign _EVAL_29 = _EVAL_63 - 1'h1;
  assign TLMonitor__EVAL_7 = _EVAL_43 ? _EVAL_48 : _EVAL_16;
  assign TLMonitor__EVAL_0 = _EVAL_60[42:40];
  assign TLMonitor__EVAL_3 = _EVAL_57 & _EVAL_59;
  assign _EVAL_21 = _EVAL_29[0];
  assign _EVAL_23 = _EVAL_11;
  assign TLMonitor__EVAL_13 = _EVAL_60[35];
  assign TLMonitor__EVAL_8 = _EVAL_14;
  assign _EVAL_20 = _EVAL_54 | _EVAL_23;
  assign TLMonitor__EVAL_5 = _EVAL_60[37:36];
  assign _EVAL_50 = ~_EVAL_56;
  assign TLMonitor__EVAL_14 = _EVAL_60[39:38];
  assign TLMonitor__EVAL_12 = _EVAL_15;
  assign _EVAL_54 = _EVAL_59 | _EVAL_18;
  assign TLMonitor__EVAL_10 = _EVAL_60[0];
  assign TLMonitor__EVAL_9 = _EVAL_5;
  assign TLMonitor__EVAL_2 = _EVAL_60[34];
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
  _EVAL_63 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_11) begin
    _EVAL_63 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_5) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_EVAL_28) begin
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
        if (_EVAL_50) begin
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
        if (_EVAL_50) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(3808bb77)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_EVAL_28) begin
          $fwrite(32'h80000002,"Obfuscated Simulation Output(c7fd27d9)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
  always @(posedge _EVAL_5 or posedge _EVAL_11) begin
    if (_EVAL_11) begin
      _EVAL_63 <= 1'h0;
    end else if (_EVAL_38) begin
      if (_EVAL_18) begin
        _EVAL_63 <= 1'h0;
      end else begin
        _EVAL_63 <= _EVAL_21;
      end
    end
  end

endmodule
