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
module _EVAL_183(
  input        _EVAL,
  input        _EVAL_0,
  input        _EVAL_1,
  output [3:0] _EVAL_2
);
  wire  _EVAL_23;
  reg [3:0] _EVAL_24;
  reg [31:0] _RAND_0;
  wire  _EVAL_33;
  wire  _EVAL_40;
  wire  _EVAL_45;
  wire  _EVAL_55;
  wire  _EVAL_60;
  wire  _EVAL_61;
  wire  _EVAL_62;
  wire  _EVAL_70;
  wire  _EVAL_74;
  wire  _EVAL_75;
  wire  _EVAL_89;
  wire  _EVAL_91;
  wire  _EVAL_94;
  wire  _EVAL_100;
  wire  _EVAL_103;
  assign _EVAL_23 = 4'h5 == _EVAL_24;
  assign _EVAL_91 = 4'he == _EVAL_24;
  assign _EVAL_74 = 4'h9 == _EVAL_24;
  assign _EVAL_70 = 4'hd == _EVAL_24;
  assign _EVAL_2 = _EVAL_24;
  assign _EVAL_103 = 4'h3 == _EVAL_24;
  assign _EVAL_60 = 4'h1 == _EVAL_24;
  assign _EVAL_100 = 4'hb == _EVAL_24;
  assign _EVAL_61 = 4'ha == _EVAL_24;
  assign _EVAL_89 = 4'h7 == _EVAL_24;
  assign _EVAL_40 = 4'h8 == _EVAL_24;
  assign _EVAL_94 = 4'h4 == _EVAL_24;
  assign _EVAL_33 = 4'h6 == _EVAL_24;
  assign _EVAL_55 = 4'hc == _EVAL_24;
  assign _EVAL_45 = 4'hf == _EVAL_24;
  assign _EVAL_75 = 4'h2 == _EVAL_24;
  assign _EVAL_62 = 4'h0 == _EVAL_24;
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
  _EVAL_24 = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  if (_EVAL_0) begin
    _EVAL_24 = 4'hf;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge _EVAL_1 or posedge _EVAL_0) begin
    if (_EVAL_0) begin
      _EVAL_24 <= 4'hf;
    end else if (_EVAL_45) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'hf;
      end else begin
        _EVAL_24 <= 4'hc;
      end
    end else if (_EVAL_55) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h7;
      end else begin
        _EVAL_24 <= 4'hc;
      end
    end else if (_EVAL_89) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h4;
      end else begin
        _EVAL_24 <= 4'h6;
      end
    end else if (_EVAL_33) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h1;
      end else begin
        _EVAL_24 <= 4'h2;
      end
    end else if (_EVAL_75) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h1;
      end else begin
        _EVAL_24 <= 4'h2;
      end
    end else if (_EVAL_60) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h5;
      end else begin
        _EVAL_24 <= 4'h3;
      end
    end else if (_EVAL_103) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h0;
      end else begin
        _EVAL_24 <= 4'h3;
      end
    end else if (_EVAL_62) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h5;
      end else begin
        _EVAL_24 <= 4'h2;
      end
    end else if (_EVAL_23) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h7;
      end else begin
        _EVAL_24 <= 4'hc;
      end
    end else if (_EVAL_94) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'hf;
      end else begin
        _EVAL_24 <= 4'he;
      end
    end else if (_EVAL_91) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h9;
      end else begin
        _EVAL_24 <= 4'ha;
      end
    end else if (_EVAL_61) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h9;
      end else begin
        _EVAL_24 <= 4'ha;
      end
    end else if (_EVAL_74) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'hd;
      end else begin
        _EVAL_24 <= 4'hb;
      end
    end else if (_EVAL_100) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h8;
      end else begin
        _EVAL_24 <= 4'hb;
      end
    end else if (_EVAL_40) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'hd;
      end else begin
        _EVAL_24 <= 4'ha;
      end
    end else if (_EVAL_70) begin
      if (_EVAL) begin
        _EVAL_24 <= 4'h7;
      end else begin
        _EVAL_24 <= 4'hc;
      end
    end else begin
      _EVAL_24 <= 4'hf;
    end
  end
endmodule
