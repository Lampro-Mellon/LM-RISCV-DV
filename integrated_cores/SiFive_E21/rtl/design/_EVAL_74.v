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
module _EVAL_74(
  input  [2:0]  _EVAL,
  output [2:0]  _EVAL_0,
  output        _EVAL_1,
  output        _EVAL_2,
  input         _EVAL_3,
  output [2:0]  _EVAL_4,
  output [13:0] _EVAL_5,
  input  [2:0]  _EVAL_6,
  input  [3:0]  _EVAL_7,
  output        _EVAL_8,
  output [3:0]  _EVAL_9,
  input  [2:0]  _EVAL_10,
  output [2:0]  _EVAL_11,
  input  [3:0]  _EVAL_12,
  input         _EVAL_13,
  input         _EVAL_14,
  input         _EVAL_15,
  input         _EVAL_16,
  output [3:0]  _EVAL_17,
  input  [13:0] _EVAL_18
);
  reg  _EVAL_19;
  reg [31:0] _RAND_0;
  wire  _EVAL_20;
  wire  _EVAL_21;
  wire  _EVAL_22;
  reg [2:0] _EVAL_23 [0:1];
  reg [31:0] _RAND_1;
  wire [2:0] _EVAL_23__EVAL_24_data;
  wire  _EVAL_23__EVAL_24_addr;
  wire [2:0] _EVAL_23__EVAL_25_data;
  wire  _EVAL_23__EVAL_25_addr;
  wire  _EVAL_23__EVAL_25_mask;
  wire  _EVAL_23__EVAL_25_en;
  wire  _EVAL_26;
  wire [1:0] _EVAL_27;
  reg  _EVAL_28;
  reg [31:0] _RAND_2;
  reg [2:0] _EVAL_29 [0:1];
  reg [31:0] _RAND_3;
  wire [2:0] _EVAL_29__EVAL_30_data;
  wire  _EVAL_29__EVAL_30_addr;
  wire [2:0] _EVAL_29__EVAL_31_data;
  wire  _EVAL_29__EVAL_31_addr;
  wire  _EVAL_29__EVAL_31_mask;
  wire  _EVAL_29__EVAL_31_en;
  reg  _EVAL_32 [0:1];
  reg [31:0] _RAND_4;
  wire  _EVAL_32__EVAL_33_data;
  wire  _EVAL_32__EVAL_33_addr;
  wire  _EVAL_32__EVAL_34_data;
  wire  _EVAL_32__EVAL_34_addr;
  wire  _EVAL_32__EVAL_34_mask;
  wire  _EVAL_32__EVAL_34_en;
  wire  _EVAL_36;
  reg [3:0] _EVAL_37 [0:1];
  reg [31:0] _RAND_5;
  wire [3:0] _EVAL_37__EVAL_38_data;
  wire  _EVAL_37__EVAL_38_addr;
  wire [3:0] _EVAL_37__EVAL_39_data;
  wire  _EVAL_37__EVAL_39_addr;
  wire  _EVAL_37__EVAL_39_mask;
  wire  _EVAL_37__EVAL_39_en;
  wire [1:0] _EVAL_40;
  wire  _EVAL_41;
  reg [3:0] _EVAL_42 [0:1];
  reg [31:0] _RAND_6;
  wire [3:0] _EVAL_42__EVAL_43_data;
  wire  _EVAL_42__EVAL_43_addr;
  wire [3:0] _EVAL_42__EVAL_44_data;
  wire  _EVAL_42__EVAL_44_addr;
  wire  _EVAL_42__EVAL_44_mask;
  wire  _EVAL_42__EVAL_44_en;
  wire  _EVAL_46;
  reg [2:0] _EVAL_47 [0:1];
  reg [31:0] _RAND_7;
  wire [2:0] _EVAL_47__EVAL_48_data;
  wire  _EVAL_47__EVAL_48_addr;
  wire [2:0] _EVAL_47__EVAL_49_data;
  wire  _EVAL_47__EVAL_49_addr;
  wire  _EVAL_47__EVAL_49_mask;
  wire  _EVAL_47__EVAL_49_en;
  reg  _EVAL_50;
  reg [31:0] _RAND_8;
  wire  _EVAL_51;
  reg [13:0] _EVAL_53 [0:1];
  reg [31:0] _RAND_9;
  wire [13:0] _EVAL_53__EVAL_54_data;
  wire  _EVAL_53__EVAL_54_addr;
  wire [13:0] _EVAL_53__EVAL_55_data;
  wire  _EVAL_53__EVAL_55_addr;
  wire  _EVAL_53__EVAL_55_mask;
  wire  _EVAL_53__EVAL_55_en;
  wire  _EVAL_56;
  assign _EVAL_23__EVAL_24_addr = _EVAL_19;
  assign _EVAL_23__EVAL_24_data = _EVAL_23[_EVAL_23__EVAL_24_addr];
  assign _EVAL_23__EVAL_25_data = _EVAL_6;
  assign _EVAL_23__EVAL_25_addr = _EVAL_50;
  assign _EVAL_23__EVAL_25_mask = 1'h1;
  assign _EVAL_23__EVAL_25_en = _EVAL_1 & _EVAL_15;
  assign _EVAL_29__EVAL_30_addr = _EVAL_19;
  assign _EVAL_29__EVAL_30_data = _EVAL_29[_EVAL_29__EVAL_30_addr];
  assign _EVAL_29__EVAL_31_data = _EVAL;
  assign _EVAL_29__EVAL_31_addr = _EVAL_50;
  assign _EVAL_29__EVAL_31_mask = 1'h1;
  assign _EVAL_29__EVAL_31_en = _EVAL_1 & _EVAL_15;
  assign _EVAL_32__EVAL_33_addr = _EVAL_19;
  assign _EVAL_32__EVAL_33_data = _EVAL_32[_EVAL_32__EVAL_33_addr];
  assign _EVAL_32__EVAL_34_data = _EVAL_16;
  assign _EVAL_32__EVAL_34_addr = _EVAL_50;
  assign _EVAL_32__EVAL_34_mask = 1'h1;
  assign _EVAL_32__EVAL_34_en = _EVAL_1 & _EVAL_15;
  assign _EVAL_37__EVAL_38_addr = _EVAL_19;
  assign _EVAL_37__EVAL_38_data = _EVAL_37[_EVAL_37__EVAL_38_addr];
  assign _EVAL_37__EVAL_39_data = _EVAL_7;
  assign _EVAL_37__EVAL_39_addr = _EVAL_50;
  assign _EVAL_37__EVAL_39_mask = 1'h1;
  assign _EVAL_37__EVAL_39_en = _EVAL_1 & _EVAL_15;
  assign _EVAL_42__EVAL_43_addr = _EVAL_19;
  assign _EVAL_42__EVAL_43_data = _EVAL_42[_EVAL_42__EVAL_43_addr];
  assign _EVAL_42__EVAL_44_data = _EVAL_12;
  assign _EVAL_42__EVAL_44_addr = _EVAL_50;
  assign _EVAL_42__EVAL_44_mask = 1'h1;
  assign _EVAL_42__EVAL_44_en = _EVAL_1 & _EVAL_15;
  assign _EVAL_47__EVAL_48_addr = _EVAL_19;
  assign _EVAL_47__EVAL_48_data = _EVAL_47[_EVAL_47__EVAL_48_addr];
  assign _EVAL_47__EVAL_49_data = _EVAL_10;
  assign _EVAL_47__EVAL_49_addr = _EVAL_50;
  assign _EVAL_47__EVAL_49_mask = 1'h1;
  assign _EVAL_47__EVAL_49_en = _EVAL_1 & _EVAL_15;
  assign _EVAL_53__EVAL_54_addr = _EVAL_19;
  assign _EVAL_53__EVAL_54_data = _EVAL_53[_EVAL_53__EVAL_54_addr];
  assign _EVAL_53__EVAL_55_data = _EVAL_18;
  assign _EVAL_53__EVAL_55_addr = _EVAL_50;
  assign _EVAL_53__EVAL_55_mask = 1'h1;
  assign _EVAL_53__EVAL_55_en = _EVAL_1 & _EVAL_15;
  assign _EVAL_46 = _EVAL_27[0];
  assign _EVAL_40 = _EVAL_19 + 1'h1;
  assign _EVAL_20 = _EVAL_14 & _EVAL_2;
  assign _EVAL_17 = _EVAL_37__EVAL_38_data;
  assign _EVAL_11 = _EVAL_29__EVAL_30_data;
  assign _EVAL_9 = _EVAL_42__EVAL_43_data;
  assign _EVAL_51 = ~_EVAL_28;
  assign _EVAL_36 = _EVAL_26 & _EVAL_28;
  assign _EVAL_4 = _EVAL_23__EVAL_24_data;
  assign _EVAL_8 = _EVAL_32__EVAL_33_data;
  assign _EVAL_2 = ~_EVAL_21;
  assign _EVAL_26 = _EVAL_50 == _EVAL_19;
  assign _EVAL_56 = _EVAL_40[0];
  assign _EVAL_27 = _EVAL_50 + 1'h1;
  assign _EVAL_41 = _EVAL_22 != _EVAL_20;
  assign _EVAL_1 = ~_EVAL_36;
  assign _EVAL_22 = _EVAL_1 & _EVAL_15;
  assign _EVAL_21 = _EVAL_26 & _EVAL_51;
  assign _EVAL_0 = _EVAL_47__EVAL_48_data;
  assign _EVAL_5 = _EVAL_53__EVAL_54_data;
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
  _EVAL_19 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _EVAL_23[initvar] = _RAND_1[2:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_28 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _EVAL_29[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _EVAL_32[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _EVAL_37[initvar] = _RAND_5[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _EVAL_42[initvar] = _RAND_6[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _EVAL_47[initvar] = _RAND_7[2:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _EVAL_50 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _EVAL_53[initvar] = _RAND_9[13:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_3) begin
    if (_EVAL_13) begin
      _EVAL_19 <= 1'h0;
    end else if (_EVAL_20) begin
      _EVAL_19 <= _EVAL_56;
    end
    if(_EVAL_23__EVAL_25_en & _EVAL_23__EVAL_25_mask) begin
      _EVAL_23[_EVAL_23__EVAL_25_addr] <= _EVAL_23__EVAL_25_data;
    end
    if (_EVAL_13) begin
      _EVAL_28 <= 1'h0;
    end else if (_EVAL_41) begin
      _EVAL_28 <= _EVAL_22;
    end
    if(_EVAL_29__EVAL_31_en & _EVAL_29__EVAL_31_mask) begin
      _EVAL_29[_EVAL_29__EVAL_31_addr] <= _EVAL_29__EVAL_31_data;
    end
    if(_EVAL_32__EVAL_34_en & _EVAL_32__EVAL_34_mask) begin
      _EVAL_32[_EVAL_32__EVAL_34_addr] <= _EVAL_32__EVAL_34_data;
    end
    if(_EVAL_37__EVAL_39_en & _EVAL_37__EVAL_39_mask) begin
      _EVAL_37[_EVAL_37__EVAL_39_addr] <= _EVAL_37__EVAL_39_data;
    end
    if(_EVAL_42__EVAL_44_en & _EVAL_42__EVAL_44_mask) begin
      _EVAL_42[_EVAL_42__EVAL_44_addr] <= _EVAL_42__EVAL_44_data;
    end
    if(_EVAL_47__EVAL_49_en & _EVAL_47__EVAL_49_mask) begin
      _EVAL_47[_EVAL_47__EVAL_49_addr] <= _EVAL_47__EVAL_49_data;
    end
    if (_EVAL_13) begin
      _EVAL_50 <= 1'h0;
    end else if (_EVAL_22) begin
      _EVAL_50 <= _EVAL_46;
    end
    if(_EVAL_53__EVAL_55_en & _EVAL_53__EVAL_55_mask) begin
      _EVAL_53[_EVAL_53__EVAL_55_addr] <= _EVAL_53__EVAL_55_data;
    end
  end
endmodule
