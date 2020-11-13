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
module SiFive_TLTestIndicator(
  output        auto_control_xing_in_a_ready,
  input         auto_control_xing_in_a_valid,
  input  [2:0]  auto_control_xing_in_a_bits_opcode,
  input  [2:0]  auto_control_xing_in_a_bits_param,
  input  [1:0]  auto_control_xing_in_a_bits_size,
  input  [2:0]  auto_control_xing_in_a_bits_source,
  input  [14:0] auto_control_xing_in_a_bits_address,
  input  [3:0]  auto_control_xing_in_a_bits_mask,
  input  [31:0] auto_control_xing_in_a_bits_data,
  input         auto_control_xing_in_a_bits_corrupt,
  input         auto_control_xing_in_d_ready,
  output        auto_control_xing_in_d_valid,
  output [2:0]  auto_control_xing_in_d_bits_opcode,
  output [1:0]  auto_control_xing_in_d_bits_size,
  output [2:0]  auto_control_xing_in_d_bits_source,
  output [31:0] auto_control_xing_in_d_bits_data,
  input         clock,
  input         reset
);
  wire  buffer__EVAL;
  wire [1:0] buffer__EVAL_0;
  wire [2:0] buffer__EVAL_1;
  wire [2:0] buffer__EVAL_2;
  wire [31:0] buffer__EVAL_3;
  wire [31:0] buffer__EVAL_4;
  wire [2:0] buffer__EVAL_5;
  wire [14:0] buffer__EVAL_6;
  wire  buffer__EVAL_7;
  wire [1:0] buffer__EVAL_8;
  wire [14:0] buffer__EVAL_9;
  wire [2:0] buffer__EVAL_10;
  wire  buffer__EVAL_11;
  wire [31:0] buffer__EVAL_12;
  wire [31:0] buffer__EVAL_13;
  wire  buffer__EVAL_14;
  wire [1:0] buffer__EVAL_15;
  wire  buffer__EVAL_16;
  wire  buffer__EVAL_17;
  wire  buffer__EVAL_18;
  wire [2:0] buffer__EVAL_19;
  wire [2:0] buffer__EVAL_20;
  wire  buffer__EVAL_21;
  wire [2:0] buffer__EVAL_22;
  wire  buffer__EVAL_23;
  wire [1:0] buffer__EVAL_24;
  wire  buffer__EVAL_25;
  wire [2:0] buffer__EVAL_26;
  wire [2:0] buffer__EVAL_27;
  wire [3:0] buffer__EVAL_28;
  wire  buffer__EVAL_29;
  wire [3:0] buffer__EVAL_30;
  wire [2:0] buffer__EVAL_31;
  wire [1:0] Queue__EVAL;
  wire  Queue__EVAL_0;
  wire  Queue__EVAL_1;
  wire  Queue__EVAL_2;
  wire  Queue__EVAL_3;
  wire [9:0] Queue__EVAL_4;
  wire [3:0] Queue__EVAL_5;
  wire [31:0] Queue__EVAL_6;
  wire [9:0] Queue__EVAL_7;
  wire [2:0] Queue__EVAL_8;
  wire  Queue__EVAL_9;
  wire  Queue__EVAL_10;
  wire  Queue__EVAL_11;
  wire  Queue__EVAL_12;
  wire [3:0] Queue__EVAL_13;
  wire [2:0] Queue__EVAL_14;
  wire [31:0] Queue__EVAL_15;
  wire [1:0] Queue__EVAL_16;
  reg [31:0] status_regs_0;
  reg [31:0] _RAND_0;
  wire [31:0] _T_6;
  wire [2:0] _T_1_a_bits_opcode;
  wire [14:0] _T_1_a_bits_address;
  wire [9:0] _T_14;
  wire  _T_16;
  wire [7:0] _T_43;
  wire [7:0] _T_45;
  wire [7:0] _T_47;
  wire [7:0] _T_49;
  wire [31:0] _T_52;
  wire  _T_60;
  wire  _T_1_d_ready;
  wire  _T_153;
  wire [1:0] _T_119;
  wire  _T_169;
  wire  _T_170;
  wire  _T_177;
  wire  _T_178;
  wire  _T_64;
  wire [31:0] _T_65;
  wire [15:0] _T_68;
  wire [31:0] _T_70;
  wire  _T_172;
  wire  _T_173;
  wire  _T_88;
  wire  _GEN_11;
  wire [31:0] _GEN_13;
  wire  _T_10_bits_read;
  _EVAL_177 buffer (
    ._EVAL(buffer__EVAL),
    ._EVAL_0(buffer__EVAL_0),
    ._EVAL_1(buffer__EVAL_1),
    ._EVAL_2(buffer__EVAL_2),
    ._EVAL_3(buffer__EVAL_3),
    ._EVAL_4(buffer__EVAL_4),
    ._EVAL_5(buffer__EVAL_5),
    ._EVAL_6(buffer__EVAL_6),
    ._EVAL_7(buffer__EVAL_7),
    ._EVAL_8(buffer__EVAL_8),
    ._EVAL_9(buffer__EVAL_9),
    ._EVAL_10(buffer__EVAL_10),
    ._EVAL_11(buffer__EVAL_11),
    ._EVAL_12(buffer__EVAL_12),
    ._EVAL_13(buffer__EVAL_13),
    ._EVAL_14(buffer__EVAL_14),
    ._EVAL_15(buffer__EVAL_15),
    ._EVAL_16(buffer__EVAL_16),
    ._EVAL_17(buffer__EVAL_17),
    ._EVAL_18(buffer__EVAL_18),
    ._EVAL_19(buffer__EVAL_19),
    ._EVAL_20(buffer__EVAL_20),
    ._EVAL_21(buffer__EVAL_21),
    ._EVAL_22(buffer__EVAL_22),
    ._EVAL_23(buffer__EVAL_23),
    ._EVAL_24(buffer__EVAL_24),
    ._EVAL_25(buffer__EVAL_25),
    ._EVAL_26(buffer__EVAL_26),
    ._EVAL_27(buffer__EVAL_27),
    ._EVAL_28(buffer__EVAL_28),
    ._EVAL_29(buffer__EVAL_29),
    ._EVAL_30(buffer__EVAL_30),
    ._EVAL_31(buffer__EVAL_31)
  );
  _EVAL_179 Queue (
    ._EVAL(Queue__EVAL),
    ._EVAL_0(Queue__EVAL_0),
    ._EVAL_1(Queue__EVAL_1),
    ._EVAL_2(Queue__EVAL_2),
    ._EVAL_3(Queue__EVAL_3),
    ._EVAL_4(Queue__EVAL_4),
    ._EVAL_5(Queue__EVAL_5),
    ._EVAL_6(Queue__EVAL_6),
    ._EVAL_7(Queue__EVAL_7),
    ._EVAL_8(Queue__EVAL_8),
    ._EVAL_9(Queue__EVAL_9),
    ._EVAL_10(Queue__EVAL_10),
    ._EVAL_11(Queue__EVAL_11),
    ._EVAL_12(Queue__EVAL_12),
    ._EVAL_13(Queue__EVAL_13),
    ._EVAL_14(Queue__EVAL_14),
    ._EVAL_15(Queue__EVAL_15),
    ._EVAL_16(Queue__EVAL_16)
  );
  assign _T_6 = {status_regs_0[31:16],status_regs_0[31:16]};
  assign _T_1_a_bits_opcode = buffer__EVAL_19;
  assign _T_1_a_bits_address = buffer__EVAL_9;
  assign _T_14 = Queue__EVAL_7 & 10'h3bf;
  assign _T_16 = _T_14 == 10'h0;
  assign _T_43 = Queue__EVAL_13[0] ? 8'hff : 8'h0;
  assign _T_45 = Queue__EVAL_13[1] ? 8'hff : 8'h0;
  assign _T_47 = Queue__EVAL_13[2] ? 8'hff : 8'h0;
  assign _T_49 = Queue__EVAL_13[3] ? 8'hff : 8'h0;
  assign _T_52 = {_T_49,_T_47,_T_45,_T_43};
  assign _T_60 = _T_52 == 32'hffffffff;
  assign _T_1_d_ready = buffer__EVAL_11;
  assign _T_153 = Queue__EVAL_3 & _T_1_d_ready;
  assign _T_119 = 2'h1 << Queue__EVAL_7[6];
  assign _T_169 = ~Queue__EVAL_12;
  assign _T_170 = _T_153 & _T_169;
  assign _T_177 = _T_170 & _T_119[1];
  assign _T_178 = _T_177 & _T_16;
  assign _T_64 = _T_178 & _T_60;
  assign _T_65 = Queue__EVAL_6;
  assign _T_68 = _T_65[31:16] | _T_65[15:0];
  assign _T_70 = {_T_68,status_regs_0[15:0]};
  assign _T_172 = _T_170 & _T_119[0];
  assign _T_173 = _T_172 & _T_16;
  assign _T_88 = _T_173 & _T_60;
  assign _GEN_11 = Queue__EVAL_7[6] ? _T_16 : _T_16;
  assign _GEN_13 = Queue__EVAL_7[6] ? _T_6 : status_regs_0;
  assign _T_10_bits_read = Queue__EVAL_12;
  assign auto_control_xing_in_a_ready = buffer__EVAL;
  assign auto_control_xing_in_d_valid = buffer__EVAL_23;
  assign auto_control_xing_in_d_bits_opcode = buffer__EVAL_22;
  assign auto_control_xing_in_d_bits_size = buffer__EVAL_0;
  assign auto_control_xing_in_d_bits_source = buffer__EVAL_1;
  assign auto_control_xing_in_d_bits_data = buffer__EVAL_12;
  assign buffer__EVAL_7 = 1'h0;
  assign buffer__EVAL_14 = auto_control_xing_in_a_valid;
  assign buffer__EVAL_31 = auto_control_xing_in_a_bits_opcode;
  assign buffer__EVAL_2 = auto_control_xing_in_a_bits_param;
  assign buffer__EVAL_24 = auto_control_xing_in_a_bits_size;
  assign buffer__EVAL_10 = auto_control_xing_in_a_bits_source;
  assign buffer__EVAL_6 = auto_control_xing_in_a_bits_address;
  assign buffer__EVAL_28 = auto_control_xing_in_a_bits_mask;
  assign buffer__EVAL_4 = auto_control_xing_in_a_bits_data;
  assign buffer__EVAL_21 = auto_control_xing_in_a_bits_corrupt;
  assign buffer__EVAL_16 = auto_control_xing_in_d_ready;
  assign buffer__EVAL_17 = Queue__EVAL_10;
  assign buffer__EVAL_29 = Queue__EVAL_3;
  assign buffer__EVAL_20 = {{2'd0}, _T_10_bits_read};
  assign buffer__EVAL_15 = Queue__EVAL_16;
  assign buffer__EVAL_5 = Queue__EVAL_8;
  assign buffer__EVAL_3 = _GEN_11 ? _GEN_13 : 32'h0;
  assign Queue__EVAL_2 = clock;
  assign Queue__EVAL_1 = reset;
  assign Queue__EVAL_9 = buffer__EVAL_25;
  assign Queue__EVAL_11 = _T_1_a_bits_opcode == 3'h4;
  assign Queue__EVAL_4 = _T_1_a_bits_address[11:2];
  assign Queue__EVAL_15 = buffer__EVAL_13;
  assign Queue__EVAL_5 = buffer__EVAL_30;
  assign Queue__EVAL_14 = buffer__EVAL_26;
  assign Queue__EVAL = buffer__EVAL_8;
  assign Queue__EVAL_0 = buffer__EVAL_11;
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
  status_regs_0 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      status_regs_0 <= 32'h0;
    end else if (_T_88) begin
      status_regs_0 <= _T_65;
    end else if (_T_64) begin
      status_regs_0 <= _T_70;
    end
  end
endmodule
