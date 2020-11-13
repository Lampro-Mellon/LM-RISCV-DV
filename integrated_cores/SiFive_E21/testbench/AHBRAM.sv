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
module AHBRAM(
  input         clock,
  input         reset,
  input         auto_in_hready,
  output        auto_in_hreadyout,
  input  [1:0]  auto_in_htrans,
  input  [2:0]  auto_in_hsize,
  input         auto_in_hwrite,
  input  [29:0] auto_in_haddr,
  input  [31:0] auto_in_hwdata,
  output        auto_in_hresp,
  output [31:0] auto_in_hrdata
);
  wire [10:0] testharness_RW0_addr;
  wire  testharness_RW0_en;
  wire  testharness_RW0_clk;
  wire  testharness_RW0_wmode;
  wire [7:0] testharness_RW0_wdata_0;
  wire [7:0] testharness_RW0_wdata_1;
  wire [7:0] testharness_RW0_wdata_2;
  wire [7:0] testharness_RW0_wdata_3;
  wire [7:0] testharness_RW0_rdata_0;
  wire [7:0] testharness_RW0_rdata_1;
  wire [7:0] testharness_RW0_rdata_2;
  wire [7:0] testharness_RW0_rdata_3;
  wire  testharness_RW0_wmask_0;
  wire  testharness_RW0_wmask_1;
  wire  testharness_RW0_wmask_2;
  wire  testharness_RW0_wmask_3;
  wire [31:0] plusarg_reader_out;
  wire  LFSRNoiseMaker_clock;
  wire  LFSRNoiseMaker_io_random;
  wire  _T;
  wire  _T_1;
  wire  a_access;
  wire  a_request;
  wire [1:0] _T_5;
  wire [1:0] _T_7;
  wire  _T_8;
  wire  _T_11;
  wire  _T_13;
  wire  _T_14;
  wire  _T_16;
  wire  _T_17;
  wire  _T_20;
  wire  _T_21;
  wire  _T_22;
  wire  _T_23;
  wire  _T_24;
  wire  _T_25;
  wire  _T_26;
  wire  _T_27;
  wire  _T_28;
  wire  _T_29;
  wire  _T_30;
  wire  _T_31;
  wire  _T_32;
  wire [3:0] a_mask;
  wire [4:0] _T_67;
  wire [10:0] a_address;
  wire [29:0] _T_73;
  wire [30:0] _T_74;
  wire [30:0] _T_76;
  wire  a_legal;
  wire [7:0] d_wdata_0;
  wire [7:0] d_wdata_1;
  wire [7:0] d_wdata_2;
  wire [7:0] d_wdata_3;
  reg  p_valid;
  reg [31:0] _RAND_0;
  reg [10:0] p_address;
  reg [31:0] _RAND_1;
  reg [3:0] p_mask;
  reg [31:0] _RAND_2;
  reg  p_latch_d;
  reg [31:0] _RAND_3;
  reg [7:0] _T_81_0;
  reg [31:0] _RAND_4;
  reg [7:0] _T_81_1;
  reg [31:0] _RAND_5;
  reg [7:0] _T_81_2;
  reg [31:0] _RAND_6;
  reg [7:0] _T_81_3;
  reg [31:0] _RAND_7;
  wire [7:0] _GEN_0;
  wire [7:0] _GEN_1;
  wire [7:0] _GEN_2;
  wire [7:0] _GEN_3;
  wire  _T_82;
  wire  read;
  reg  _T_87;
  reg [31:0] _RAND_8;
  reg [7:0] _T_88_0;
  reg [31:0] _RAND_9;
  reg [7:0] _T_88_1;
  reg [31:0] _RAND_10;
  reg [7:0] _T_88_2;
  reg [31:0] _RAND_11;
  reg [7:0] _T_88_3;
  reg [31:0] _RAND_12;
  wire [7:0] _GEN_8;
  wire [7:0] _GEN_9;
  wire [7:0] _GEN_10;
  wire [7:0] _GEN_11;
  reg  d_legal;
  reg [31:0] _RAND_13;
  wire  disable_ahb_fuzzing;
  reg  d_request;
  reg [31:0] _RAND_14;
  wire  _T_112;
  wire  _T_113;
  wire  _T_114;
  wire  in_hreadyout;
  wire  _T_89;
  wire  _T_90;
  wire  _GEN_21;
  wire  _T_96;
  wire  _T_98;
  wire  _GEN_33;
  wire  _T_99;
  wire  a_bypass;
  reg  d_bypass;
  reg [31:0] _RAND_15;
  wire  _T_104;
  wire [7:0] muxdata_0;
  wire  _T_106;
  wire [7:0] muxdata_1;
  wire  _T_108;
  wire [7:0] muxdata_2;
  wire  _T_110;
  wire [7:0] muxdata_3;
  wire  _GEN_37;
  wire  _T_117;
  wire  _T_118;
  wire  _T_119;
  wire [1:0] _T_120;
  wire [31:0] _T_123;
  testharness testharness (
    .RW0_addr(testharness_RW0_addr),
    .RW0_en(testharness_RW0_en),
    .RW0_clk(testharness_RW0_clk),
    .RW0_wmode(testharness_RW0_wmode),
    .RW0_wdata_0(testharness_RW0_wdata_0),
    .RW0_wdata_1(testharness_RW0_wdata_1),
    .RW0_wdata_2(testharness_RW0_wdata_2),
    .RW0_wdata_3(testharness_RW0_wdata_3),
    .RW0_rdata_0(testharness_RW0_rdata_0),
    .RW0_rdata_1(testharness_RW0_rdata_1),
    .RW0_rdata_2(testharness_RW0_rdata_2),
    .RW0_rdata_3(testharness_RW0_rdata_3),
    .RW0_wmask_0(testharness_RW0_wmask_0),
    .RW0_wmask_1(testharness_RW0_wmask_1),
    .RW0_wmask_2(testharness_RW0_wmask_2),
    .RW0_wmask_3(testharness_RW0_wmask_3)
  );
  plusarg_reader #(.FORMAT("disable_ahb_fuzzing=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader (
    .out(plusarg_reader_out)
  );
  LFSRNoiseMaker LFSRNoiseMaker (
    .clock(LFSRNoiseMaker_clock),
    .io_random(LFSRNoiseMaker_io_random)
  );
  assign _T = auto_in_htrans == 2'h2;
  assign _T_1 = auto_in_htrans == 2'h3;
  assign a_access = _T | _T_1;
  assign a_request = auto_in_hready & a_access;
  assign _T_5 = 2'h1 << auto_in_hsize[0];
  assign _T_7 = _T_5 | 2'h1;
  assign _T_8 = auto_in_hsize >= 3'h2;
  assign _T_11 = ~auto_in_haddr[1];
  assign _T_13 = _T_7[1] & _T_11;
  assign _T_14 = _T_8 | _T_13;
  assign _T_16 = _T_7[1] & auto_in_haddr[1];
  assign _T_17 = _T_8 | _T_16;
  assign _T_20 = ~auto_in_haddr[0];
  assign _T_21 = _T_11 & _T_20;
  assign _T_22 = _T_7[0] & _T_21;
  assign _T_23 = _T_14 | _T_22;
  assign _T_24 = _T_11 & auto_in_haddr[0];
  assign _T_25 = _T_7[0] & _T_24;
  assign _T_26 = _T_14 | _T_25;
  assign _T_27 = auto_in_haddr[1] & _T_20;
  assign _T_28 = _T_7[0] & _T_27;
  assign _T_29 = _T_17 | _T_28;
  assign _T_30 = auto_in_haddr[1] & auto_in_haddr[0];
  assign _T_31 = _T_7[0] & _T_30;
  assign _T_32 = _T_17 | _T_31;
  assign a_mask = {_T_32,_T_29,_T_26,_T_23};
  assign _T_67 = {auto_in_haddr[6],auto_in_haddr[5],auto_in_haddr[4],auto_in_haddr[3],auto_in_haddr[2]};
  assign a_address = {auto_in_haddr[12],auto_in_haddr[11],auto_in_haddr[10],auto_in_haddr[9],auto_in_haddr[8],auto_in_haddr[7],_T_67};
  assign _T_73 = auto_in_haddr ^ 30'h20000000;
  assign _T_74 = {1'b0,$signed(_T_73)};
  assign _T_76 = $signed(_T_74) & -31'sh2000;
  assign a_legal = $signed(_T_76) == 31'sh0;
  assign d_wdata_0 = auto_in_hwdata[7:0];
  assign d_wdata_1 = auto_in_hwdata[15:8];
  assign d_wdata_2 = auto_in_hwdata[23:16];
  assign d_wdata_3 = auto_in_hwdata[31:24];
  assign _GEN_0 = p_latch_d ? d_wdata_0 : _T_81_0;
  assign _GEN_1 = p_latch_d ? d_wdata_1 : _T_81_1;
  assign _GEN_2 = p_latch_d ? d_wdata_2 : _T_81_2;
  assign _GEN_3 = p_latch_d ? d_wdata_3 : _T_81_3;
  assign _T_82 = ~auto_in_hwrite;
  assign read = a_request & _T_82;
  assign _GEN_8 = _T_87 ? testharness_RW0_rdata_0 : _T_88_0;
  assign _GEN_9 = _T_87 ? testharness_RW0_rdata_1 : _T_88_1;
  assign _GEN_10 = _T_87 ? testharness_RW0_rdata_2 : _T_88_2;
  assign _GEN_11 = _T_87 ? testharness_RW0_rdata_3 : _T_88_3;
  assign disable_ahb_fuzzing = plusarg_reader_out[0];
  assign _T_112 = ~d_request;
  assign _T_113 = LFSRNoiseMaker_io_random;
  assign _T_114 = _T_112 | _T_113;
  assign in_hreadyout = disable_ahb_fuzzing | _T_114;
  assign _T_89 = ~read;
  assign _T_90 = _T_89 & p_valid;
  assign _GEN_21 = _T_90 ? 1'h0 : p_valid;
  assign _T_96 = a_request & auto_in_hwrite;
  assign _T_98 = _T_96 & a_legal;
  assign _GEN_33 = _T_98 | _GEN_21;
  assign _T_99 = a_address == p_address;
  assign a_bypass = _T_99 & p_valid;
  assign _T_104 = d_bypass & p_mask[0];
  assign muxdata_0 = _T_104 ? _GEN_0 : _GEN_8;
  assign _T_106 = d_bypass & p_mask[1];
  assign muxdata_1 = _T_106 ? _GEN_1 : _GEN_9;
  assign _T_108 = d_bypass & p_mask[2];
  assign muxdata_2 = _T_108 ? _GEN_2 : _GEN_10;
  assign _T_110 = d_bypass & p_mask[3];
  assign muxdata_3 = _T_110 ? _GEN_3 : _GEN_11;
  assign _GEN_37 = auto_in_hready ? 1'h0 : d_request;
  assign _T_117 = _T_112 | d_legal;
  assign _T_118 = ~in_hreadyout;
  assign _T_119 = _T_117 | _T_118;
  assign _T_120 = _T_119 ? 2'h0 : 2'h1;
  assign _T_123 = {muxdata_3,muxdata_2,muxdata_1,muxdata_0};
  assign auto_in_hreadyout = disable_ahb_fuzzing | _T_114;
  assign auto_in_hresp = _T_120[0];
  assign auto_in_hrdata = in_hreadyout ? _T_123 : 32'h0;
  assign testharness_RW0_wdata_0 = p_latch_d ? d_wdata_0 : _T_81_0;
  assign testharness_RW0_wdata_1 = p_latch_d ? d_wdata_1 : _T_81_1;
  assign testharness_RW0_wdata_2 = p_latch_d ? d_wdata_2 : _T_81_2;
  assign testharness_RW0_wdata_3 = p_latch_d ? d_wdata_3 : _T_81_3;
  assign testharness_RW0_wmask_0 = p_mask[0];
  assign testharness_RW0_wmask_1 = p_mask[1];
  assign testharness_RW0_wmask_2 = p_mask[2];
  assign testharness_RW0_wmask_3 = p_mask[3];
  assign LFSRNoiseMaker_clock = clock;
  assign testharness_RW0_wmode = ~read;
  assign testharness_RW0_clk = clock;
  assign testharness_RW0_en = read | _T_90;
  assign testharness_RW0_addr = _T_90 ? p_address : a_address;
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
  p_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  p_address = _RAND_1[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  p_mask = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  p_latch_d = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_81_0 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_81_1 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_81_2 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_81_3 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_87 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_88_0 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_88_1 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_88_2 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_88_3 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  d_legal = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  d_request = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  d_bypass = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      p_valid <= 1'h0;
    end else begin
      p_valid <= _GEN_33;
    end
    if (_T_98) begin
      p_address <= a_address;
    end
    if (_T_98) begin
      p_mask <= a_mask;
    end
    p_latch_d <= a_request & auto_in_hwrite;
    if (p_latch_d) begin
      _T_81_0 <= d_wdata_0;
    end
    if (p_latch_d) begin
      _T_81_1 <= d_wdata_1;
    end
    if (p_latch_d) begin
      _T_81_2 <= d_wdata_2;
    end
    if (p_latch_d) begin
      _T_81_3 <= d_wdata_3;
    end
    _T_87 <= a_request & _T_82;
    if (_T_87) begin
      _T_88_0 <= testharness_RW0_rdata_0;
    end
    if (_T_87) begin
      _T_88_1 <= testharness_RW0_rdata_1;
    end
    if (_T_87) begin
      _T_88_2 <= testharness_RW0_rdata_2;
    end
    if (_T_87) begin
      _T_88_3 <= testharness_RW0_rdata_3;
    end
    if (in_hreadyout) begin
      d_legal <= a_legal;
    end
    d_request <= a_request | _GEN_37;
    if (a_request) begin
      d_bypass <= a_bypass;
    end
  end

endmodule
