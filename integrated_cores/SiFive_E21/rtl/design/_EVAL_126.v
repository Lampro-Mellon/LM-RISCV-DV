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
module _EVAL_126(
  output         _EVAL,
  input          _EVAL_0,
  output         _EVAL_1,
  output         _EVAL_2,
  output [2:0]   _EVAL_3,
  output [31:0]  _EVAL_4,
  input          _EVAL_5,
  input  [3:0]   _EVAL_6,
  output         _EVAL_7,
  output         _EVAL_8,
  output [1:0]   _EVAL_9,
  output [1:0]   _EVAL_10,
  input          _EVAL_11,
  input  [2:0]   _EVAL_12,
  output         _EVAL_13,
  input          _EVAL_14,
  input  [127:0] _EVAL_15
);
  wire  _EVAL_16;
  wire [2:0] _EVAL_17;
  wire  _EVAL_19;
  wire  _EVAL_22;
  wire  _EVAL_24;
  reg  _EVAL_25;
  reg [31:0] _RAND_0;
  wire [2:0] _EVAL_26;
  wire [1:0] _EVAL_27;
  wire  _EVAL_31;
  wire [1:0] _EVAL_32;
  wire  _EVAL_33;
  wire [1:0] _EVAL_34;
  wire [2:0] _EVAL_35;
  wire [2:0] _EVAL_36;
  wire [2:0] _EVAL_37;
  wire  _EVAL_38;
  wire [1:0] _EVAL_39;
  wire [1:0] _EVAL_40;
  wire [2:0] _EVAL_41;
  wire [2:0] _EVAL_42;
  wire  _EVAL_43;
  reg  _EVAL_44;
  reg [31:0] _RAND_1;
  wire  _EVAL_45;
  wire  _EVAL_46;
  wire  _EVAL_47;
  wire  _EVAL_48;
  wire  _EVAL_49;
  wire [2:0] _EVAL_51;
  wire  _EVAL_52;
  wire [42:0] _EVAL_55;
  wire  _EVAL_57;
  reg  _EVAL_59;
  reg [31:0] _RAND_2;
  wire [42:0] _EVAL_60;
  wire  _EVAL_61;
  wire [1:0] _EVAL_62;
  assign _EVAL_2 = _EVAL_60[33];
  assign _EVAL_8 = _EVAL_60[34];
  assign _EVAL_26 = 3'h2 == _EVAL_12 ? 3'h1 : 3'h0;
  assign _EVAL_38 = _EVAL_57 & _EVAL_48;
  assign _EVAL_43 = ~_EVAL_44;
  assign _EVAL = _EVAL_60[35];
  assign _EVAL_10 = _EVAL_60[37:36];
  assign _EVAL_22 = _EVAL_43 ? _EVAL_52 : _EVAL_25;
  assign _EVAL_9 = _EVAL_60[39:38];
  assign _EVAL_7 = _EVAL_43 ? _EVAL_48 : _EVAL_16;
  assign _EVAL_27 = ~_EVAL_34;
  assign _EVAL_60 = _EVAL_22 ? _EVAL_55 : 43'h0;
  assign _EVAL_41 = {_EVAL_32, 1'h0};
  assign _EVAL_1 = _EVAL_60[0];
  assign _EVAL_48 = _EVAL_14 & _EVAL_59;
  assign _EVAL_57 = _EVAL_0 & _EVAL_45;
  assign _EVAL_33 = _EVAL_43 & _EVAL_0;
  assign _EVAL_16 = _EVAL_25 & _EVAL_48;
  assign _EVAL_51 = 3'h7 == _EVAL_12 ? 3'h4 : _EVAL_36;
  assign _EVAL_61 = _EVAL_0 & _EVAL_47;
  assign _EVAL_37 = 3'h4 == _EVAL_12 ? 3'h1 : _EVAL_42;
  assign _EVAL_62 = {_EVAL_48,1'h0};
  assign _EVAL_13 = _EVAL_57 & _EVAL_59;
  assign _EVAL_49 = _EVAL_38 & _EVAL_19;
  assign _EVAL_19 = _EVAL_51 == 3'h4;
  assign _EVAL_31 = _EVAL_39[0];
  assign _EVAL_32 = _EVAL_62 | _EVAL_40;
  assign _EVAL_34 = _EVAL_41[1:0];
  assign _EVAL_24 = _EVAL_51[0];
  assign _EVAL_35 = 3'h5 == _EVAL_12 ? 3'h2 : _EVAL_37;
  assign _EVAL_52 = _EVAL_46 & _EVAL_48;
  assign _EVAL_47 = _EVAL_43 ? _EVAL_48 : _EVAL_16;
  assign _EVAL_42 = 3'h3 == _EVAL_12 ? 3'h1 : _EVAL_26;
  assign _EVAL_45 = _EVAL_43 ? _EVAL_46 : _EVAL_25;
  assign _EVAL_17 = {_EVAL_62, 1'h0};
  assign _EVAL_4 = _EVAL_60[32:1];
  assign _EVAL_39 = _EVAL_44 - _EVAL_61;
  assign _EVAL_46 = _EVAL_27[1];
  assign _EVAL_40 = _EVAL_17[1:0];
  assign _EVAL_55 = {_EVAL_51,2'h0,3'h4,2'h1,32'h0,_EVAL_24};
  assign _EVAL_36 = 3'h6 == _EVAL_12 ? 3'h4 : _EVAL_35;
  assign _EVAL_3 = _EVAL_60[42:40];
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
  _EVAL_25 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _EVAL_44 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _EVAL_59 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_11) begin
    _EVAL_25 = 1'h0;
  end
  if (_EVAL_11) begin
    _EVAL_44 = 1'h0;
  end
  if (_EVAL_11) begin
    _EVAL_59 = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_5 or posedge _EVAL_11) begin
    if (_EVAL_11) begin
      _EVAL_25 <= 1'h0;
    end else if (_EVAL_43) begin
      _EVAL_25 <= _EVAL_52;
    end
  end
  always @(posedge _EVAL_5 or posedge _EVAL_11) begin
    if (_EVAL_11) begin
      _EVAL_44 <= 1'h0;
    end else if (_EVAL_33) begin
      _EVAL_44 <= 1'h0;
    end else begin
      _EVAL_44 <= _EVAL_31;
    end
  end
  always @(posedge _EVAL_5 or posedge _EVAL_11) begin
    if (_EVAL_11) begin
      _EVAL_59 <= 1'h1;
    end else if (_EVAL_49) begin
      _EVAL_59 <= 1'h0;
    end
  end
endmodule
