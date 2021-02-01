module Rx(
  input         clock,
  input         reset,
  input  [15:0] io_CLK_PER_BIT,
  input         io_rxd,
  output        io_valid,
  output [7:0]  io_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] stateReg; // @[Rx.scala 19:25]
  reg [7:0] clockCount; // @[Rx.scala 21:27]
  reg [3:0] bitIndex; // @[Rx.scala 22:25]
  reg  validReg; // @[Rx.scala 23:25]
  reg  _T; // @[Rx.scala 25:30]
  reg  rxReg; // @[Rx.scala 25:22]
  reg [7:0] shiftReg; // @[Rx.scala 26:25]
  wire  _T_1 = 3'h0 == stateReg; // @[Conditional.scala 37:30]
  wire  _T_2 = ~io_rxd; // @[Rx.scala 34:19]
  wire  _T_3 = 3'h1 == stateReg; // @[Conditional.scala 37:30]
  wire [31:0] CLCK_PER_BIT = {{16'd0}, io_CLK_PER_BIT}; // @[Rx.scala 15:36 Rx.scala 16:16]
  wire [31:0] _T_5 = CLCK_PER_BIT - 32'h1; // @[Rx.scala 42:42]
  wire [31:0] _T_6 = _T_5 / 32'h2; // @[Rx.scala 42:49]
  wire [31:0] _GEN_34 = {{24'd0}, clockCount}; // @[Rx.scala 42:23]
  wire  _T_7 = _GEN_34 == _T_6; // @[Rx.scala 42:23]
  wire [7:0] _T_10 = clockCount + 8'h1; // @[Rx.scala 50:34]
  wire  _T_11 = 3'h2 == stateReg; // @[Conditional.scala 37:30]
  wire  _T_14 = _GEN_34 < _T_5; // @[Rx.scala 56:23]
  wire [7:0] _T_18 = {rxReg,shiftReg[7:1]}; // @[Cat.scala 29:58]
  wire  _T_19 = bitIndex < 4'h7; // @[Rx.scala 64:23]
  wire [3:0] _T_21 = bitIndex + 4'h1; // @[Rx.scala 65:32]
  wire  _T_22 = 3'h3 == stateReg; // @[Conditional.scala 37:30]
  wire  _T_28 = 3'h4 == stateReg; // @[Conditional.scala 37:30]
  assign io_valid = validReg; // @[Rx.scala 93:12]
  assign io_data = shiftReg; // @[Rx.scala 91:11]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  stateReg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  clockCount = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  bitIndex = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  validReg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rxReg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  shiftReg = _RAND_6[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      stateReg <= 3'h0;
    end else if (_T_1) begin
      if (_T_2) begin
        stateReg <= 3'h1;
      end else begin
        stateReg <= 3'h0;
      end
    end else if (_T_3) begin
      if (_T_7) begin
        if (_T_2) begin
          stateReg <= 3'h2;
        end else begin
          stateReg <= 3'h0;
        end
      end else begin
        stateReg <= 3'h1;
      end
    end else if (_T_11) begin
      if (_T_14) begin
        stateReg <= 3'h2;
      end else if (_T_19) begin
        stateReg <= 3'h2;
      end else begin
        stateReg <= 3'h3;
      end
    end else if (_T_22) begin
      if (_T_14) begin
        stateReg <= 3'h3;
      end else begin
        stateReg <= 3'h4;
      end
    end else if (_T_28) begin
      stateReg <= 3'h0;
    end
    if (reset) begin
      clockCount <= 8'h0;
    end else if (_T_1) begin
      clockCount <= 8'h0;
    end else if (_T_3) begin
      if (_T_7) begin
        if (_T_2) begin
          clockCount <= 8'h0;
        end
      end else begin
        clockCount <= _T_10;
      end
    end else if (_T_11) begin
      if (_T_14) begin
        clockCount <= _T_10;
      end else begin
        clockCount <= 8'h0;
      end
    end else if (_T_22) begin
      if (_T_14) begin
        clockCount <= _T_10;
      end else begin
        clockCount <= 8'h0;
      end
    end
    if (reset) begin
      bitIndex <= 4'h0;
    end else if (_T_1) begin
      bitIndex <= 4'h0;
    end else if (!(_T_3)) begin
      if (_T_11) begin
        if (!(_T_14)) begin
          if (_T_19) begin
            bitIndex <= _T_21;
          end else begin
            bitIndex <= 4'h0;
          end
        end
      end
    end
    if (reset) begin
      validReg <= 1'h0;
    end else if (_T_1) begin
      validReg <= 1'h0;
    end else if (!(_T_3)) begin
      if (!(_T_11)) begin
        if (_T_22) begin
          if (!(_T_14)) begin
            validReg <= 1'h1;
          end
        end else if (_T_28) begin
          validReg <= 1'h0;
        end
      end
    end
    _T <= reset | io_rxd;
    rxReg <= reset | _T;
    if (reset) begin
      shiftReg <= 8'h41;
    end else if (!(_T_1)) begin
      if (!(_T_3)) begin
        if (_T_11) begin
          if (!(_T_14)) begin
            shiftReg <= _T_18;
          end
        end
      end
    end
  end
endmodule
module UartController(
  input         clock,
  input         reset,
  input         io_isStalled,
  output [31:0] io_rx_data_o,
  output [7:0]  io_addr_o,
  input  [15:0] io_CLK_PER_BIT,
  input         io_rxd,
  output        io_valid,
  output        io_done
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire  rx_clock; // @[UartController.scala 25:18]
  wire  rx_reset; // @[UartController.scala 25:18]
  wire [15:0] rx_io_CLK_PER_BIT; // @[UartController.scala 25:18]
  wire  rx_io_rxd; // @[UartController.scala 25:18]
  wire  rx_io_valid; // @[UartController.scala 25:18]
  wire [7:0] rx_io_data; // @[UartController.scala 25:18]
  reg  regDone; // @[UartController.scala 19:24]
  reg [2:0] count; // @[UartController.scala 20:22]
  reg [31:0] regFinalData; // @[UartController.scala 21:29]
  reg [13:0] regAddr; // @[UartController.scala 22:24]
  reg  regValid; // @[UartController.scala 23:25]
  reg [7:0] dataReg; // @[UartController.scala 30:24]
  reg [7:0] regLSB1; // @[UartController.scala 31:24]
  reg [7:0] regLSB2; // @[UartController.scala 32:24]
  reg [7:0] regMSB1; // @[UartController.scala 33:24]
  wire  _T = ~regDone; // @[UartController.scala 36:24]
  wire  _T_1 = io_isStalled & _T; // @[UartController.scala 36:21]
  wire  _T_2 = rx_io_valid; // @[UartController.scala 37:22]
  wire [2:0] _T_4 = count + 3'h1; // @[UartController.scala 41:22]
  wire  _T_5 = 3'h1 == count; // @[Conditional.scala 37:30]
  wire  _T_6 = 3'h2 == count; // @[Conditional.scala 37:30]
  wire  _T_7 = 3'h3 == count; // @[Conditional.scala 37:30]
  wire  _T_8 = 3'h4 == count; // @[Conditional.scala 37:30]
  wire [31:0] _T_11 = {dataReg,regMSB1,regLSB2,regLSB1}; // @[Cat.scala 29:58]
  wire  _T_12 = _T_11 == 32'hfff; // @[UartController.scala 58:17]
  wire [13:0] _T_14 = regAddr + 14'h1; // @[UartController.scala 65:28]
  wire  _GEN_6 = _T_12 | regDone; // @[UartController.scala 58:36]
  wire  _T_15 = count == 3'h4; // @[UartController.scala 72:14]
  Rx rx ( // @[UartController.scala 25:18]
    .clock(rx_clock),
    .reset(rx_reset),
    .io_CLK_PER_BIT(rx_io_CLK_PER_BIT),
    .io_rxd(rx_io_rxd),
    .io_valid(rx_io_valid),
    .io_data(rx_io_data)
  );
  assign io_rx_data_o = regFinalData; // @[UartController.scala 77:16]
  assign io_addr_o = regAddr[7:0]; // @[UartController.scala 76:13]
  assign io_valid = regValid; // @[UartController.scala 78:12]
  assign io_done = regDone; // @[UartController.scala 79:11]
  assign rx_clock = clock;
  assign rx_reset = reset;
  assign rx_io_CLK_PER_BIT = io_CLK_PER_BIT; // @[UartController.scala 27:21]
  assign rx_io_rxd = io_rxd; // @[UartController.scala 28:13]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  regDone = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  count = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  regFinalData = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regAddr = _RAND_3[13:0];
  _RAND_4 = {1{`RANDOM}};
  regValid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  dataReg = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  regLSB1 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  regLSB2 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  regMSB1 = _RAND_8[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      regDone <= 1'h0;
    end else if (!(_T_5)) begin
      if (!(_T_6)) begin
        if (!(_T_7)) begin
          if (_T_8) begin
            regDone <= _GEN_6;
          end
        end
      end
    end
    if (reset) begin
      count <= 3'h0;
    end else if (_T_15) begin
      count <= 3'h0;
    end else if (_T_1) begin
      if (_T_2) begin
        count <= _T_4;
      end
    end
    if (reset) begin
      regFinalData <= 32'h0;
    end else if (!(_T_5)) begin
      if (!(_T_6)) begin
        if (!(_T_7)) begin
          if (_T_8) begin
            if (_T_12) begin
              regFinalData <= 32'h0;
            end else begin
              regFinalData <= _T_11;
            end
          end
        end
      end
    end
    if (reset) begin
      regAddr <= 14'h3fff;
    end else if (!(_T_5)) begin
      if (!(_T_6)) begin
        if (!(_T_7)) begin
          if (_T_8) begin
            if (_T_12) begin
              regAddr <= 14'h0;
            end else begin
              regAddr <= _T_14;
            end
          end
        end
      end
    end
    if (reset) begin
      regValid <= 1'h0;
    end else if (_T_5) begin
      if (_T_1) begin
        if (_T_2) begin
          regValid <= 1'h0;
        end
      end
    end else if (_T_6) begin
      if (_T_1) begin
        if (_T_2) begin
          regValid <= 1'h0;
        end
      end
    end else if (_T_7) begin
      if (_T_1) begin
        if (_T_2) begin
          regValid <= 1'h0;
        end
      end
    end else if (_T_8) begin
      if (_T_12) begin
        regValid <= 1'h0;
      end else begin
        regValid <= 1'h1;
      end
    end else if (_T_1) begin
      if (_T_2) begin
        regValid <= 1'h0;
      end
    end
    if (reset) begin
      dataReg <= 8'h0;
    end else if (_T_1) begin
      if (_T_2) begin
        dataReg <= rx_io_data;
      end
    end
    if (reset) begin
      regLSB1 <= 8'h0;
    end else if (_T_5) begin
      regLSB1 <= dataReg;
    end
    if (reset) begin
      regLSB2 <= 8'h0;
    end else if (!(_T_5)) begin
      if (_T_6) begin
        regLSB2 <= dataReg;
      end
    end
    if (reset) begin
      regMSB1 <= 8'h0;
    end else if (!(_T_5)) begin
      if (!(_T_6)) begin
        if (_T_7) begin
          regMSB1 <= dataReg;
        end
      end
    end
  end
endmodule
module ID_EX(
  input         clock,
  input         reset,
  input  [31:0] io_pc_in,
  input  [31:0] io_pc4_in,
  input  [4:0]  io_rs1_sel_in,
  input  [4:0]  io_rs2_sel_in,
  input  [31:0] io_rs1_in,
  input  [31:0] io_rs2_in,
  input  [31:0] io_imm,
  input  [4:0]  io_rd_sel_in,
  input  [2:0]  io_func3_in,
  input  [6:0]  io_func7_in,
  input         io_ctrl_MemWr_in,
  input         io_ctrl_MemRd_in,
  input         io_ctrl_CsrWen_in,
  input         io_ctrl_RegWr_in,
  input         io_ctrl_MemToReg_in,
  input  [3:0]  io_ctrl_AluOp_in,
  input  [1:0]  io_ctrl_OpA_sel_in,
  input         io_ctrl_OpB_sel_in,
  input  [6:0]  io_inst_op_in,
  input  [31:0] io_csr_data_i,
  input         io_stall,
  output [31:0] io_pc_out,
  output [31:0] io_pc4_out,
  output [31:0] io_rs1_out,
  output [31:0] io_rs2_out,
  output [31:0] io_imm_out,
  output [2:0]  io_func3_out,
  output [6:0]  io_func7_out,
  output [6:0]  io_inst_op_out,
  output [4:0]  io_rd_sel_out,
  output [4:0]  io_rs1_sel_out,
  output [4:0]  io_rs2_sel_out,
  output        io_ctrl_MemWr_out,
  output        io_ctrl_MemRd_out,
  output        io_ctrl_RegWr_out,
  output        io_ctrl_CsrWen_out,
  output        io_ctrl_MemToReg_out,
  output [3:0]  io_ctrl_AluOp_out,
  output [1:0]  io_ctrl_OpA_sel_out,
  output        io_ctrl_OpB_sel_out,
  output [31:0] io_csr_data_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc_reg; // @[ID_EX.scala 59:25]
  reg [31:0] pc4_reg; // @[ID_EX.scala 60:26]
  reg [31:0] rs1_reg; // @[ID_EX.scala 61:26]
  reg [31:0] rs2_reg; // @[ID_EX.scala 62:26]
  reg [31:0] imm_reg; // @[ID_EX.scala 63:26]
  reg [4:0] rd_sel_reg; // @[ID_EX.scala 64:29]
  reg [4:0] rs1_sel_reg; // @[ID_EX.scala 65:30]
  reg [4:0] rs2_sel_reg; // @[ID_EX.scala 66:30]
  reg [2:0] func3_reg; // @[ID_EX.scala 67:28]
  reg [6:0] func7_reg; // @[ID_EX.scala 68:28]
  reg [6:0] inst_op_reg; // @[ID_EX.scala 69:30]
  reg [31:0] csr_data_reg; // @[ID_EX.scala 71:31]
  reg  ctrl_MemWr_reg; // @[ID_EX.scala 73:33]
  reg  ctrl_MemRd_reg; // @[ID_EX.scala 74:33]
  reg  ctrl_RegWr_reg; // @[ID_EX.scala 76:33]
  reg  ctrl_CsrWen_reg; // @[ID_EX.scala 77:34]
  reg  ctrl_MemToReg_reg; // @[ID_EX.scala 78:36]
  reg [3:0] ctrl_AluOp_reg; // @[ID_EX.scala 79:33]
  reg [1:0] ctrl_OpA_sel_reg; // @[ID_EX.scala 80:35]
  reg  ctrl_OpB_sel_reg; // @[ID_EX.scala 81:35]
  wire  _T = ~io_stall; // @[ID_EX.scala 85:19]
  assign io_pc_out = pc_reg; // @[ID_EX.scala 113:19 ID_EX.scala 140:19]
  assign io_pc4_out = pc4_reg; // @[ID_EX.scala 114:20 ID_EX.scala 141:20]
  assign io_rs1_out = rs1_reg; // @[ID_EX.scala 115:20 ID_EX.scala 142:20]
  assign io_rs2_out = rs2_reg; // @[ID_EX.scala 116:20 ID_EX.scala 143:20]
  assign io_imm_out = imm_reg; // @[ID_EX.scala 118:20 ID_EX.scala 145:20]
  assign io_func3_out = func3_reg; // @[ID_EX.scala 122:22 ID_EX.scala 149:22]
  assign io_func7_out = func7_reg; // @[ID_EX.scala 123:22 ID_EX.scala 150:22]
  assign io_inst_op_out = inst_op_reg; // @[ID_EX.scala 124:24 ID_EX.scala 151:24]
  assign io_rd_sel_out = rd_sel_reg; // @[ID_EX.scala 119:23 ID_EX.scala 146:23]
  assign io_rs1_sel_out = rs1_sel_reg; // @[ID_EX.scala 120:24 ID_EX.scala 147:24]
  assign io_rs2_sel_out = rs2_sel_reg; // @[ID_EX.scala 121:24 ID_EX.scala 148:24]
  assign io_ctrl_MemWr_out = ctrl_MemWr_reg; // @[ID_EX.scala 126:27 ID_EX.scala 154:27]
  assign io_ctrl_MemRd_out = ctrl_MemRd_reg; // @[ID_EX.scala 127:27 ID_EX.scala 155:27]
  assign io_ctrl_RegWr_out = ctrl_RegWr_reg; // @[ID_EX.scala 129:27 ID_EX.scala 157:27]
  assign io_ctrl_CsrWen_out = ctrl_CsrWen_reg; // @[ID_EX.scala 130:28 ID_EX.scala 158:28]
  assign io_ctrl_MemToReg_out = ctrl_MemToReg_reg; // @[ID_EX.scala 131:30 ID_EX.scala 159:30]
  assign io_ctrl_AluOp_out = ctrl_AluOp_reg; // @[ID_EX.scala 132:27 ID_EX.scala 160:27]
  assign io_ctrl_OpA_sel_out = ctrl_OpA_sel_reg; // @[ID_EX.scala 133:29 ID_EX.scala 161:29]
  assign io_ctrl_OpB_sel_out = ctrl_OpB_sel_reg; // @[ID_EX.scala 134:29 ID_EX.scala 162:29]
  assign io_csr_data_o = csr_data_reg; // @[ID_EX.scala 117:23 ID_EX.scala 144:23]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  pc_reg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  pc4_reg = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  rs1_reg = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  rs2_reg = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  imm_reg = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  rd_sel_reg = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  rs1_sel_reg = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  rs2_sel_reg = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  func3_reg = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  func7_reg = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  inst_op_reg = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  csr_data_reg = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  ctrl_MemWr_reg = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  ctrl_MemRd_reg = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  ctrl_RegWr_reg = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  ctrl_CsrWen_reg = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  ctrl_MemToReg_reg = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  ctrl_AluOp_reg = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  ctrl_OpA_sel_reg = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  ctrl_OpB_sel_reg = _RAND_19[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pc_reg <= 32'sh0;
    end else if (_T) begin
      pc_reg <= io_pc_in;
    end
    if (reset) begin
      pc4_reg <= 32'sh0;
    end else if (_T) begin
      pc4_reg <= io_pc4_in;
    end
    if (reset) begin
      rs1_reg <= 32'sh0;
    end else if (_T) begin
      rs1_reg <= io_rs1_in;
    end
    if (reset) begin
      rs2_reg <= 32'sh0;
    end else if (_T) begin
      rs2_reg <= io_rs2_in;
    end
    if (reset) begin
      imm_reg <= 32'sh0;
    end else if (_T) begin
      imm_reg <= io_imm;
    end
    if (reset) begin
      rd_sel_reg <= 5'h0;
    end else if (_T) begin
      rd_sel_reg <= io_rd_sel_in;
    end
    if (reset) begin
      rs1_sel_reg <= 5'h0;
    end else if (_T) begin
      rs1_sel_reg <= io_rs1_sel_in;
    end
    if (reset) begin
      rs2_sel_reg <= 5'h0;
    end else if (_T) begin
      rs2_sel_reg <= io_rs2_sel_in;
    end
    if (reset) begin
      func3_reg <= 3'h0;
    end else if (_T) begin
      func3_reg <= io_func3_in;
    end
    if (reset) begin
      func7_reg <= 7'h0;
    end else if (_T) begin
      func7_reg <= io_func7_in;
    end
    if (reset) begin
      inst_op_reg <= 7'h0;
    end else if (_T) begin
      inst_op_reg <= io_inst_op_in;
    end
    if (reset) begin
      csr_data_reg <= 32'h0;
    end else if (_T) begin
      csr_data_reg <= io_csr_data_i;
    end
    if (reset) begin
      ctrl_MemWr_reg <= 1'h0;
    end else if (_T) begin
      ctrl_MemWr_reg <= io_ctrl_MemWr_in;
    end
    if (reset) begin
      ctrl_MemRd_reg <= 1'h0;
    end else if (_T) begin
      ctrl_MemRd_reg <= io_ctrl_MemRd_in;
    end
    if (reset) begin
      ctrl_RegWr_reg <= 1'h0;
    end else if (_T) begin
      ctrl_RegWr_reg <= io_ctrl_RegWr_in;
    end
    if (reset) begin
      ctrl_CsrWen_reg <= 1'h0;
    end else if (_T) begin
      ctrl_CsrWen_reg <= io_ctrl_CsrWen_in;
    end
    if (reset) begin
      ctrl_MemToReg_reg <= 1'h0;
    end else if (_T) begin
      ctrl_MemToReg_reg <= io_ctrl_MemToReg_in;
    end
    if (reset) begin
      ctrl_AluOp_reg <= 4'h0;
    end else if (_T) begin
      ctrl_AluOp_reg <= io_ctrl_AluOp_in;
    end
    if (reset) begin
      ctrl_OpA_sel_reg <= 2'h0;
    end else if (_T) begin
      ctrl_OpA_sel_reg <= io_ctrl_OpA_sel_in;
    end
    if (reset) begin
      ctrl_OpB_sel_reg <= 1'h0;
    end else if (_T) begin
      ctrl_OpB_sel_reg <= io_ctrl_OpB_sel_in;
    end
  end
endmodule
module EX_MEM(
  input         clock,
  input         reset,
  input         io_ctrl_MemWr_in,
  input         io_ctrl_MemRd_in,
  input         io_ctrl_RegWr_in,
  input         io_ctrl_CsrWen_in,
  input         io_ctrl_MemToReg_in,
  input  [31:0] io_rs2_in,
  input  [4:0]  io_rd_sel_in,
  input  [31:0] io_alu_in,
  input  [2:0]  io_EX_MEM_func3,
  input  [31:0] io_csr_data_i,
  input         io_stall,
  output        io_ctrl_MemWr_out,
  output        io_ctrl_MemRd_out,
  output        io_ctrl_RegWr_out,
  output        io_ctrl_CsrWen_out,
  output        io_ctrl_MemToReg_out,
  output [31:0] io_rs2_out,
  output [4:0]  io_rd_sel_out,
  output [31:0] io_alu_output,
  output [2:0]  io_EX_MEM_func3_out,
  output [31:0] io_csr_data_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  reg  reg_memWr; // @[EX_MEM.scala 37:32]
  reg  reg_memRd; // @[EX_MEM.scala 38:32]
  reg  reg_regWr; // @[EX_MEM.scala 39:32]
  reg  reg_csrWen; // @[EX_MEM.scala 40:33]
  reg  reg_memToReg; // @[EX_MEM.scala 41:35]
  reg [31:0] reg_rs2; // @[EX_MEM.scala 42:30]
  reg [4:0] reg_rd_sel; // @[EX_MEM.scala 43:33]
  reg [31:0] reg_alu_output; // @[EX_MEM.scala 45:37]
  reg [2:0] reg_func3; // @[EX_MEM.scala 46:37]
  reg [31:0] reg_csr_data; // @[EX_MEM.scala 49:35]
  wire  _T = ~io_stall; // @[EX_MEM.scala 51:19]
  assign io_ctrl_MemWr_out = reg_memWr; // @[EX_MEM.scala 82:23]
  assign io_ctrl_MemRd_out = reg_memRd; // @[EX_MEM.scala 83:23]
  assign io_ctrl_RegWr_out = reg_regWr; // @[EX_MEM.scala 84:23]
  assign io_ctrl_CsrWen_out = reg_csrWen; // @[EX_MEM.scala 85:24]
  assign io_ctrl_MemToReg_out = reg_memToReg; // @[EX_MEM.scala 86:26]
  assign io_rs2_out = reg_rs2; // @[EX_MEM.scala 87:16]
  assign io_rd_sel_out = reg_rd_sel; // @[EX_MEM.scala 88:19]
  assign io_alu_output = reg_alu_output; // @[EX_MEM.scala 90:19]
  assign io_EX_MEM_func3_out = reg_func3; // @[EX_MEM.scala 91:25]
  assign io_csr_data_o = reg_csr_data; // @[EX_MEM.scala 94:19]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  reg_memWr = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reg_memRd = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  reg_regWr = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reg_csrWen = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  reg_memToReg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  reg_rs2 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_rd_sel = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  reg_alu_output = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  reg_func3 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  reg_csr_data = _RAND_9[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_memWr <= 1'h0;
    end else if (_T) begin
      reg_memWr <= io_ctrl_MemWr_in;
    end
    if (reset) begin
      reg_memRd <= 1'h0;
    end else if (_T) begin
      reg_memRd <= io_ctrl_MemRd_in;
    end
    if (reset) begin
      reg_regWr <= 1'h0;
    end else if (_T) begin
      reg_regWr <= io_ctrl_RegWr_in;
    end
    if (reset) begin
      reg_csrWen <= 1'h0;
    end else if (_T) begin
      reg_csrWen <= io_ctrl_CsrWen_in;
    end
    if (reset) begin
      reg_memToReg <= 1'h0;
    end else if (_T) begin
      reg_memToReg <= io_ctrl_MemToReg_in;
    end
    if (reset) begin
      reg_rs2 <= 32'sh0;
    end else if (_T) begin
      reg_rs2 <= io_rs2_in;
    end
    if (reset) begin
      reg_rd_sel <= 5'h0;
    end else if (_T) begin
      reg_rd_sel <= io_rd_sel_in;
    end
    if (reset) begin
      reg_alu_output <= 32'sh0;
    end else if (_T) begin
      reg_alu_output <= io_alu_in;
    end
    if (reset) begin
      reg_func3 <= 3'h0;
    end else if (_T) begin
      reg_func3 <= io_EX_MEM_func3;
    end
    if (reset) begin
      reg_csr_data <= 32'h0;
    end else if (_T) begin
      reg_csr_data <= io_csr_data_i;
    end
  end
endmodule
module MEM_WB(
  input         clock,
  input         reset,
  input         io_ctrl_RegWr_in,
  input         io_ctrl_CsrWen_in,
  input         io_ctrl_MemToReg_in,
  input  [4:0]  io_rd_sel_in,
  input         io_ctrl_MemRd_in,
  input  [31:0] io_dmem_data_in,
  input  [31:0] io_alu_in,
  input  [31:0] io_csr_data_in,
  input         io_stall,
  output        io_ctrl_RegWr_out,
  output        io_ctrl_CsrWen_out,
  output        io_ctrl_MemToReg_out,
  output        io_ctrl_MemRd_out,
  output [4:0]  io_rd_sel_out,
  output [31:0] io_dmem_data_out,
  output [31:0] io_alu_output,
  output [31:0] io_csr_data_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg  reg_regWr; // @[MEM_WB.scala 32:28]
  reg  reg_csrWen; // @[MEM_WB.scala 34:29]
  reg  reg_memToReg; // @[MEM_WB.scala 36:31]
  reg  reg_memRd; // @[MEM_WB.scala 38:28]
  reg [4:0] reg_rdSel; // @[MEM_WB.scala 40:28]
  reg [31:0] reg_dataMem_data; // @[MEM_WB.scala 42:35]
  reg [31:0] reg_alu_output; // @[MEM_WB.scala 44:33]
  reg [31:0] reg_csr_data; // @[MEM_WB.scala 50:31]
  wire  _T = ~io_stall; // @[MEM_WB.scala 52:19]
  assign io_ctrl_RegWr_out = reg_regWr; // @[MEM_WB.scala 65:27 MEM_WB.scala 76:27]
  assign io_ctrl_CsrWen_out = reg_csrWen; // @[MEM_WB.scala 66:28 MEM_WB.scala 77:28]
  assign io_ctrl_MemToReg_out = reg_memToReg; // @[MEM_WB.scala 64:30 MEM_WB.scala 75:30]
  assign io_ctrl_MemRd_out = reg_memRd; // @[MEM_WB.scala 67:27 MEM_WB.scala 78:27]
  assign io_rd_sel_out = reg_rdSel; // @[MEM_WB.scala 68:23 MEM_WB.scala 79:23]
  assign io_dmem_data_out = reg_dataMem_data; // @[MEM_WB.scala 69:26 MEM_WB.scala 80:26]
  assign io_alu_output = reg_alu_output; // @[MEM_WB.scala 70:23 MEM_WB.scala 81:23]
  assign io_csr_data_out = reg_csr_data; // @[MEM_WB.scala 73:25 MEM_WB.scala 84:25]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  reg_regWr = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reg_csrWen = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  reg_memToReg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reg_memRd = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  reg_rdSel = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  reg_dataMem_data = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_alu_output = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reg_csr_data = _RAND_7[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_regWr <= 1'h0;
    end else if (_T) begin
      reg_regWr <= io_ctrl_RegWr_in;
    end
    if (reset) begin
      reg_csrWen <= 1'h0;
    end else if (_T) begin
      reg_csrWen <= io_ctrl_CsrWen_in;
    end
    if (reset) begin
      reg_memToReg <= 1'h0;
    end else if (_T) begin
      reg_memToReg <= io_ctrl_MemToReg_in;
    end
    if (reset) begin
      reg_memRd <= 1'h0;
    end else if (_T) begin
      reg_memRd <= io_ctrl_MemRd_in;
    end
    if (reset) begin
      reg_rdSel <= 5'h0;
    end else if (_T) begin
      reg_rdSel <= io_rd_sel_in;
    end
    if (reset) begin
      reg_dataMem_data <= 32'sh0;
    end else if (_T) begin
      reg_dataMem_data <= io_dmem_data_in;
    end
    if (reset) begin
      reg_alu_output <= 32'sh0;
    end else if (_T) begin
      reg_alu_output <= io_alu_in;
    end
    if (reset) begin
      reg_csr_data <= 32'h0;
    end else if (_T) begin
      reg_csr_data <= io_csr_data_in;
    end
  end
endmodule
module Pc(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out,
  output [31:0] io_pc4
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] _T_2 = 32'sh30 - 32'sh4; // @[Pc.scala 13:30]
  reg [31:0] reg_; // @[Pc.scala 13:18]
  assign io_out = reg_; // @[Pc.scala 16:12]
  assign io_pc4 = $signed(reg_) + 32'sh4; // @[Pc.scala 15:12]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  reg_ = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_ <= _T_2;
    end else begin
      reg_ <= io_in;
    end
  end
endmodule
module Fetch(
  input         clock,
  input         reset,
  input         io_core_instr_gnt_i,
  input         io_core_instr_rvalid_i,
  input  [31:0] io_core_instr_rdata_i,
  input         io_csrRegFile_irq_pending_i,
  input         io_csrRegFile_csr_mstatus_mie_i,
  input  [31:0] io_csrRegFile_csr_mtvec_i,
  output        io_csrRegFile_csr_mtvec_init_o,
  output        io_csrRegFile_csr_save_cause_o,
  output        io_csrRegFile_csr_save_if_o,
  output [31:0] io_csrRegFile_csr_if_pc_o,
  output [5:0]  io_csrRegFile_exc_cause_o,
  input  [31:0] io_csrRegFile_csr_mepc_i,
  input         io_core_init_mtvec_i,
  input  [31:0] io_decode_sb_imm_i,
  input  [31:0] io_decode_uj_imm_i,
  input  [31:0] io_decode_jalr_imm_i,
  input  [1:0]  io_decode_ctrl_next_pc_sel_i,
  input         io_decode_ctrl_out_branch_i,
  input         io_decode_branchLogic_output_i,
  input  [31:0] io_decode_hazardDetection_pc_i,
  input  [31:0] io_decode_hazardDetection_inst_i,
  input  [31:0] io_decode_hazardDetection_current_pc_i,
  input         io_decode_hazardDetection_pc_forward_i,
  input         io_decode_hazardDetection_inst_forward_i,
  input         io_decode_mret_inst_i,
  input         io_core_stall_i,
  output [31:0] io_core_instr_addr_o,
  output        io_core_instr_req_o,
  output [31:0] io_decode_if_id_pc_o,
  output [31:0] io_decode_if_id_pc4_o,
  output [31:0] io_decode_if_id_inst_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  pc_clock; // @[Fetch.scala 94:18]
  wire  pc_reset; // @[Fetch.scala 94:18]
  wire [31:0] pc_io_in; // @[Fetch.scala 94:18]
  wire [31:0] pc_io_out; // @[Fetch.scala 94:18]
  wire [31:0] pc_io_pc4; // @[Fetch.scala 94:18]
  reg [31:0] if_id_pc_reg; // @[Fetch.scala 102:25]
  reg [31:0] if_id_pc4_reg; // @[Fetch.scala 103:26]
  reg [31:0] if_id_inst_reg; // @[Fetch.scala 104:31]
  wire  handle_irq = io_csrRegFile_irq_pending_i & io_csrRegFile_csr_mstatus_mie_i; // @[Fetch.scala 107:48]
  wire  _T_12 = ~io_core_stall_i; // @[Fetch.scala 127:8]
  wire  _T_13 = ~handle_irq; // @[Fetch.scala 127:28]
  wire  _T_14 = _T_12 & _T_13; // @[Fetch.scala 127:25]
  wire [31:0] _GEN_0 = _T_14 ? $signed(pc_io_out) : $signed(if_id_pc_reg); // @[Fetch.scala 127:38]
  wire  _T_23 = io_decode_ctrl_next_pc_sel_i == 2'h1; // @[Fetch.scala 163:41]
  wire  _T_26 = io_decode_branchLogic_output_i & io_decode_ctrl_out_branch_i; // @[Fetch.scala 164:53]
  wire [31:0] _GEN_6 = _T_26 ? $signed(io_decode_sb_imm_i) : $signed(pc_io_pc4); // @[Fetch.scala 164:93]
  wire  _T_27 = io_decode_ctrl_next_pc_sel_i == 2'h2; // @[Fetch.scala 172:47]
  wire  _T_28 = io_decode_ctrl_next_pc_sel_i == 2'h3; // @[Fetch.scala 177:47]
  wire [31:0] _GEN_10 = io_decode_mret_inst_i ? $signed(io_csrRegFile_csr_mepc_i) : $signed(pc_io_pc4); // @[Fetch.scala 182:41]
  wire [31:0] _GEN_14 = _T_28 ? $signed(io_decode_jalr_imm_i) : $signed(_GEN_10); // @[Fetch.scala 177:60]
  wire [31:0] _GEN_18 = _T_27 ? $signed(io_decode_uj_imm_i) : $signed(_GEN_14); // @[Fetch.scala 172:60]
  wire [31:0] _GEN_22 = _T_23 ? $signed(_GEN_6) : $signed(_GEN_18); // @[Fetch.scala 163:54]
  wire [31:0] _GEN_26 = io_decode_hazardDetection_pc_forward_i ? $signed(io_decode_hazardDetection_pc_i) : $signed(_GEN_22); // @[Fetch.scala 160:58]
  wire  _T_31 = _T_12 & handle_irq; // @[Fetch.scala 191:31]
  wire [31:0] _T_37 = {io_csrRegFile_csr_mtvec_i[31:8],1'h0,7'h2c}; // @[Fetch.scala 192:123]
  wire [31:0] _T_45 = _T_28 ? io_decode_jalr_imm_i : pc_io_out; // @[Fetch.scala 200:12]
  wire [31:0] _T_46 = _T_27 ? io_decode_uj_imm_i : _T_45; // @[Fetch.scala 199:10]
  wire [31:0] _T_47 = _T_23 ? io_decode_sb_imm_i : _T_46; // @[Fetch.scala 198:37]
  wire [31:0] _GEN_30 = _T_31 ? $signed(_T_37) : $signed(pc_io_out); // @[Fetch.scala 191:43]
  wire [31:0] _GEN_33 = _T_31 ? _T_47 : 32'h0; // @[Fetch.scala 191:43]
  wire [5:0] _GEN_34 = _T_31 ? 6'h2b : 6'h0; // @[Fetch.scala 191:43]
  Pc pc ( // @[Fetch.scala 94:18]
    .clock(pc_clock),
    .reset(pc_reset),
    .io_in(pc_io_in),
    .io_out(pc_io_out),
    .io_pc4(pc_io_pc4)
  );
  assign io_csrRegFile_csr_mtvec_init_o = io_core_init_mtvec_i; // @[Fetch.scala 114:34]
  assign io_csrRegFile_csr_save_cause_o = _T_14 ? 1'h0 : _T_31; // @[Fetch.scala 99:34 Fetch.scala 118:34 Fetch.scala 201:36]
  assign io_csrRegFile_csr_save_if_o = _T_14 ? 1'h0 : _T_31; // @[Fetch.scala 97:31 Fetch.scala 117:31 Fetch.scala 194:33]
  assign io_csrRegFile_csr_if_pc_o = _T_14 ? 32'h0 : _GEN_33; // @[Fetch.scala 98:29 Fetch.scala 198:31]
  assign io_csrRegFile_exc_cause_o = _T_14 ? 6'h0 : _GEN_34; // @[Fetch.scala 119:29 Fetch.scala 202:31]
  assign io_core_instr_addr_o = {{18'd0}, pc_io_in[13:0]}; // @[Fetch.scala 121:24]
  assign io_core_instr_req_o = io_core_instr_gnt_i; // @[Fetch.scala 123:23]
  assign io_decode_if_id_pc_o = if_id_pc_reg; // @[Fetch.scala 209:24]
  assign io_decode_if_id_pc4_o = if_id_pc4_reg; // @[Fetch.scala 210:25]
  assign io_decode_if_id_inst_o = if_id_inst_reg; // @[Fetch.scala 211:26]
  assign pc_clock = clock;
  assign pc_reset = reset;
  assign pc_io_in = _T_14 ? $signed(_GEN_26) : $signed(_GEN_30); // @[Fetch.scala 161:16 Fetch.scala 165:20 Fetch.scala 170:20 Fetch.scala 173:18 Fetch.scala 178:18 Fetch.scala 183:18 Fetch.scala 188:18 Fetch.scala 192:14 Fetch.scala 205:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  if_id_pc_reg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  if_id_pc4_reg = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  if_id_inst_reg = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_14) begin
      if (io_decode_hazardDetection_pc_forward_i) begin
        if (_T_14) begin
          if (io_decode_hazardDetection_inst_forward_i) begin
            if_id_pc_reg <= io_decode_hazardDetection_current_pc_i;
          end else if (_T_14) begin
            if_id_pc_reg <= pc_io_out;
          end
        end else if (_T_14) begin
          if_id_pc_reg <= pc_io_out;
        end
      end else if (_T_23) begin
        if (_T_26) begin
          if_id_pc_reg <= 32'sh0;
        end else if (_T_14) begin
          if (io_decode_hazardDetection_inst_forward_i) begin
            if_id_pc_reg <= io_decode_hazardDetection_current_pc_i;
          end else if (_T_14) begin
            if_id_pc_reg <= pc_io_out;
          end
        end else if (_T_14) begin
          if_id_pc_reg <= pc_io_out;
        end
      end else if (_T_27) begin
        if_id_pc_reg <= 32'sh0;
      end else if (_T_28) begin
        if_id_pc_reg <= 32'sh0;
      end else if (io_decode_mret_inst_i) begin
        if_id_pc_reg <= 32'sh0;
      end else if (_T_14) begin
        if (io_decode_hazardDetection_inst_forward_i) begin
          if_id_pc_reg <= io_decode_hazardDetection_current_pc_i;
        end else begin
          if_id_pc_reg <= _GEN_0;
        end
      end else begin
        if_id_pc_reg <= _GEN_0;
      end
    end else if (_T_14) begin
      if (io_decode_hazardDetection_inst_forward_i) begin
        if_id_pc_reg <= io_decode_hazardDetection_current_pc_i;
      end else begin
        if_id_pc_reg <= _GEN_0;
      end
    end else begin
      if_id_pc_reg <= _GEN_0;
    end
    if (_T_14) begin
      if (io_decode_hazardDetection_pc_forward_i) begin
        if (_T_14) begin
          if_id_pc4_reg <= pc_io_pc4;
        end
      end else if (_T_23) begin
        if (_T_26) begin
          if_id_pc4_reg <= 32'sh0;
        end else if (_T_14) begin
          if_id_pc4_reg <= pc_io_pc4;
        end
      end else if (_T_27) begin
        if_id_pc4_reg <= 32'sh0;
      end else if (_T_28) begin
        if_id_pc4_reg <= 32'sh0;
      end else if (io_decode_mret_inst_i) begin
        if_id_pc4_reg <= 32'sh0;
      end else if (_T_14) begin
        if_id_pc4_reg <= pc_io_pc4;
      end
    end else if (_T_14) begin
      if_id_pc4_reg <= pc_io_pc4;
    end
    if (reset) begin
      if_id_inst_reg <= 32'h13;
    end else if (_T_14) begin
      if (io_decode_hazardDetection_pc_forward_i) begin
        if (_T_14) begin
          if (io_decode_hazardDetection_inst_forward_i) begin
            if_id_inst_reg <= io_decode_hazardDetection_inst_i;
          end else if (io_core_instr_rvalid_i) begin
            if_id_inst_reg <= io_core_instr_rdata_i;
          end else begin
            if_id_inst_reg <= 32'h13;
          end
        end
      end else if (_T_23) begin
        if (_T_26) begin
          if_id_inst_reg <= 32'h13;
        end else if (_T_14) begin
          if (io_decode_hazardDetection_inst_forward_i) begin
            if_id_inst_reg <= io_decode_hazardDetection_inst_i;
          end else if (io_core_instr_rvalid_i) begin
            if_id_inst_reg <= io_core_instr_rdata_i;
          end else begin
            if_id_inst_reg <= 32'h13;
          end
        end
      end else if (_T_27) begin
        if_id_inst_reg <= 32'h13;
      end else if (_T_28) begin
        if_id_inst_reg <= 32'h13;
      end else if (io_decode_mret_inst_i) begin
        if_id_inst_reg <= 32'h13;
      end else if (_T_14) begin
        if (io_decode_hazardDetection_inst_forward_i) begin
          if_id_inst_reg <= io_decode_hazardDetection_inst_i;
        end else if (io_core_instr_rvalid_i) begin
          if_id_inst_reg <= io_core_instr_rdata_i;
        end else begin
          if_id_inst_reg <= 32'h13;
        end
      end
    end else if (_T_31) begin
      if_id_inst_reg <= 32'h13;
    end else if (_T_14) begin
      if (io_decode_hazardDetection_inst_forward_i) begin
        if_id_inst_reg <= io_decode_hazardDetection_inst_i;
      end else if (io_core_instr_rvalid_i) begin
        if_id_inst_reg <= io_core_instr_rdata_i;
      end else begin
        if_id_inst_reg <= 32'h13;
      end
    end
  end
endmodule
module HazardDetection(
  input  [31:0] io_IF_ID_INST,
  input         io_ID_EX_MEMREAD,
  input  [4:0]  io_ID_EX_REGRD,
  input  [31:0] io_pc_in,
  input  [31:0] io_current_pc,
  input         io_IF_ID_MEMREAD,
  output        io_inst_forward,
  output        io_pc_forward,
  output        io_ctrl_forward,
  output [31:0] io_inst_out,
  output [31:0] io_pc_out,
  output [31:0] io_current_pc_out
);
  wire [4:0] rs1_sel = io_IF_ID_INST[19:15]; // @[HazardDetection.scala 20:30]
  wire [4:0] rs2_sel = io_IF_ID_INST[24:20]; // @[HazardDetection.scala 21:30]
  wire  _T_2 = io_ID_EX_REGRD == rs1_sel; // @[HazardDetection.scala 24:59]
  wire  _T_3 = io_ID_EX_MEMREAD & _T_2; // @[HazardDetection.scala 24:40]
  wire  _T_6 = io_ID_EX_REGRD == rs2_sel; // @[HazardDetection.scala 35:90]
  wire  _T_7 = _T_2 | _T_6; // @[HazardDetection.scala 35:71]
  wire  _T_8 = io_ID_EX_MEMREAD & _T_7; // @[HazardDetection.scala 35:38]
  assign io_inst_forward = io_IF_ID_MEMREAD ? _T_3 : _T_8; // @[HazardDetection.scala 48:23 HazardDetection.scala 57:21 HazardDetection.scala 48:23 HazardDetection.scala 57:21]
  assign io_pc_forward = io_IF_ID_MEMREAD ? _T_3 : _T_8; // @[HazardDetection.scala 49:21 HazardDetection.scala 58:19 HazardDetection.scala 49:21 HazardDetection.scala 58:19]
  assign io_ctrl_forward = io_IF_ID_MEMREAD ? _T_3 : _T_8; // @[HazardDetection.scala 50:23 HazardDetection.scala 59:21 HazardDetection.scala 50:23 HazardDetection.scala 59:21]
  assign io_inst_out = io_IF_ID_INST; // @[HazardDetection.scala 51:19 HazardDetection.scala 60:17 HazardDetection.scala 51:19 HazardDetection.scala 60:17]
  assign io_pc_out = io_pc_in; // @[HazardDetection.scala 52:17 HazardDetection.scala 61:15 HazardDetection.scala 52:17 HazardDetection.scala 61:15]
  assign io_current_pc_out = io_current_pc; // @[HazardDetection.scala 53:25 HazardDetection.scala 62:23 HazardDetection.scala 53:25 HazardDetection.scala 62:23]
endmodule
module InstructionTypeDecode(
  input  [2:0] io_func3,
  input  [6:0] io_func7,
  input  [6:0] io_opcode,
  output       io_r_type,
  output       io_load_type,
  output       io_s_type,
  output       io_sb_type,
  output       io_i_type,
  output       io_jalr_type,
  output       io_jal_type,
  output       io_lui_type,
  output       io_Auipc,
  output       io_multiply,
  output       io_csr_imm_type,
  output       io_csr_type,
  output [1:0] io_csr_op
);
  wire  _T = io_opcode == 7'h33; // @[InstructionTypeDecode.scala 27:20]
  wire  _T_1 = io_func7 == 7'h1; // @[InstructionTypeDecode.scala 29:23]
  wire  _GEN_1 = _T_1 ? 1'h0 : 1'h1; // @[InstructionTypeDecode.scala 30:9]
  wire  _T_2 = io_opcode == 7'h3; // @[InstructionTypeDecode.scala 39:25]
  wire  _T_3 = io_opcode == 7'h23; // @[InstructionTypeDecode.scala 41:27]
  wire  _T_4 = io_opcode == 7'h63; // @[InstructionTypeDecode.scala 43:27]
  wire  _T_5 = io_opcode == 7'h13; // @[InstructionTypeDecode.scala 45:27]
  wire  _T_6 = io_opcode == 7'h67; // @[InstructionTypeDecode.scala 47:27]
  wire  _T_7 = io_opcode == 7'h6f; // @[InstructionTypeDecode.scala 49:27]
  wire  _T_8 = io_opcode == 7'h37; // @[InstructionTypeDecode.scala 51:27]
  wire  _T_9 = io_opcode == 7'h17; // @[InstructionTypeDecode.scala 54:26]
  wire  _T_10 = io_opcode == 7'h73; // @[InstructionTypeDecode.scala 56:27]
  wire  _T_11 = io_func3 == 3'h1; // @[InstructionTypeDecode.scala 56:56]
  wire  _T_12 = _T_10 & _T_11; // @[InstructionTypeDecode.scala 56:44]
  wire  _T_14 = io_func3 == 3'h2; // @[InstructionTypeDecode.scala 59:56]
  wire  _T_15 = _T_10 & _T_14; // @[InstructionTypeDecode.scala 59:44]
  wire  _T_17 = io_func3 == 3'h3; // @[InstructionTypeDecode.scala 62:56]
  wire  _T_18 = _T_10 & _T_17; // @[InstructionTypeDecode.scala 62:44]
  wire  _T_20 = io_func3 == 3'h5; // @[InstructionTypeDecode.scala 65:56]
  wire  _T_21 = _T_10 & _T_20; // @[InstructionTypeDecode.scala 65:44]
  wire  _T_23 = io_func3 == 3'h6; // @[InstructionTypeDecode.scala 68:56]
  wire  _T_24 = _T_10 & _T_23; // @[InstructionTypeDecode.scala 68:44]
  wire  _T_26 = io_func3 == 3'h7; // @[InstructionTypeDecode.scala 71:56]
  wire  _T_27 = _T_10 & _T_26; // @[InstructionTypeDecode.scala 71:44]
  wire [1:0] _GEN_3 = _T_27 ? 2'h3 : 2'h0; // @[InstructionTypeDecode.scala 71:70]
  wire  _GEN_5 = _T_24 | _T_27; // @[InstructionTypeDecode.scala 68:70]
  wire [1:0] _GEN_6 = _T_24 ? 2'h2 : _GEN_3; // @[InstructionTypeDecode.scala 68:70]
  wire  _GEN_8 = _T_21 | _GEN_5; // @[InstructionTypeDecode.scala 65:70]
  wire [1:0] _GEN_9 = _T_21 ? 2'h1 : _GEN_6; // @[InstructionTypeDecode.scala 65:70]
  wire [1:0] _GEN_12 = _T_18 ? 2'h3 : _GEN_9; // @[InstructionTypeDecode.scala 62:70]
  wire  _GEN_13 = _T_18 ? 1'h0 : _GEN_8; // @[InstructionTypeDecode.scala 62:70]
  wire  _GEN_15 = _T_15 | _T_18; // @[InstructionTypeDecode.scala 59:70]
  wire [1:0] _GEN_16 = _T_15 ? 2'h2 : _GEN_12; // @[InstructionTypeDecode.scala 59:70]
  wire  _GEN_17 = _T_15 ? 1'h0 : _GEN_13; // @[InstructionTypeDecode.scala 59:70]
  wire  _GEN_19 = _T_12 | _GEN_15; // @[InstructionTypeDecode.scala 56:70]
  wire [1:0] _GEN_20 = _T_12 ? 2'h1 : _GEN_16; // @[InstructionTypeDecode.scala 56:70]
  wire  _GEN_21 = _T_12 ? 1'h0 : _GEN_17; // @[InstructionTypeDecode.scala 56:70]
  wire  _GEN_24 = _T_9 ? 1'h0 : _GEN_19; // @[InstructionTypeDecode.scala 54:44]
  wire [1:0] _GEN_25 = _T_9 ? 2'h0 : _GEN_20; // @[InstructionTypeDecode.scala 54:44]
  wire  _GEN_26 = _T_9 ? 1'h0 : _GEN_21; // @[InstructionTypeDecode.scala 54:44]
  wire  _GEN_29 = _T_8 ? 1'h0 : _T_9; // @[InstructionTypeDecode.scala 51:45]
  wire  _GEN_30 = _T_8 ? 1'h0 : _GEN_24; // @[InstructionTypeDecode.scala 51:45]
  wire [1:0] _GEN_31 = _T_8 ? 2'h0 : _GEN_25; // @[InstructionTypeDecode.scala 51:45]
  wire  _GEN_32 = _T_8 ? 1'h0 : _GEN_26; // @[InstructionTypeDecode.scala 51:45]
  wire  _GEN_35 = _T_7 ? 1'h0 : _T_8; // @[InstructionTypeDecode.scala 49:45]
  wire  _GEN_36 = _T_7 ? 1'h0 : _GEN_29; // @[InstructionTypeDecode.scala 49:45]
  wire  _GEN_37 = _T_7 ? 1'h0 : _GEN_30; // @[InstructionTypeDecode.scala 49:45]
  wire [1:0] _GEN_38 = _T_7 ? 2'h0 : _GEN_31; // @[InstructionTypeDecode.scala 49:45]
  wire  _GEN_39 = _T_7 ? 1'h0 : _GEN_32; // @[InstructionTypeDecode.scala 49:45]
  wire  _GEN_42 = _T_6 ? 1'h0 : _T_7; // @[InstructionTypeDecode.scala 47:45]
  wire  _GEN_43 = _T_6 ? 1'h0 : _GEN_35; // @[InstructionTypeDecode.scala 47:45]
  wire  _GEN_44 = _T_6 ? 1'h0 : _GEN_36; // @[InstructionTypeDecode.scala 47:45]
  wire  _GEN_45 = _T_6 ? 1'h0 : _GEN_37; // @[InstructionTypeDecode.scala 47:45]
  wire [1:0] _GEN_46 = _T_6 ? 2'h0 : _GEN_38; // @[InstructionTypeDecode.scala 47:45]
  wire  _GEN_47 = _T_6 ? 1'h0 : _GEN_39; // @[InstructionTypeDecode.scala 47:45]
  wire  _GEN_50 = _T_5 ? 1'h0 : _T_6; // @[InstructionTypeDecode.scala 45:45]
  wire  _GEN_51 = _T_5 ? 1'h0 : _GEN_42; // @[InstructionTypeDecode.scala 45:45]
  wire  _GEN_52 = _T_5 ? 1'h0 : _GEN_43; // @[InstructionTypeDecode.scala 45:45]
  wire  _GEN_53 = _T_5 ? 1'h0 : _GEN_44; // @[InstructionTypeDecode.scala 45:45]
  wire  _GEN_54 = _T_5 ? 1'h0 : _GEN_45; // @[InstructionTypeDecode.scala 45:45]
  wire [1:0] _GEN_55 = _T_5 ? 2'h0 : _GEN_46; // @[InstructionTypeDecode.scala 45:45]
  wire  _GEN_56 = _T_5 ? 1'h0 : _GEN_47; // @[InstructionTypeDecode.scala 45:45]
  wire  _GEN_59 = _T_4 ? 1'h0 : _T_5; // @[InstructionTypeDecode.scala 43:45]
  wire  _GEN_60 = _T_4 ? 1'h0 : _GEN_50; // @[InstructionTypeDecode.scala 43:45]
  wire  _GEN_61 = _T_4 ? 1'h0 : _GEN_51; // @[InstructionTypeDecode.scala 43:45]
  wire  _GEN_62 = _T_4 ? 1'h0 : _GEN_52; // @[InstructionTypeDecode.scala 43:45]
  wire  _GEN_63 = _T_4 ? 1'h0 : _GEN_53; // @[InstructionTypeDecode.scala 43:45]
  wire  _GEN_64 = _T_4 ? 1'h0 : _GEN_54; // @[InstructionTypeDecode.scala 43:45]
  wire [1:0] _GEN_65 = _T_4 ? 2'h0 : _GEN_55; // @[InstructionTypeDecode.scala 43:45]
  wire  _GEN_66 = _T_4 ? 1'h0 : _GEN_56; // @[InstructionTypeDecode.scala 43:45]
  wire  _GEN_69 = _T_3 ? 1'h0 : _T_4; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_70 = _T_3 ? 1'h0 : _GEN_59; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_71 = _T_3 ? 1'h0 : _GEN_60; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_72 = _T_3 ? 1'h0 : _GEN_61; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_73 = _T_3 ? 1'h0 : _GEN_62; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_74 = _T_3 ? 1'h0 : _GEN_63; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_75 = _T_3 ? 1'h0 : _GEN_64; // @[InstructionTypeDecode.scala 41:45]
  wire [1:0] _GEN_76 = _T_3 ? 2'h0 : _GEN_65; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_77 = _T_3 ? 1'h0 : _GEN_66; // @[InstructionTypeDecode.scala 41:45]
  wire  _GEN_80 = _T_2 ? 1'h0 : _T_3; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_81 = _T_2 ? 1'h0 : _GEN_69; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_82 = _T_2 ? 1'h0 : _GEN_70; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_83 = _T_2 ? 1'h0 : _GEN_71; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_84 = _T_2 ? 1'h0 : _GEN_72; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_85 = _T_2 ? 1'h0 : _GEN_73; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_86 = _T_2 ? 1'h0 : _GEN_74; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_87 = _T_2 ? 1'h0 : _GEN_75; // @[InstructionTypeDecode.scala 39:43]
  wire [1:0] _GEN_88 = _T_2 ? 2'h0 : _GEN_76; // @[InstructionTypeDecode.scala 39:43]
  wire  _GEN_89 = _T_2 ? 1'h0 : _GEN_77; // @[InstructionTypeDecode.scala 39:43]
  assign io_r_type = _T & _GEN_1; // @[InstructionTypeDecode.scala 82:19 InstructionTypeDecode.scala 32:23 InstructionTypeDecode.scala 36:21 InstructionTypeDecode.scala 82:19]
  assign io_load_type = _T ? 1'h0 : _T_2; // @[InstructionTypeDecode.scala 83:22 InstructionTypeDecode.scala 40:22 InstructionTypeDecode.scala 83:22]
  assign io_s_type = _T ? 1'h0 : _GEN_80; // @[InstructionTypeDecode.scala 84:19 InstructionTypeDecode.scala 42:19 InstructionTypeDecode.scala 84:19]
  assign io_sb_type = _T ? 1'h0 : _GEN_81; // @[InstructionTypeDecode.scala 85:20 InstructionTypeDecode.scala 44:20 InstructionTypeDecode.scala 85:20]
  assign io_i_type = _T ? 1'h0 : _GEN_82; // @[InstructionTypeDecode.scala 86:19 InstructionTypeDecode.scala 46:19 InstructionTypeDecode.scala 86:19]
  assign io_jalr_type = _T ? 1'h0 : _GEN_83; // @[InstructionTypeDecode.scala 87:22 InstructionTypeDecode.scala 48:22 InstructionTypeDecode.scala 87:22]
  assign io_jal_type = _T ? 1'h0 : _GEN_84; // @[InstructionTypeDecode.scala 88:21 InstructionTypeDecode.scala 50:21 InstructionTypeDecode.scala 88:21]
  assign io_lui_type = _T ? 1'h0 : _GEN_85; // @[InstructionTypeDecode.scala 89:21 InstructionTypeDecode.scala 52:21 InstructionTypeDecode.scala 89:21]
  assign io_Auipc = _T ? 1'h0 : _GEN_86; // @[InstructionTypeDecode.scala 90:21 InstructionTypeDecode.scala 55:18 InstructionTypeDecode.scala 90:21]
  assign io_multiply = _T & _T_1; // @[InstructionTypeDecode.scala 91:21 InstructionTypeDecode.scala 31:23 InstructionTypeDecode.scala 91:21]
  assign io_csr_imm_type = _T ? 1'h0 : _GEN_89; // @[InstructionTypeDecode.scala 93:25 InstructionTypeDecode.scala 66:25 InstructionTypeDecode.scala 69:25 InstructionTypeDecode.scala 72:25 InstructionTypeDecode.scala 93:25]
  assign io_csr_type = _T ? 1'h0 : _GEN_87; // @[InstructionTypeDecode.scala 92:21 InstructionTypeDecode.scala 57:21 InstructionTypeDecode.scala 60:21 InstructionTypeDecode.scala 63:21 InstructionTypeDecode.scala 92:21]
  assign io_csr_op = _T ? 2'h0 : _GEN_88; // @[InstructionTypeDecode.scala 94:19 InstructionTypeDecode.scala 58:19 InstructionTypeDecode.scala 61:19 InstructionTypeDecode.scala 64:19 InstructionTypeDecode.scala 67:19 InstructionTypeDecode.scala 70:19 InstructionTypeDecode.scala 73:19 InstructionTypeDecode.scala 94:19]
endmodule
module ControlDecode(
  input        io_in_r_type,
  input        io_in_load_type,
  input        io_in_s_type,
  input        io_in_sb_type,
  input        io_in_i_type,
  input        io_in_jalr_type,
  input        io_in_jal_type,
  input        io_in_lui_type,
  input        io_in_csr_type,
  input        io_in_csr_imm_type,
  input        io_Auipc,
  input        io_multiply,
  output       io_memWrite,
  output       io_memRead,
  output       io_branch,
  output       io_regWrite,
  output       io_csr_wen,
  output       io_memToReg,
  output [3:0] io_aluOperation,
  output [1:0] io_operand_a_sel,
  output       io_operand_b_sel,
  output [1:0] io_extend_sel,
  output [1:0] io_next_pc_sel
);
  wire [4:0] _GEN_2 = io_in_csr_imm_type ? 5'h8 : 5'h1c; // @[ControlDecode.scala 169:45]
  wire  _GEN_4 = io_in_csr_type | io_in_csr_imm_type; // @[ControlDecode.scala 157:41]
  wire [4:0] _GEN_5 = io_in_csr_type ? 5'h8 : _GEN_2; // @[ControlDecode.scala 157:41]
  wire  _GEN_7 = io_multiply | _GEN_4; // @[ControlDecode.scala 145:36]
  wire [4:0] _GEN_8 = io_multiply ? 5'h9 : _GEN_5; // @[ControlDecode.scala 145:36]
  wire  _GEN_9 = io_multiply ? 1'h0 : _GEN_4; // @[ControlDecode.scala 145:36]
  wire  _GEN_11 = io_Auipc | _GEN_7; // @[ControlDecode.scala 133:5]
  wire [4:0] _GEN_12 = io_Auipc ? 5'h7 : _GEN_8; // @[ControlDecode.scala 133:5]
  wire  _GEN_14 = io_Auipc | _GEN_9; // @[ControlDecode.scala 133:5]
  wire [1:0] _GEN_15 = io_Auipc ? 2'h2 : 2'h0; // @[ControlDecode.scala 133:5]
  wire  _GEN_16 = io_Auipc ? 1'h0 : _GEN_9; // @[ControlDecode.scala 133:5]
  wire  _GEN_18 = io_in_lui_type | _GEN_11; // @[ControlDecode.scala 120:5]
  wire [4:0] _GEN_19 = io_in_lui_type ? 5'h6 : _GEN_12; // @[ControlDecode.scala 120:5]
  wire [1:0] _GEN_20 = io_in_lui_type ? 2'h3 : {{1'd0}, io_Auipc}; // @[ControlDecode.scala 120:5]
  wire  _GEN_21 = io_in_lui_type | _GEN_14; // @[ControlDecode.scala 120:5]
  wire [1:0] _GEN_22 = io_in_lui_type ? 2'h2 : _GEN_15; // @[ControlDecode.scala 120:5]
  wire  _GEN_23 = io_in_lui_type ? 1'h0 : _GEN_16; // @[ControlDecode.scala 120:5]
  wire  _GEN_25 = io_in_jal_type | _GEN_18; // @[ControlDecode.scala 107:41]
  wire [4:0] _GEN_26 = io_in_jal_type ? 5'h3 : _GEN_19; // @[ControlDecode.scala 107:41]
  wire [1:0] _GEN_27 = io_in_jal_type ? 2'h2 : _GEN_20; // @[ControlDecode.scala 107:41]
  wire  _GEN_28 = io_in_jal_type ? 1'h0 : _GEN_21; // @[ControlDecode.scala 107:41]
  wire [1:0] _GEN_29 = io_in_jal_type ? 2'h0 : _GEN_22; // @[ControlDecode.scala 107:41]
  wire [1:0] _GEN_30 = io_in_jal_type ? 2'h2 : 2'h0; // @[ControlDecode.scala 107:41]
  wire  _GEN_31 = io_in_jal_type ? 1'h0 : _GEN_23; // @[ControlDecode.scala 107:41]
  wire  _GEN_33 = io_in_jalr_type | _GEN_25; // @[ControlDecode.scala 96:42]
  wire [4:0] _GEN_34 = io_in_jalr_type ? 5'h3 : _GEN_26; // @[ControlDecode.scala 96:42]
  wire [1:0] _GEN_35 = io_in_jalr_type ? 2'h2 : _GEN_27; // @[ControlDecode.scala 96:42]
  wire  _GEN_36 = io_in_jalr_type ? 1'h0 : _GEN_28; // @[ControlDecode.scala 96:42]
  wire [1:0] _GEN_37 = io_in_jalr_type ? 2'h0 : _GEN_29; // @[ControlDecode.scala 96:42]
  wire [1:0] _GEN_38 = io_in_jalr_type ? 2'h3 : _GEN_30; // @[ControlDecode.scala 96:42]
  wire  _GEN_39 = io_in_jalr_type ? 1'h0 : _GEN_31; // @[ControlDecode.scala 96:42]
  wire  _GEN_41 = io_in_i_type | _GEN_33; // @[ControlDecode.scala 85:39]
  wire [4:0] _GEN_42 = io_in_i_type ? 5'h1 : _GEN_34; // @[ControlDecode.scala 85:39]
  wire [1:0] _GEN_43 = io_in_i_type ? 2'h0 : _GEN_35; // @[ControlDecode.scala 85:39]
  wire  _GEN_44 = io_in_i_type | _GEN_36; // @[ControlDecode.scala 85:39]
  wire [1:0] _GEN_45 = io_in_i_type ? 2'h0 : _GEN_37; // @[ControlDecode.scala 85:39]
  wire [1:0] _GEN_46 = io_in_i_type ? 2'h0 : _GEN_38; // @[ControlDecode.scala 85:39]
  wire  _GEN_47 = io_in_i_type ? 1'h0 : _GEN_39; // @[ControlDecode.scala 85:39]
  wire  _GEN_50 = io_in_sb_type ? 1'h0 : _GEN_41; // @[ControlDecode.scala 74:40]
  wire [4:0] _GEN_51 = io_in_sb_type ? 5'h2 : _GEN_42; // @[ControlDecode.scala 74:40]
  wire [1:0] _GEN_52 = io_in_sb_type ? 2'h0 : _GEN_43; // @[ControlDecode.scala 74:40]
  wire  _GEN_53 = io_in_sb_type ? 1'h0 : _GEN_44; // @[ControlDecode.scala 74:40]
  wire [1:0] _GEN_54 = io_in_sb_type ? 2'h0 : _GEN_45; // @[ControlDecode.scala 74:40]
  wire [1:0] _GEN_55 = io_in_sb_type ? 2'h1 : _GEN_46; // @[ControlDecode.scala 74:40]
  wire  _GEN_56 = io_in_sb_type ? 1'h0 : _GEN_47; // @[ControlDecode.scala 74:40]
  wire  _GEN_59 = io_in_s_type ? 1'h0 : io_in_sb_type; // @[ControlDecode.scala 62:39]
  wire  _GEN_60 = io_in_s_type ? 1'h0 : _GEN_50; // @[ControlDecode.scala 62:39]
  wire [4:0] _GEN_61 = io_in_s_type ? 5'h5 : _GEN_51; // @[ControlDecode.scala 62:39]
  wire [1:0] _GEN_62 = io_in_s_type ? 2'h0 : _GEN_52; // @[ControlDecode.scala 62:39]
  wire  _GEN_63 = io_in_s_type | _GEN_53; // @[ControlDecode.scala 62:39]
  wire [1:0] _GEN_64 = io_in_s_type ? 2'h1 : _GEN_54; // @[ControlDecode.scala 62:39]
  wire [1:0] _GEN_65 = io_in_s_type ? 2'h0 : _GEN_55; // @[ControlDecode.scala 62:39]
  wire  _GEN_66 = io_in_s_type ? 1'h0 : _GEN_56; // @[ControlDecode.scala 62:39]
  wire  _GEN_67 = io_in_load_type ? 1'h0 : io_in_s_type; // @[ControlDecode.scala 50:40]
  wire  _GEN_69 = io_in_load_type ? 1'h0 : _GEN_59; // @[ControlDecode.scala 50:40]
  wire  _GEN_70 = io_in_load_type | _GEN_60; // @[ControlDecode.scala 50:40]
  wire [4:0] _GEN_71 = io_in_load_type ? 5'h4 : _GEN_61; // @[ControlDecode.scala 50:40]
  wire [1:0] _GEN_72 = io_in_load_type ? 2'h0 : _GEN_62; // @[ControlDecode.scala 50:40]
  wire  _GEN_73 = io_in_load_type | _GEN_63; // @[ControlDecode.scala 50:40]
  wire [1:0] _GEN_74 = io_in_load_type ? 2'h0 : _GEN_64; // @[ControlDecode.scala 50:40]
  wire [1:0] _GEN_75 = io_in_load_type ? 2'h0 : _GEN_65; // @[ControlDecode.scala 50:40]
  wire  _GEN_76 = io_in_load_type ? 1'h0 : _GEN_66; // @[ControlDecode.scala 50:40]
  wire [4:0] _GEN_81 = io_in_r_type ? 5'h0 : _GEN_71; // @[ControlDecode.scala 37:32]
  assign io_memWrite = io_in_r_type ? 1'h0 : _GEN_67; // @[ControlDecode.scala 188:21 ControlDecode.scala 38:21 ControlDecode.scala 52:21 ControlDecode.scala 64:21 ControlDecode.scala 75:21 ControlDecode.scala 86:21 ControlDecode.scala 97:21 ControlDecode.scala 108:21 ControlDecode.scala 121:21 ControlDecode.scala 134:21 ControlDecode.scala 146:21 ControlDecode.scala 158:21 ControlDecode.scala 170:21 ControlDecode.scala 188:21]
  assign io_memRead = io_in_r_type ? 1'h0 : io_in_load_type; // @[ControlDecode.scala 189:21 ControlDecode.scala 39:21 ControlDecode.scala 53:21 ControlDecode.scala 65:21 ControlDecode.scala 76:21 ControlDecode.scala 87:21 ControlDecode.scala 98:21 ControlDecode.scala 109:21 ControlDecode.scala 122:21 ControlDecode.scala 135:21 ControlDecode.scala 147:21 ControlDecode.scala 159:20 ControlDecode.scala 171:20 ControlDecode.scala 189:21]
  assign io_branch = io_in_r_type ? 1'h0 : _GEN_69; // @[ControlDecode.scala 190:19 ControlDecode.scala 40:19 ControlDecode.scala 54:19 ControlDecode.scala 66:19 ControlDecode.scala 77:19 ControlDecode.scala 88:19 ControlDecode.scala 99:19 ControlDecode.scala 110:19 ControlDecode.scala 123:19 ControlDecode.scala 136:19 ControlDecode.scala 148:19 ControlDecode.scala 160:19 ControlDecode.scala 172:19 ControlDecode.scala 190:19]
  assign io_regWrite = io_in_r_type | _GEN_70; // @[ControlDecode.scala 191:21 ControlDecode.scala 41:21 ControlDecode.scala 55:21 ControlDecode.scala 67:21 ControlDecode.scala 78:21 ControlDecode.scala 89:21 ControlDecode.scala 100:21 ControlDecode.scala 111:21 ControlDecode.scala 124:21 ControlDecode.scala 137:21 ControlDecode.scala 149:21 ControlDecode.scala 161:21 ControlDecode.scala 173:21 ControlDecode.scala 191:21]
  assign io_csr_wen = io_in_r_type ? 1'h0 : _GEN_76; // @[ControlDecode.scala 198:20 ControlDecode.scala 162:20 ControlDecode.scala 174:20 ControlDecode.scala 198:20]
  assign io_memToReg = io_in_r_type ? 1'h0 : io_in_load_type; // @[ControlDecode.scala 192:21 ControlDecode.scala 42:21 ControlDecode.scala 56:21 ControlDecode.scala 68:21 ControlDecode.scala 79:21 ControlDecode.scala 90:21 ControlDecode.scala 101:21 ControlDecode.scala 112:21 ControlDecode.scala 125:21 ControlDecode.scala 138:21 ControlDecode.scala 150:21 ControlDecode.scala 163:21 ControlDecode.scala 175:21 ControlDecode.scala 192:21]
  assign io_aluOperation = _GEN_81[3:0]; // @[ControlDecode.scala 193:25 ControlDecode.scala 43:25 ControlDecode.scala 57:25 ControlDecode.scala 69:25 ControlDecode.scala 80:25 ControlDecode.scala 91:25 ControlDecode.scala 102:25 ControlDecode.scala 113:25 ControlDecode.scala 126:25 ControlDecode.scala 139:25 ControlDecode.scala 151:25 ControlDecode.scala 164:25 ControlDecode.scala 176:25 ControlDecode.scala 193:25]
  assign io_operand_a_sel = io_in_r_type ? 2'h0 : _GEN_72; // @[ControlDecode.scala 194:26 ControlDecode.scala 44:26 ControlDecode.scala 58:26 ControlDecode.scala 70:26 ControlDecode.scala 81:26 ControlDecode.scala 92:26 ControlDecode.scala 103:26 ControlDecode.scala 114:26 ControlDecode.scala 127:26 ControlDecode.scala 140:26 ControlDecode.scala 152:26 ControlDecode.scala 165:26 ControlDecode.scala 177:26 ControlDecode.scala 194:26]
  assign io_operand_b_sel = io_in_r_type ? 1'h0 : _GEN_73; // @[ControlDecode.scala 195:26 ControlDecode.scala 45:26 ControlDecode.scala 59:26 ControlDecode.scala 71:26 ControlDecode.scala 82:26 ControlDecode.scala 93:26 ControlDecode.scala 104:26 ControlDecode.scala 115:26 ControlDecode.scala 128:26 ControlDecode.scala 141:26 ControlDecode.scala 153:26 ControlDecode.scala 166:26 ControlDecode.scala 178:26 ControlDecode.scala 195:26]
  assign io_extend_sel = io_in_r_type ? 2'h0 : _GEN_74; // @[ControlDecode.scala 196:23 ControlDecode.scala 46:23 ControlDecode.scala 60:23 ControlDecode.scala 72:23 ControlDecode.scala 83:23 ControlDecode.scala 94:23 ControlDecode.scala 105:23 ControlDecode.scala 116:23 ControlDecode.scala 129:23 ControlDecode.scala 142:23 ControlDecode.scala 154:23 ControlDecode.scala 167:23 ControlDecode.scala 179:23 ControlDecode.scala 196:23]
  assign io_next_pc_sel = io_in_r_type ? 2'h0 : _GEN_75; // @[ControlDecode.scala 197:24 ControlDecode.scala 47:24 ControlDecode.scala 61:24 ControlDecode.scala 73:24 ControlDecode.scala 84:24 ControlDecode.scala 95:24 ControlDecode.scala 106:24 ControlDecode.scala 117:24 ControlDecode.scala 130:24 ControlDecode.scala 143:24 ControlDecode.scala 155:24 ControlDecode.scala 168:24 ControlDecode.scala 180:24 ControlDecode.scala 197:24]
endmodule
module Control(
  input  [6:0] io_in_opcode,
  input  [6:0] io_func7,
  input  [2:0] io_func3,
  output       io_out_memWrite,
  output       io_out_branch,
  output       io_out_memRead,
  output       io_out_regWrite,
  output       io_csr_we_o,
  output       io_csr_imm_type,
  output [1:0] io_csr_op_o,
  output       io_out_memToReg,
  output [3:0] io_out_aluOp,
  output [1:0] io_out_operand_a_sel,
  output       io_out_operand_b_sel,
  output [1:0] io_out_extend_sel,
  output [1:0] io_out_next_pc_sel
);
  wire [2:0] instruction_type_decode_io_func3; // @[Control.scala 26:41]
  wire [6:0] instruction_type_decode_io_func7; // @[Control.scala 26:41]
  wire [6:0] instruction_type_decode_io_opcode; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_r_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_load_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_s_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_sb_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_i_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_jalr_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_jal_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_lui_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_Auipc; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_multiply; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_csr_imm_type; // @[Control.scala 26:41]
  wire  instruction_type_decode_io_csr_type; // @[Control.scala 26:41]
  wire [1:0] instruction_type_decode_io_csr_op; // @[Control.scala 26:41]
  wire  control_decode_io_in_r_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_load_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_s_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_sb_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_i_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_jalr_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_jal_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_lui_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_csr_type; // @[Control.scala 27:32]
  wire  control_decode_io_in_csr_imm_type; // @[Control.scala 27:32]
  wire  control_decode_io_Auipc; // @[Control.scala 27:32]
  wire  control_decode_io_multiply; // @[Control.scala 27:32]
  wire  control_decode_io_memWrite; // @[Control.scala 27:32]
  wire  control_decode_io_memRead; // @[Control.scala 27:32]
  wire  control_decode_io_branch; // @[Control.scala 27:32]
  wire  control_decode_io_regWrite; // @[Control.scala 27:32]
  wire  control_decode_io_csr_wen; // @[Control.scala 27:32]
  wire  control_decode_io_memToReg; // @[Control.scala 27:32]
  wire [3:0] control_decode_io_aluOperation; // @[Control.scala 27:32]
  wire [1:0] control_decode_io_operand_a_sel; // @[Control.scala 27:32]
  wire  control_decode_io_operand_b_sel; // @[Control.scala 27:32]
  wire [1:0] control_decode_io_extend_sel; // @[Control.scala 27:32]
  wire [1:0] control_decode_io_next_pc_sel; // @[Control.scala 27:32]
  InstructionTypeDecode instruction_type_decode ( // @[Control.scala 26:41]
    .io_func3(instruction_type_decode_io_func3),
    .io_func7(instruction_type_decode_io_func7),
    .io_opcode(instruction_type_decode_io_opcode),
    .io_r_type(instruction_type_decode_io_r_type),
    .io_load_type(instruction_type_decode_io_load_type),
    .io_s_type(instruction_type_decode_io_s_type),
    .io_sb_type(instruction_type_decode_io_sb_type),
    .io_i_type(instruction_type_decode_io_i_type),
    .io_jalr_type(instruction_type_decode_io_jalr_type),
    .io_jal_type(instruction_type_decode_io_jal_type),
    .io_lui_type(instruction_type_decode_io_lui_type),
    .io_Auipc(instruction_type_decode_io_Auipc),
    .io_multiply(instruction_type_decode_io_multiply),
    .io_csr_imm_type(instruction_type_decode_io_csr_imm_type),
    .io_csr_type(instruction_type_decode_io_csr_type),
    .io_csr_op(instruction_type_decode_io_csr_op)
  );
  ControlDecode control_decode ( // @[Control.scala 27:32]
    .io_in_r_type(control_decode_io_in_r_type),
    .io_in_load_type(control_decode_io_in_load_type),
    .io_in_s_type(control_decode_io_in_s_type),
    .io_in_sb_type(control_decode_io_in_sb_type),
    .io_in_i_type(control_decode_io_in_i_type),
    .io_in_jalr_type(control_decode_io_in_jalr_type),
    .io_in_jal_type(control_decode_io_in_jal_type),
    .io_in_lui_type(control_decode_io_in_lui_type),
    .io_in_csr_type(control_decode_io_in_csr_type),
    .io_in_csr_imm_type(control_decode_io_in_csr_imm_type),
    .io_Auipc(control_decode_io_Auipc),
    .io_multiply(control_decode_io_multiply),
    .io_memWrite(control_decode_io_memWrite),
    .io_memRead(control_decode_io_memRead),
    .io_branch(control_decode_io_branch),
    .io_regWrite(control_decode_io_regWrite),
    .io_csr_wen(control_decode_io_csr_wen),
    .io_memToReg(control_decode_io_memToReg),
    .io_aluOperation(control_decode_io_aluOperation),
    .io_operand_a_sel(control_decode_io_operand_a_sel),
    .io_operand_b_sel(control_decode_io_operand_b_sel),
    .io_extend_sel(control_decode_io_extend_sel),
    .io_next_pc_sel(control_decode_io_next_pc_sel)
  );
  assign io_out_memWrite = control_decode_io_memWrite; // @[Control.scala 43:21]
  assign io_out_branch = control_decode_io_branch; // @[Control.scala 44:19]
  assign io_out_memRead = control_decode_io_memRead; // @[Control.scala 45:20]
  assign io_out_regWrite = control_decode_io_regWrite; // @[Control.scala 46:21]
  assign io_csr_we_o = control_decode_io_csr_wen; // @[Control.scala 47:17]
  assign io_csr_imm_type = instruction_type_decode_io_csr_imm_type; // @[Control.scala 57:21]
  assign io_csr_op_o = instruction_type_decode_io_csr_op; // @[Control.scala 56:17]
  assign io_out_memToReg = control_decode_io_memToReg; // @[Control.scala 48:21]
  assign io_out_aluOp = control_decode_io_aluOperation; // @[Control.scala 49:18]
  assign io_out_operand_a_sel = control_decode_io_operand_a_sel; // @[Control.scala 50:26]
  assign io_out_operand_b_sel = control_decode_io_operand_b_sel; // @[Control.scala 51:26]
  assign io_out_extend_sel = control_decode_io_extend_sel; // @[Control.scala 52:23]
  assign io_out_next_pc_sel = control_decode_io_next_pc_sel; // @[Control.scala 53:24]
  assign instruction_type_decode_io_func3 = io_func3; // @[Control.scala 29:39]
  assign instruction_type_decode_io_func7 = io_func7; // @[Control.scala 58:38]
  assign instruction_type_decode_io_opcode = io_in_opcode; // @[Control.scala 28:39]
  assign control_decode_io_in_r_type = instruction_type_decode_io_r_type; // @[Control.scala 30:33]
  assign control_decode_io_in_load_type = instruction_type_decode_io_load_type; // @[Control.scala 31:36]
  assign control_decode_io_in_s_type = instruction_type_decode_io_s_type; // @[Control.scala 32:33]
  assign control_decode_io_in_sb_type = instruction_type_decode_io_sb_type; // @[Control.scala 33:34]
  assign control_decode_io_in_i_type = instruction_type_decode_io_i_type; // @[Control.scala 34:33]
  assign control_decode_io_in_jalr_type = instruction_type_decode_io_jalr_type; // @[Control.scala 35:36]
  assign control_decode_io_in_jal_type = instruction_type_decode_io_jal_type; // @[Control.scala 36:35]
  assign control_decode_io_in_lui_type = instruction_type_decode_io_lui_type; // @[Control.scala 37:35]
  assign control_decode_io_in_csr_type = instruction_type_decode_io_csr_type; // @[Control.scala 40:35]
  assign control_decode_io_in_csr_imm_type = instruction_type_decode_io_csr_imm_type; // @[Control.scala 41:39]
  assign control_decode_io_Auipc = instruction_type_decode_io_Auipc; // @[Control.scala 38:35]
  assign control_decode_io_multiply = instruction_type_decode_io_multiply; // @[Control.scala 39:35]
endmodule
module DecodeForwardUnit(
  input  [4:0] io_ID_EX_REGRD,
  input        io_ID_EX_MEMRD,
  input  [4:0] io_EX_MEM_REGRD,
  input        io_EX_MEM_MEMRD,
  input  [4:0] io_MEM_WB_REGRD,
  input        io_MEM_WB_MEMRD,
  input        io_execute_regwrite,
  input        io_mem_regwrite,
  input        io_wb_regwrite,
  input  [4:0] io_rs1_sel,
  input  [4:0] io_rs2_sel,
  input        io_ctrl_branch,
  output [3:0] io_forward_rs1,
  output [3:0] io_forward_rs2
);
  wire  _T_1 = io_ID_EX_REGRD != 5'h0; // @[DecodeForwardUnit.scala 29:27]
  wire  _T_2 = ~io_ID_EX_MEMRD; // @[DecodeForwardUnit.scala 29:60]
  wire  _T_3 = _T_1 & _T_2; // @[DecodeForwardUnit.scala 29:42]
  wire  _T_4 = io_ID_EX_REGRD == io_rs1_sel; // @[DecodeForwardUnit.scala 29:87]
  wire  _T_5 = _T_3 & _T_4; // @[DecodeForwardUnit.scala 29:68]
  wire  _T_6 = io_ID_EX_REGRD == io_rs2_sel; // @[DecodeForwardUnit.scala 29:122]
  wire  _T_7 = _T_5 & _T_6; // @[DecodeForwardUnit.scala 29:103]
  wire  _T_17 = _T_3 & _T_6; // @[DecodeForwardUnit.scala 34:75]
  wire  _GEN_2 = _T_5 ? 1'h0 : _T_17; // @[DecodeForwardUnit.scala 32:111]
  wire  _GEN_3 = _T_7 | _T_5; // @[DecodeForwardUnit.scala 29:139]
  wire  _GEN_4 = _T_7 | _GEN_2; // @[DecodeForwardUnit.scala 29:139]
  wire  _T_18 = io_EX_MEM_REGRD != 5'h0; // @[DecodeForwardUnit.scala 39:28]
  wire  _T_19 = ~io_EX_MEM_MEMRD; // @[DecodeForwardUnit.scala 39:62]
  wire  _T_20 = _T_18 & _T_19; // @[DecodeForwardUnit.scala 39:43]
  wire  _T_23 = _T_1 & _T_4; // @[DecodeForwardUnit.scala 40:43]
  wire  _T_25 = _T_23 & _T_6; // @[DecodeForwardUnit.scala 40:78]
  wire  _T_26 = ~_T_25; // @[DecodeForwardUnit.scala 40:9]
  wire  _T_27 = _T_20 & _T_26; // @[DecodeForwardUnit.scala 39:70]
  wire  _T_28 = io_EX_MEM_REGRD == io_rs1_sel; // @[DecodeForwardUnit.scala 41:26]
  wire  _T_29 = _T_27 & _T_28; // @[DecodeForwardUnit.scala 40:114]
  wire  _T_30 = io_EX_MEM_REGRD == io_rs2_sel; // @[DecodeForwardUnit.scala 41:62]
  wire  _T_31 = _T_29 & _T_30; // @[DecodeForwardUnit.scala 41:42]
  wire  _T_37 = _T_1 & _T_6; // @[DecodeForwardUnit.scala 47:43]
  wire  _T_38 = ~_T_37; // @[DecodeForwardUnit.scala 47:9]
  wire  _T_39 = _T_20 & _T_38; // @[DecodeForwardUnit.scala 46:77]
  wire  _T_41 = _T_39 & _T_30; // @[DecodeForwardUnit.scala 47:79]
  wire  _T_48 = ~_T_23; // @[DecodeForwardUnit.scala 53:9]
  wire  _T_49 = _T_20 & _T_48; // @[DecodeForwardUnit.scala 52:77]
  wire  _T_51 = _T_49 & _T_28; // @[DecodeForwardUnit.scala 53:79]
  wire  _T_54 = _T_18 & io_EX_MEM_MEMRD; // @[DecodeForwardUnit.scala 58:50]
  wire  _T_61 = _T_54 & _T_26; // @[DecodeForwardUnit.scala 58:77]
  wire  _T_63 = _T_61 & _T_28; // @[DecodeForwardUnit.scala 59:114]
  wire  _T_65 = _T_63 & _T_30; // @[DecodeForwardUnit.scala 60:42]
  wire  _T_73 = _T_54 & _T_38; // @[DecodeForwardUnit.scala 65:77]
  wire  _T_75 = _T_73 & _T_30; // @[DecodeForwardUnit.scala 66:79]
  wire  _T_78 = io_ctrl_branch & _T_18; // @[DecodeForwardUnit.scala 71:42]
  wire  _T_80 = _T_78 & io_EX_MEM_MEMRD; // @[DecodeForwardUnit.scala 71:76]
  wire  _T_85 = _T_80 & _T_48; // @[DecodeForwardUnit.scala 71:103]
  wire  _T_87 = _T_85 & _T_28; // @[DecodeForwardUnit.scala 72:79]
  wire [2:0] _GEN_5 = _T_87 ? 3'h4 : {{2'd0}, _GEN_3}; // @[DecodeForwardUnit.scala 73:43]
  wire [2:0] _GEN_6 = _T_75 ? 3'h4 : {{2'd0}, _GEN_4}; // @[DecodeForwardUnit.scala 67:43]
  wire [2:0] _GEN_7 = _T_75 ? {{2'd0}, _GEN_3} : _GEN_5; // @[DecodeForwardUnit.scala 67:43]
  wire [2:0] _GEN_8 = _T_65 ? 3'h4 : _GEN_7; // @[DecodeForwardUnit.scala 60:79]
  wire [2:0] _GEN_9 = _T_65 ? 3'h4 : _GEN_6; // @[DecodeForwardUnit.scala 60:79]
  wire [2:0] _GEN_10 = _T_51 ? 3'h2 : _GEN_8; // @[DecodeForwardUnit.scala 54:43]
  wire [2:0] _GEN_11 = _T_51 ? {{2'd0}, _GEN_4} : _GEN_9; // @[DecodeForwardUnit.scala 54:43]
  wire [2:0] _GEN_12 = _T_41 ? 3'h2 : _GEN_11; // @[DecodeForwardUnit.scala 48:43]
  wire [2:0] _GEN_13 = _T_41 ? {{2'd0}, _GEN_3} : _GEN_10; // @[DecodeForwardUnit.scala 48:43]
  wire [2:0] _GEN_14 = _T_31 ? 3'h2 : _GEN_13; // @[DecodeForwardUnit.scala 41:79]
  wire [2:0] _GEN_15 = _T_31 ? 3'h2 : _GEN_12; // @[DecodeForwardUnit.scala 41:79]
  wire  _T_88 = io_MEM_WB_REGRD != 5'h0; // @[DecodeForwardUnit.scala 80:28]
  wire  _T_89 = ~io_MEM_WB_MEMRD; // @[DecodeForwardUnit.scala 80:62]
  wire  _T_90 = _T_88 & _T_89; // @[DecodeForwardUnit.scala 80:43]
  wire  _T_97 = _T_90 & _T_26; // @[DecodeForwardUnit.scala 80:70]
  wire  _T_100 = _T_18 & _T_28; // @[DecodeForwardUnit.scala 84:44]
  wire  _T_102 = _T_100 & _T_30; // @[DecodeForwardUnit.scala 84:80]
  wire  _T_103 = ~_T_102; // @[DecodeForwardUnit.scala 84:9]
  wire  _T_104 = _T_97 & _T_103; // @[DecodeForwardUnit.scala 82:114]
  wire  _T_105 = io_MEM_WB_REGRD == io_rs1_sel; // @[DecodeForwardUnit.scala 85:26]
  wire  _T_106 = _T_104 & _T_105; // @[DecodeForwardUnit.scala 84:117]
  wire  _T_107 = io_MEM_WB_REGRD == io_rs2_sel; // @[DecodeForwardUnit.scala 85:62]
  wire  _T_108 = _T_106 & _T_107; // @[DecodeForwardUnit.scala 85:42]
  wire  _T_116 = _T_90 & _T_38; // @[DecodeForwardUnit.scala 91:77]
  wire  _T_119 = _T_18 & _T_30; // @[DecodeForwardUnit.scala 95:46]
  wire  _T_120 = ~_T_119; // @[DecodeForwardUnit.scala 95:11]
  wire  _T_121 = _T_116 & _T_120; // @[DecodeForwardUnit.scala 93:81]
  wire  _T_123 = _T_121 & _T_107; // @[DecodeForwardUnit.scala 95:83]
  wire  _T_131 = _T_90 & _T_48; // @[DecodeForwardUnit.scala 101:77]
  wire  _T_135 = ~_T_100; // @[DecodeForwardUnit.scala 105:11]
  wire  _T_136 = _T_131 & _T_135; // @[DecodeForwardUnit.scala 103:81]
  wire  _T_138 = _T_136 & _T_105; // @[DecodeForwardUnit.scala 105:83]
  wire  _T_141 = _T_88 & io_MEM_WB_MEMRD; // @[DecodeForwardUnit.scala 110:52]
  wire  _T_148 = _T_141 & _T_26; // @[DecodeForwardUnit.scala 110:79]
  wire  _T_155 = _T_148 & _T_103; // @[DecodeForwardUnit.scala 112:114]
  wire  _T_157 = _T_155 & _T_105; // @[DecodeForwardUnit.scala 114:117]
  wire  _T_159 = _T_157 & _T_107; // @[DecodeForwardUnit.scala 115:42]
  wire  _T_167 = _T_141 & _T_38; // @[DecodeForwardUnit.scala 121:77]
  wire  _T_172 = _T_167 & _T_120; // @[DecodeForwardUnit.scala 123:81]
  wire  _T_174 = _T_172 & _T_107; // @[DecodeForwardUnit.scala 125:83]
  wire  _T_182 = _T_141 & _T_48; // @[DecodeForwardUnit.scala 131:77]
  wire  _T_187 = _T_182 & _T_135; // @[DecodeForwardUnit.scala 133:81]
  wire  _T_189 = _T_187 & _T_105; // @[DecodeForwardUnit.scala 135:82]
  wire [2:0] _GEN_16 = _T_189 ? 3'h5 : _GEN_14; // @[DecodeForwardUnit.scala 136:45]
  wire [2:0] _GEN_17 = _T_174 ? 3'h5 : _GEN_15; // @[DecodeForwardUnit.scala 126:45]
  wire [2:0] _GEN_18 = _T_174 ? _GEN_14 : _GEN_16; // @[DecodeForwardUnit.scala 126:45]
  wire [2:0] _GEN_19 = _T_159 ? 3'h5 : _GEN_18; // @[DecodeForwardUnit.scala 115:79]
  wire [2:0] _GEN_20 = _T_159 ? 3'h5 : _GEN_17; // @[DecodeForwardUnit.scala 115:79]
  wire [2:0] _GEN_21 = _T_138 ? 3'h3 : _GEN_19; // @[DecodeForwardUnit.scala 106:45]
  wire [2:0] _GEN_22 = _T_138 ? _GEN_15 : _GEN_20; // @[DecodeForwardUnit.scala 106:45]
  wire [2:0] _GEN_23 = _T_123 ? 3'h3 : _GEN_22; // @[DecodeForwardUnit.scala 96:45]
  wire [2:0] _GEN_24 = _T_123 ? _GEN_14 : _GEN_21; // @[DecodeForwardUnit.scala 96:45]
  wire [2:0] _GEN_25 = _T_108 ? 3'h3 : _GEN_24; // @[DecodeForwardUnit.scala 85:79]
  wire [2:0] _GEN_26 = _T_108 ? 3'h3 : _GEN_23; // @[DecodeForwardUnit.scala 85:79]
  wire  _T_190 = ~io_ctrl_branch; // @[DecodeForwardUnit.scala 144:32]
  wire  _T_193 = io_execute_regwrite & _T_1; // @[DecodeForwardUnit.scala 146:42]
  wire  _T_195 = _T_193 & _T_2; // @[DecodeForwardUnit.scala 146:75]
  wire  _T_197 = _T_195 & _T_4; // @[DecodeForwardUnit.scala 146:101]
  wire [2:0] _GEN_27 = _T_197 ? 3'h6 : 3'h0; // @[DecodeForwardUnit.scala 146:136]
  wire  _T_200 = io_mem_regwrite & _T_18; // @[DecodeForwardUnit.scala 151:38]
  wire  _T_202 = _T_200 & _T_19; // @[DecodeForwardUnit.scala 151:72]
  wire  _T_207 = _T_202 & _T_48; // @[DecodeForwardUnit.scala 151:99]
  wire  _T_209 = _T_207 & _T_28; // @[DecodeForwardUnit.scala 152:81]
  wire  _T_214 = _T_200 & io_EX_MEM_MEMRD; // @[DecodeForwardUnit.scala 158:79]
  wire  _T_219 = _T_214 & _T_48; // @[DecodeForwardUnit.scala 158:106]
  wire  _T_221 = _T_219 & _T_28; // @[DecodeForwardUnit.scala 159:83]
  wire [3:0] _GEN_28 = _T_221 ? 4'h9 : {{1'd0}, _GEN_27}; // @[DecodeForwardUnit.scala 160:47]
  wire [3:0] _GEN_29 = _T_209 ? 4'h7 : _GEN_28; // @[DecodeForwardUnit.scala 153:45]
  wire  _T_224 = io_wb_regwrite & _T_88; // @[DecodeForwardUnit.scala 168:37]
  wire  _T_226 = _T_224 & _T_89; // @[DecodeForwardUnit.scala 168:71]
  wire  _T_231 = _T_226 & _T_48; // @[DecodeForwardUnit.scala 168:98]
  wire  _T_236 = _T_231 & _T_135; // @[DecodeForwardUnit.scala 170:81]
  wire  _T_238 = _T_236 & _T_105; // @[DecodeForwardUnit.scala 172:83]
  wire  _T_243 = _T_224 & io_MEM_WB_MEMRD; // @[DecodeForwardUnit.scala 178:79]
  wire  _T_248 = _T_243 & _T_48; // @[DecodeForwardUnit.scala 178:106]
  wire  _T_253 = _T_248 & _T_135; // @[DecodeForwardUnit.scala 180:81]
  wire  _T_255 = _T_253 & _T_105; // @[DecodeForwardUnit.scala 182:83]
  wire [3:0] _GEN_30 = _T_255 ? 4'ha : _GEN_29; // @[DecodeForwardUnit.scala 183:45]
  wire [3:0] _GEN_31 = _T_238 ? 4'h8 : _GEN_30; // @[DecodeForwardUnit.scala 173:45]
  wire [3:0] _GEN_32 = _T_190 ? _GEN_31 : 4'h0; // @[DecodeForwardUnit.scala 144:41]
  wire [2:0] _GEN_34 = io_ctrl_branch ? _GEN_26 : 3'h0; // @[DecodeForwardUnit.scala 27:34]
  assign io_forward_rs1 = io_ctrl_branch ? {{1'd0}, _GEN_25} : _GEN_32; // @[DecodeForwardUnit.scala 23:20 DecodeForwardUnit.scala 30:24 DecodeForwardUnit.scala 33:24 DecodeForwardUnit.scala 43:24 DecodeForwardUnit.scala 56:24 DecodeForwardUnit.scala 62:24 DecodeForwardUnit.scala 75:24 DecodeForwardUnit.scala 87:24 DecodeForwardUnit.scala 108:26 DecodeForwardUnit.scala 117:24 DecodeForwardUnit.scala 138:26 DecodeForwardUnit.scala 147:26 DecodeForwardUnit.scala 155:26 DecodeForwardUnit.scala 162:28 DecodeForwardUnit.scala 175:26 DecodeForwardUnit.scala 185:26]
  assign io_forward_rs2 = {{1'd0}, _GEN_34}; // @[DecodeForwardUnit.scala 24:20 DecodeForwardUnit.scala 31:24 DecodeForwardUnit.scala 35:24 DecodeForwardUnit.scala 44:24 DecodeForwardUnit.scala 50:24 DecodeForwardUnit.scala 63:24 DecodeForwardUnit.scala 69:24 DecodeForwardUnit.scala 88:24 DecodeForwardUnit.scala 98:26 DecodeForwardUnit.scala 118:24 DecodeForwardUnit.scala 128:26]
endmodule
module BranchLogic(
  input  [31:0] io_in_rs1,
  input  [31:0] io_in_rs2,
  input  [2:0]  io_in_func3,
  output        io_output
);
  wire  _T = io_in_func3 == 3'h0; // @[BranchLogic.scala 13:20]
  wire  _T_1 = $signed(io_in_rs1) == $signed(io_in_rs2); // @[BranchLogic.scala 15:20]
  wire  _T_2 = io_in_func3 == 3'h1; // @[BranchLogic.scala 20:27]
  wire  _T_3 = $signed(io_in_rs1) != $signed(io_in_rs2); // @[BranchLogic.scala 22:20]
  wire  _T_4 = io_in_func3 == 3'h4; // @[BranchLogic.scala 27:27]
  wire  _T_5 = $signed(io_in_rs1) < $signed(io_in_rs2); // @[BranchLogic.scala 29:20]
  wire  _T_6 = io_in_func3 == 3'h5; // @[BranchLogic.scala 34:27]
  wire  _T_7 = $signed(io_in_rs1) >= $signed(io_in_rs2); // @[BranchLogic.scala 36:20]
  wire  _T_8 = io_in_func3 == 3'h6; // @[BranchLogic.scala 41:27]
  wire  _T_11 = io_in_rs1 < io_in_rs2; // @[BranchLogic.scala 43:27]
  wire  _T_12 = io_in_func3 == 3'h7; // @[BranchLogic.scala 48:27]
  wire  _T_15 = io_in_rs1 >= io_in_rs2; // @[BranchLogic.scala 50:27]
  wire  _GEN_6 = _T_12 & _T_15; // @[BranchLogic.scala 48:41]
  wire  _GEN_7 = _T_8 ? _T_11 : _GEN_6; // @[BranchLogic.scala 41:41]
  wire  _GEN_8 = _T_6 ? _T_7 : _GEN_7; // @[BranchLogic.scala 34:41]
  wire  _GEN_9 = _T_4 ? _T_5 : _GEN_8; // @[BranchLogic.scala 27:41]
  wire  _GEN_10 = _T_2 ? _T_3 : _GEN_9; // @[BranchLogic.scala 20:41]
  assign io_output = _T ? _T_1 : _GEN_10; // @[BranchLogic.scala 16:17 BranchLogic.scala 18:17 BranchLogic.scala 23:17 BranchLogic.scala 25:17 BranchLogic.scala 30:17 BranchLogic.scala 32:17 BranchLogic.scala 37:17 BranchLogic.scala 39:17 BranchLogic.scala 44:17 BranchLogic.scala 46:17 BranchLogic.scala 51:17 BranchLogic.scala 53:17 BranchLogic.scala 56:15]
endmodule
module RegisterFile(
  input         clock,
  input         reset,
  input         io_regWrite,
  input  [4:0]  io_rd_sel,
  input  [4:0]  io_rs1_sel,
  input  [4:0]  io_rs2_sel,
  input  [31:0] io_writeData,
  output [31:0] io_rs1,
  output [31:0] io_rs2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] registers_0; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_1; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_2; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_3; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_4; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_5; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_6; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_7; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_8; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_9; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_10; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_11; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_12; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_13; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_14; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_15; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_16; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_17; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_18; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_19; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_20; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_21; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_22; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_23; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_24; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_25; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_26; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_27; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_28; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_29; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_30; // @[RegisterFile.scala 20:28]
  reg [31:0] registers_31; // @[RegisterFile.scala 20:28]
  wire [31:0] _GEN_1 = 5'h1 == io_rs1_sel ? $signed(registers_1) : $signed(registers_0); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_2 = 5'h2 == io_rs1_sel ? $signed(registers_2) : $signed(_GEN_1); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_3 = 5'h3 == io_rs1_sel ? $signed(registers_3) : $signed(_GEN_2); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_4 = 5'h4 == io_rs1_sel ? $signed(registers_4) : $signed(_GEN_3); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_5 = 5'h5 == io_rs1_sel ? $signed(registers_5) : $signed(_GEN_4); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_6 = 5'h6 == io_rs1_sel ? $signed(registers_6) : $signed(_GEN_5); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_7 = 5'h7 == io_rs1_sel ? $signed(registers_7) : $signed(_GEN_6); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_8 = 5'h8 == io_rs1_sel ? $signed(registers_8) : $signed(_GEN_7); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_9 = 5'h9 == io_rs1_sel ? $signed(registers_9) : $signed(_GEN_8); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_10 = 5'ha == io_rs1_sel ? $signed(registers_10) : $signed(_GEN_9); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_11 = 5'hb == io_rs1_sel ? $signed(registers_11) : $signed(_GEN_10); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_12 = 5'hc == io_rs1_sel ? $signed(registers_12) : $signed(_GEN_11); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_13 = 5'hd == io_rs1_sel ? $signed(registers_13) : $signed(_GEN_12); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_14 = 5'he == io_rs1_sel ? $signed(registers_14) : $signed(_GEN_13); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_15 = 5'hf == io_rs1_sel ? $signed(registers_15) : $signed(_GEN_14); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_16 = 5'h10 == io_rs1_sel ? $signed(registers_16) : $signed(_GEN_15); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_17 = 5'h11 == io_rs1_sel ? $signed(registers_17) : $signed(_GEN_16); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_18 = 5'h12 == io_rs1_sel ? $signed(registers_18) : $signed(_GEN_17); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_19 = 5'h13 == io_rs1_sel ? $signed(registers_19) : $signed(_GEN_18); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_20 = 5'h14 == io_rs1_sel ? $signed(registers_20) : $signed(_GEN_19); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_21 = 5'h15 == io_rs1_sel ? $signed(registers_21) : $signed(_GEN_20); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_22 = 5'h16 == io_rs1_sel ? $signed(registers_22) : $signed(_GEN_21); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_23 = 5'h17 == io_rs1_sel ? $signed(registers_23) : $signed(_GEN_22); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_24 = 5'h18 == io_rs1_sel ? $signed(registers_24) : $signed(_GEN_23); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_25 = 5'h19 == io_rs1_sel ? $signed(registers_25) : $signed(_GEN_24); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_26 = 5'h1a == io_rs1_sel ? $signed(registers_26) : $signed(_GEN_25); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_27 = 5'h1b == io_rs1_sel ? $signed(registers_27) : $signed(_GEN_26); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_28 = 5'h1c == io_rs1_sel ? $signed(registers_28) : $signed(_GEN_27); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_29 = 5'h1d == io_rs1_sel ? $signed(registers_29) : $signed(_GEN_28); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_30 = 5'h1e == io_rs1_sel ? $signed(registers_30) : $signed(_GEN_29); // @[RegisterFile.scala 25:12]
  wire [31:0] _GEN_33 = 5'h1 == io_rs2_sel ? $signed(registers_1) : $signed(registers_0); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_34 = 5'h2 == io_rs2_sel ? $signed(registers_2) : $signed(_GEN_33); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_35 = 5'h3 == io_rs2_sel ? $signed(registers_3) : $signed(_GEN_34); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_36 = 5'h4 == io_rs2_sel ? $signed(registers_4) : $signed(_GEN_35); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_37 = 5'h5 == io_rs2_sel ? $signed(registers_5) : $signed(_GEN_36); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_38 = 5'h6 == io_rs2_sel ? $signed(registers_6) : $signed(_GEN_37); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_39 = 5'h7 == io_rs2_sel ? $signed(registers_7) : $signed(_GEN_38); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_40 = 5'h8 == io_rs2_sel ? $signed(registers_8) : $signed(_GEN_39); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_41 = 5'h9 == io_rs2_sel ? $signed(registers_9) : $signed(_GEN_40); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_42 = 5'ha == io_rs2_sel ? $signed(registers_10) : $signed(_GEN_41); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_43 = 5'hb == io_rs2_sel ? $signed(registers_11) : $signed(_GEN_42); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_44 = 5'hc == io_rs2_sel ? $signed(registers_12) : $signed(_GEN_43); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_45 = 5'hd == io_rs2_sel ? $signed(registers_13) : $signed(_GEN_44); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_46 = 5'he == io_rs2_sel ? $signed(registers_14) : $signed(_GEN_45); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_47 = 5'hf == io_rs2_sel ? $signed(registers_15) : $signed(_GEN_46); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_48 = 5'h10 == io_rs2_sel ? $signed(registers_16) : $signed(_GEN_47); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_49 = 5'h11 == io_rs2_sel ? $signed(registers_17) : $signed(_GEN_48); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_50 = 5'h12 == io_rs2_sel ? $signed(registers_18) : $signed(_GEN_49); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_51 = 5'h13 == io_rs2_sel ? $signed(registers_19) : $signed(_GEN_50); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_52 = 5'h14 == io_rs2_sel ? $signed(registers_20) : $signed(_GEN_51); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_53 = 5'h15 == io_rs2_sel ? $signed(registers_21) : $signed(_GEN_52); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_54 = 5'h16 == io_rs2_sel ? $signed(registers_22) : $signed(_GEN_53); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_55 = 5'h17 == io_rs2_sel ? $signed(registers_23) : $signed(_GEN_54); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_56 = 5'h18 == io_rs2_sel ? $signed(registers_24) : $signed(_GEN_55); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_57 = 5'h19 == io_rs2_sel ? $signed(registers_25) : $signed(_GEN_56); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_58 = 5'h1a == io_rs2_sel ? $signed(registers_26) : $signed(_GEN_57); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_59 = 5'h1b == io_rs2_sel ? $signed(registers_27) : $signed(_GEN_58); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_60 = 5'h1c == io_rs2_sel ? $signed(registers_28) : $signed(_GEN_59); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_61 = 5'h1d == io_rs2_sel ? $signed(registers_29) : $signed(_GEN_60); // @[RegisterFile.scala 26:12]
  wire [31:0] _GEN_62 = 5'h1e == io_rs2_sel ? $signed(registers_30) : $signed(_GEN_61); // @[RegisterFile.scala 26:12]
  wire  _T_2 = io_rd_sel == 5'h0; // @[RegisterFile.scala 28:24]
  assign io_rs1 = 5'h1f == io_rs1_sel ? $signed(registers_31) : $signed(_GEN_30); // @[RegisterFile.scala 25:12]
  assign io_rs2 = 5'h1f == io_rs2_sel ? $signed(registers_31) : $signed(_GEN_62); // @[RegisterFile.scala 26:12]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  registers_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  registers_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  registers_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  registers_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  registers_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  registers_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  registers_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  registers_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  registers_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  registers_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  registers_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  registers_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  registers_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  registers_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  registers_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  registers_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  registers_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  registers_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  registers_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  registers_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  registers_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  registers_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  registers_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  registers_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  registers_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  registers_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  registers_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  registers_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  registers_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  registers_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  registers_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  registers_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      registers_0 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        registers_0 <= 32'sh0;
      end else if (5'h0 == io_rd_sel) begin
        registers_0 <= io_writeData;
      end else begin
        registers_0 <= 32'sh0;
      end
    end else begin
      registers_0 <= 32'sh0;
    end
    if (reset) begin
      registers_1 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h1 == io_rd_sel) begin
          registers_1 <= 32'sh0;
        end
      end else if (5'h1 == io_rd_sel) begin
        registers_1 <= io_writeData;
      end
    end
    if (reset) begin
      registers_2 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h2 == io_rd_sel) begin
          registers_2 <= 32'sh0;
        end
      end else if (5'h2 == io_rd_sel) begin
        registers_2 <= io_writeData;
      end
    end
    if (reset) begin
      registers_3 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h3 == io_rd_sel) begin
          registers_3 <= 32'sh0;
        end
      end else if (5'h3 == io_rd_sel) begin
        registers_3 <= io_writeData;
      end
    end
    if (reset) begin
      registers_4 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h4 == io_rd_sel) begin
          registers_4 <= 32'sh0;
        end
      end else if (5'h4 == io_rd_sel) begin
        registers_4 <= io_writeData;
      end
    end
    if (reset) begin
      registers_5 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h5 == io_rd_sel) begin
          registers_5 <= 32'sh0;
        end
      end else if (5'h5 == io_rd_sel) begin
        registers_5 <= io_writeData;
      end
    end
    if (reset) begin
      registers_6 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h6 == io_rd_sel) begin
          registers_6 <= 32'sh0;
        end
      end else if (5'h6 == io_rd_sel) begin
        registers_6 <= io_writeData;
      end
    end
    if (reset) begin
      registers_7 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h7 == io_rd_sel) begin
          registers_7 <= 32'sh0;
        end
      end else if (5'h7 == io_rd_sel) begin
        registers_7 <= io_writeData;
      end
    end
    if (reset) begin
      registers_8 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h8 == io_rd_sel) begin
          registers_8 <= 32'sh0;
        end
      end else if (5'h8 == io_rd_sel) begin
        registers_8 <= io_writeData;
      end
    end
    if (reset) begin
      registers_9 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h9 == io_rd_sel) begin
          registers_9 <= 32'sh0;
        end
      end else if (5'h9 == io_rd_sel) begin
        registers_9 <= io_writeData;
      end
    end
    if (reset) begin
      registers_10 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'ha == io_rd_sel) begin
          registers_10 <= 32'sh0;
        end
      end else if (5'ha == io_rd_sel) begin
        registers_10 <= io_writeData;
      end
    end
    if (reset) begin
      registers_11 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'hb == io_rd_sel) begin
          registers_11 <= 32'sh0;
        end
      end else if (5'hb == io_rd_sel) begin
        registers_11 <= io_writeData;
      end
    end
    if (reset) begin
      registers_12 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'hc == io_rd_sel) begin
          registers_12 <= 32'sh0;
        end
      end else if (5'hc == io_rd_sel) begin
        registers_12 <= io_writeData;
      end
    end
    if (reset) begin
      registers_13 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'hd == io_rd_sel) begin
          registers_13 <= 32'sh0;
        end
      end else if (5'hd == io_rd_sel) begin
        registers_13 <= io_writeData;
      end
    end
    if (reset) begin
      registers_14 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'he == io_rd_sel) begin
          registers_14 <= 32'sh0;
        end
      end else if (5'he == io_rd_sel) begin
        registers_14 <= io_writeData;
      end
    end
    if (reset) begin
      registers_15 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'hf == io_rd_sel) begin
          registers_15 <= 32'sh0;
        end
      end else if (5'hf == io_rd_sel) begin
        registers_15 <= io_writeData;
      end
    end
    if (reset) begin
      registers_16 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h10 == io_rd_sel) begin
          registers_16 <= 32'sh0;
        end
      end else if (5'h10 == io_rd_sel) begin
        registers_16 <= io_writeData;
      end
    end
    if (reset) begin
      registers_17 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h11 == io_rd_sel) begin
          registers_17 <= 32'sh0;
        end
      end else if (5'h11 == io_rd_sel) begin
        registers_17 <= io_writeData;
      end
    end
    if (reset) begin
      registers_18 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h12 == io_rd_sel) begin
          registers_18 <= 32'sh0;
        end
      end else if (5'h12 == io_rd_sel) begin
        registers_18 <= io_writeData;
      end
    end
    if (reset) begin
      registers_19 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h13 == io_rd_sel) begin
          registers_19 <= 32'sh0;
        end
      end else if (5'h13 == io_rd_sel) begin
        registers_19 <= io_writeData;
      end
    end
    if (reset) begin
      registers_20 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h14 == io_rd_sel) begin
          registers_20 <= 32'sh0;
        end
      end else if (5'h14 == io_rd_sel) begin
        registers_20 <= io_writeData;
      end
    end
    if (reset) begin
      registers_21 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h15 == io_rd_sel) begin
          registers_21 <= 32'sh0;
        end
      end else if (5'h15 == io_rd_sel) begin
        registers_21 <= io_writeData;
      end
    end
    if (reset) begin
      registers_22 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h16 == io_rd_sel) begin
          registers_22 <= 32'sh0;
        end
      end else if (5'h16 == io_rd_sel) begin
        registers_22 <= io_writeData;
      end
    end
    if (reset) begin
      registers_23 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h17 == io_rd_sel) begin
          registers_23 <= 32'sh0;
        end
      end else if (5'h17 == io_rd_sel) begin
        registers_23 <= io_writeData;
      end
    end
    if (reset) begin
      registers_24 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h18 == io_rd_sel) begin
          registers_24 <= 32'sh0;
        end
      end else if (5'h18 == io_rd_sel) begin
        registers_24 <= io_writeData;
      end
    end
    if (reset) begin
      registers_25 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h19 == io_rd_sel) begin
          registers_25 <= 32'sh0;
        end
      end else if (5'h19 == io_rd_sel) begin
        registers_25 <= io_writeData;
      end
    end
    if (reset) begin
      registers_26 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h1a == io_rd_sel) begin
          registers_26 <= 32'sh0;
        end
      end else if (5'h1a == io_rd_sel) begin
        registers_26 <= io_writeData;
      end
    end
    if (reset) begin
      registers_27 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h1b == io_rd_sel) begin
          registers_27 <= 32'sh0;
        end
      end else if (5'h1b == io_rd_sel) begin
        registers_27 <= io_writeData;
      end
    end
    if (reset) begin
      registers_28 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h1c == io_rd_sel) begin
          registers_28 <= 32'sh0;
        end
      end else if (5'h1c == io_rd_sel) begin
        registers_28 <= io_writeData;
      end
    end
    if (reset) begin
      registers_29 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h1d == io_rd_sel) begin
          registers_29 <= 32'sh0;
        end
      end else if (5'h1d == io_rd_sel) begin
        registers_29 <= io_writeData;
      end
    end
    if (reset) begin
      registers_30 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h1e == io_rd_sel) begin
          registers_30 <= 32'sh0;
        end
      end else if (5'h1e == io_rd_sel) begin
        registers_30 <= io_writeData;
      end
    end
    if (reset) begin
      registers_31 <= 32'sh0;
    end else if (io_regWrite) begin
      if (_T_2) begin
        if (5'h1f == io_rd_sel) begin
          registers_31 <= 32'sh0;
        end
      end else if (5'h1f == io_rd_sel) begin
        registers_31 <= io_writeData;
      end
    end
  end
endmodule
module ImmediateGeneration(
  input  [31:0] io_instruction,
  input  [31:0] io_pc,
  output [31:0] io_s_imm,
  output [31:0] io_sb_imm,
  output [31:0] io_u_imm,
  output [31:0] io_uj_imm,
  output [31:0] io_i_imm
);
  wire [4:0] s_lower_half = io_instruction[11:7]; // @[ImmediateGeneration.scala 19:38]
  wire [6:0] s_upper_half = io_instruction[31:25]; // @[ImmediateGeneration.scala 20:38]
  wire [11:0] s_imm_12 = {s_upper_half,s_lower_half}; // @[Cat.scala 29:58]
  wire [19:0] _T_2 = s_imm_12[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  wire [3:0] sb_lower_half = io_instruction[11:8]; // @[ImmediateGeneration.scala 28:39]
  wire [5:0] sb_upper_half = io_instruction[30:25]; // @[ImmediateGeneration.scala 29:39]
  wire  sb_11thbit = io_instruction[7]; // @[ImmediateGeneration.scala 30:36]
  wire  sb_12thbit = io_instruction[31]; // @[ImmediateGeneration.scala 31:36]
  wire [12:0] sb_imm_13 = {sb_12thbit,sb_11thbit,sb_upper_half,sb_lower_half,1'h0}; // @[Cat.scala 29:58]
  wire [18:0] _T_10 = sb_imm_13[12] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 72:12]
  wire [31:0] sb_imm_32 = {_T_10,sb_12thbit,sb_11thbit,sb_upper_half,sb_lower_half,1'h0}; // @[ImmediateGeneration.scala 33:61]
  wire [19:0] u_imm_20 = io_instruction[31:12]; // @[ImmediateGeneration.scala 39:34]
  wire [11:0] _T_17 = u_imm_20[19] ? 12'hfff : 12'h0; // @[Bitwise.scala 72:12]
  wire [31:0] u_imm_32 = {_T_17,u_imm_20}; // @[Cat.scala 29:58]
  wire [43:0] _GEN_0 = {u_imm_32, 12'h0}; // @[ImmediateGeneration.scala 42:37]
  wire [46:0] _T_18 = {{3'd0}, _GEN_0}; // @[ImmediateGeneration.scala 43:34]
  wire [9:0] uj_lower_half = io_instruction[30:21]; // @[ImmediateGeneration.scala 48:39]
  wire  uj_11thbit = io_instruction[20]; // @[ImmediateGeneration.scala 49:36]
  wire [7:0] uj_upper_half = io_instruction[19:12]; // @[ImmediateGeneration.scala 50:39]
  wire [20:0] uj_imm_21 = {sb_12thbit,uj_upper_half,uj_11thbit,uj_lower_half,1'h0}; // @[Cat.scala 29:58]
  wire [10:0] _T_25 = uj_imm_21[20] ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12]
  wire [31:0] uj_imm_32 = {_T_25,sb_12thbit,uj_upper_half,uj_11thbit,uj_lower_half,1'h0}; // @[ImmediateGeneration.scala 53:61]
  wire [11:0] i_imm_12 = io_instruction[31:20]; // @[ImmediateGeneration.scala 59:34]
  wire [19:0] _T_32 = i_imm_12[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  assign io_s_imm = {_T_2,s_upper_half,s_lower_half}; // @[ImmediateGeneration.scala 23:14]
  assign io_sb_imm = $signed(sb_imm_32) + $signed(io_pc); // @[ImmediateGeneration.scala 34:15]
  assign io_u_imm = _T_18[31:0]; // @[ImmediateGeneration.scala 43:14]
  assign io_uj_imm = $signed(uj_imm_32) + $signed(io_pc); // @[ImmediateGeneration.scala 54:15]
  assign io_i_imm = {_T_32,i_imm_12}; // @[ImmediateGeneration.scala 61:14]
endmodule
module StructuralDetector(
  input  [4:0] io_rs1_sel,
  input  [4:0] io_rs2_sel,
  input        io_MEM_WB_regWr,
  input  [4:0] io_MEM_WB_REGRD,
  input  [6:0] io_inst_op_in,
  output       io_fwd_rs1,
  output       io_fwd_rs2
);
  wire  _T_1 = io_MEM_WB_REGRD != 5'h0; // @[StructuralDetector.scala 27:51]
  wire  _T_2 = io_MEM_WB_regWr & _T_1; // @[StructuralDetector.scala 27:32]
  wire  _T_3 = io_MEM_WB_REGRD == io_rs1_sel; // @[StructuralDetector.scala 27:86]
  wire  _T_4 = _T_2 & _T_3; // @[StructuralDetector.scala 27:66]
  wire  _T_5 = io_inst_op_in != 7'h37; // @[StructuralDetector.scala 27:118]
  wire  _T_10 = io_MEM_WB_REGRD == io_rs2_sel; // @[StructuralDetector.scala 33:86]
  wire  _T_11 = _T_2 & _T_10; // @[StructuralDetector.scala 33:67]
  assign io_fwd_rs1 = _T_4 & _T_5; // @[StructuralDetector.scala 28:16 StructuralDetector.scala 30:16]
  assign io_fwd_rs2 = _T_11 & _T_5; // @[StructuralDetector.scala 34:16 StructuralDetector.scala 36:16]
endmodule
module Jalr(
  input  [31:0] io_input_a,
  input  [31:0] io_input_b,
  output [31:0] io_output
);
  wire [31:0] sum = $signed(io_input_a) + $signed(io_input_b); // @[Jalr.scala 12:26]
  wire [32:0] _GEN_0 = {{1{sum[31]}},sum}; // @[Jalr.scala 13:22]
  wire [32:0] _T_3 = $signed(_GEN_0) & 33'shfffffffe; // @[Jalr.scala 13:22]
  assign io_output = _T_3[31:0]; // @[Jalr.scala 13:15]
endmodule
module CsrPrimitive(
  input        clock,
  input        reset,
  input  [5:0] io_i_wrdata,
  input        io_i_wr_en,
  output [5:0] io_o_rd_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] rdata_q; // @[CsrPrimitive.scala 13:24]
  assign io_o_rd_data = rdata_q; // @[CsrPrimitive.scala 18:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rdata_q = _RAND_0[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rdata_q <= 6'hd;
    end else if (io_i_wr_en) begin
      rdata_q <= io_i_wrdata;
    end
  end
endmodule
module CsrPrimitive_1(
  input         clock,
  input         reset,
  input  [31:0] io_i_wrdata,
  input         io_i_wr_en,
  output [31:0] io_o_rd_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] rdata_q; // @[CsrPrimitive.scala 13:24]
  assign io_o_rd_data = rdata_q; // @[CsrPrimitive.scala 18:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rdata_q = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rdata_q <= 32'h0;
    end else if (io_i_wr_en) begin
      rdata_q <= io_i_wrdata;
    end
  end
endmodule
module CsrPrimitive_2(
  input        clock,
  input        reset,
  input  [2:0] io_i_wrdata,
  input        io_i_wr_en,
  output [2:0] io_o_rd_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] rdata_q; // @[CsrPrimitive.scala 13:24]
  assign io_o_rd_data = rdata_q; // @[CsrPrimitive.scala 18:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rdata_q = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rdata_q <= 3'h4;
    end else if (io_i_wr_en) begin
      rdata_q <= io_i_wrdata;
    end
  end
endmodule
module CsrPrimitive_4(
  input        clock,
  input        reset,
  input  [5:0] io_i_wrdata,
  input        io_i_wr_en,
  output [5:0] io_o_rd_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] rdata_q; // @[CsrPrimitive.scala 13:24]
  assign io_o_rd_data = rdata_q; // @[CsrPrimitive.scala 18:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rdata_q = _RAND_0[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rdata_q <= 6'h0;
    end else if (io_i_wr_en) begin
      rdata_q <= io_i_wrdata;
    end
  end
endmodule
module CsrPrimitive_6(
  input         clock,
  input         reset,
  input  [31:0] io_i_wrdata,
  input         io_i_wr_en,
  output [31:0] io_o_rd_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] rdata_q; // @[CsrPrimitive.scala 13:24]
  assign io_o_rd_data = rdata_q; // @[CsrPrimitive.scala 18:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rdata_q = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rdata_q <= 32'h1;
    end else if (io_i_wr_en) begin
      rdata_q <= io_i_wrdata;
    end
  end
endmodule
module CsrPrimitive_7(
  input         clock,
  input         reset,
  input  [27:0] io_i_wrdata,
  input         io_i_wr_en,
  output [27:0] io_o_rd_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [27:0] rdata_q; // @[CsrPrimitive.scala 13:24]
  assign io_o_rd_data = rdata_q; // @[CsrPrimitive.scala 18:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rdata_q = _RAND_0[27:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rdata_q <= 28'h0;
    end else if (io_i_wr_en) begin
      rdata_q <= io_i_wrdata;
    end
  end
endmodule
module BrqCounter(
  input         clock,
  input         reset,
  input         io_i_counter_inc,
  input         io_i_counterh_we,
  input         io_i_counter_we,
  input  [31:0] io_i_counter_val,
  output [63:0] io_o_counter_val
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  we = io_i_counter_we | io_i_counterh_we; // @[BrqCounter.scala 27:35]
  reg [63:0] counter_q; // @[BrqCounter.scala 57:26]
  wire [31:0] counter_msb = io_i_counterh_we ? io_i_counter_val : counter_q[63:32]; // @[BrqCounter.scala 34:3]
  wire [31:0] counter_lsb = io_i_counterh_we ? counter_q[31:0] : io_i_counter_val; // @[BrqCounter.scala 34:3]
  wire [63:0] counter_load = {counter_msb,counter_lsb}; // @[Cat.scala 29:58]
  wire [63:0] counter_upd = counter_q + 64'h1; // @[BrqCounter.scala 41:47]
  assign io_o_counter_val = counter_q; // @[BrqCounter.scala 76:20]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  _RAND_0 = {2{`RANDOM}};
  counter_q = _RAND_0[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      counter_q <= 64'h0;
    end else if (we) begin
      counter_q <= counter_load;
    end else if (io_i_counter_inc) begin
      counter_q <= counter_upd;
    end
  end
endmodule
module BrqCounter_2(
  input         clock,
  input         reset,
  input         io_i_counter_inc,
  input         io_i_counterh_we,
  input         io_i_counter_we,
  input  [31:0] io_i_counter_val,
  output [63:0] io_o_counter_val
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  we = io_i_counter_we | io_i_counterh_we; // @[BrqCounter.scala 27:35]
  reg [39:0] counter_q; // @[BrqCounter.scala 57:26]
  wire [79:0] _T_1 = {40'h0,counter_q}; // @[Cat.scala 29:58]
  wire [63:0] counter = _T_1[63:0]; // @[BrqCounter.scala 16:21 BrqCounter.scala 28:16]
  wire [31:0] counter_msb = io_i_counterh_we ? io_i_counter_val : counter[63:32]; // @[BrqCounter.scala 34:3]
  wire [31:0] counter_lsb = io_i_counterh_we ? counter[31:0] : io_i_counter_val; // @[BrqCounter.scala 34:3]
  wire [63:0] counter_load = {counter_msb,counter_lsb}; // @[Cat.scala 29:58]
  wire [39:0] counter_upd = counter[39:0] + 40'h1; // @[BrqCounter.scala 41:47]
  assign io_o_counter_val = _T_1[63:0]; // @[BrqCounter.scala 76:20]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  _RAND_0 = {2{`RANDOM}};
  counter_q = _RAND_0[39:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      counter_q <= 40'h0;
    end else if (we) begin
      counter_q <= counter_load[39:0];
    end else if (io_i_counter_inc) begin
      counter_q <= counter_upd;
    end else begin
      counter_q <= counter[39:0];
    end
  end
endmodule
module CsrRegisterFile(
  input         clock,
  input         reset,
  output [31:0] io_o_csr_mtvec,
  input         io_i_csr_mtvec_init,
  input         io_i_csr_access,
  input  [11:0] io_i_csr_addr,
  input  [31:0] io_i_csr_wdata,
  input  [1:0]  io_i_csr_op,
  input         io_i_csr_op_en,
  output [31:0] io_o_csr_rdata,
  input         io_i_irq_external,
  output        io_o_irq_pending,
  output [2:0]  io_o_irqs,
  output        io_o_csr_mstatus_mie,
  output [31:0] io_o_csr_mepc,
  input  [31:0] io_i_pc_if,
  input         io_i_csr_save_if,
  input         io_i_csr_restore_mret,
  input         io_i_csr_save_cause,
  input  [5:0]  io_i_csr_mcause,
  output        io_o_illegal_csr_insn
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
`endif // RANDOMIZE_REG_INIT
  wire  PRIM_MSTATUS_clock; // @[CsrRegisterFile.scala 647:28]
  wire  PRIM_MSTATUS_reset; // @[CsrRegisterFile.scala 647:28]
  wire [5:0] PRIM_MSTATUS_io_i_wrdata; // @[CsrRegisterFile.scala 647:28]
  wire  PRIM_MSTATUS_io_i_wr_en; // @[CsrRegisterFile.scala 647:28]
  wire [5:0] PRIM_MSTATUS_io_o_rd_data; // @[CsrRegisterFile.scala 647:28]
  wire  PRIM_MEPC_clock; // @[CsrRegisterFile.scala 653:25]
  wire  PRIM_MEPC_reset; // @[CsrRegisterFile.scala 653:25]
  wire [31:0] PRIM_MEPC_io_i_wrdata; // @[CsrRegisterFile.scala 653:25]
  wire  PRIM_MEPC_io_i_wr_en; // @[CsrRegisterFile.scala 653:25]
  wire [31:0] PRIM_MEPC_io_o_rd_data; // @[CsrRegisterFile.scala 653:25]
  wire  PRIM_MIE_clock; // @[CsrRegisterFile.scala 664:24]
  wire  PRIM_MIE_reset; // @[CsrRegisterFile.scala 664:24]
  wire [2:0] PRIM_MIE_io_i_wrdata; // @[CsrRegisterFile.scala 664:24]
  wire  PRIM_MIE_io_i_wr_en; // @[CsrRegisterFile.scala 664:24]
  wire [2:0] PRIM_MIE_io_o_rd_data; // @[CsrRegisterFile.scala 664:24]
  wire  PRIM_MSCRATCH_clock; // @[CsrRegisterFile.scala 671:29]
  wire  PRIM_MSCRATCH_reset; // @[CsrRegisterFile.scala 671:29]
  wire [31:0] PRIM_MSCRATCH_io_i_wrdata; // @[CsrRegisterFile.scala 671:29]
  wire  PRIM_MSCRATCH_io_i_wr_en; // @[CsrRegisterFile.scala 671:29]
  wire [31:0] PRIM_MSCRATCH_io_o_rd_data; // @[CsrRegisterFile.scala 671:29]
  wire  PRIM_MCAUSE_clock; // @[CsrRegisterFile.scala 678:27]
  wire  PRIM_MCAUSE_reset; // @[CsrRegisterFile.scala 678:27]
  wire [5:0] PRIM_MCAUSE_io_i_wrdata; // @[CsrRegisterFile.scala 678:27]
  wire  PRIM_MCAUSE_io_i_wr_en; // @[CsrRegisterFile.scala 678:27]
  wire [5:0] PRIM_MCAUSE_io_o_rd_data; // @[CsrRegisterFile.scala 678:27]
  wire  PRIM_MTVAL_clock; // @[CsrRegisterFile.scala 684:26]
  wire  PRIM_MTVAL_reset; // @[CsrRegisterFile.scala 684:26]
  wire [31:0] PRIM_MTVAL_io_i_wrdata; // @[CsrRegisterFile.scala 684:26]
  wire  PRIM_MTVAL_io_i_wr_en; // @[CsrRegisterFile.scala 684:26]
  wire [31:0] PRIM_MTVAL_io_o_rd_data; // @[CsrRegisterFile.scala 684:26]
  wire  PRIM_MTVEC_clock; // @[CsrRegisterFile.scala 691:26]
  wire  PRIM_MTVEC_reset; // @[CsrRegisterFile.scala 691:26]
  wire [31:0] PRIM_MTVEC_io_i_wrdata; // @[CsrRegisterFile.scala 691:26]
  wire  PRIM_MTVEC_io_i_wr_en; // @[CsrRegisterFile.scala 691:26]
  wire [31:0] PRIM_MTVEC_io_o_rd_data; // @[CsrRegisterFile.scala 691:26]
  wire  PRIM_DCSR_clock; // @[CsrRegisterFile.scala 701:25]
  wire  PRIM_DCSR_reset; // @[CsrRegisterFile.scala 701:25]
  wire [27:0] PRIM_DCSR_io_i_wrdata; // @[CsrRegisterFile.scala 701:25]
  wire  PRIM_DCSR_io_i_wr_en; // @[CsrRegisterFile.scala 701:25]
  wire [27:0] PRIM_DCSR_io_o_rd_data; // @[CsrRegisterFile.scala 701:25]
  wire  PRIM_DEPC_clock; // @[CsrRegisterFile.scala 708:25]
  wire  PRIM_DEPC_reset; // @[CsrRegisterFile.scala 708:25]
  wire [31:0] PRIM_DEPC_io_i_wrdata; // @[CsrRegisterFile.scala 708:25]
  wire  PRIM_DEPC_io_i_wr_en; // @[CsrRegisterFile.scala 708:25]
  wire [31:0] PRIM_DEPC_io_o_rd_data; // @[CsrRegisterFile.scala 708:25]
  wire  PRIM_DSCRATCH0_clock; // @[CsrRegisterFile.scala 714:30]
  wire  PRIM_DSCRATCH0_reset; // @[CsrRegisterFile.scala 714:30]
  wire [31:0] PRIM_DSCRATCH0_io_i_wrdata; // @[CsrRegisterFile.scala 714:30]
  wire  PRIM_DSCRATCH0_io_i_wr_en; // @[CsrRegisterFile.scala 714:30]
  wire [31:0] PRIM_DSCRATCH0_io_o_rd_data; // @[CsrRegisterFile.scala 714:30]
  wire  PRIM_DSCRATCH1_clock; // @[CsrRegisterFile.scala 721:30]
  wire  PRIM_DSCRATCH1_reset; // @[CsrRegisterFile.scala 721:30]
  wire [31:0] PRIM_DSCRATCH1_io_i_wrdata; // @[CsrRegisterFile.scala 721:30]
  wire  PRIM_DSCRATCH1_io_i_wr_en; // @[CsrRegisterFile.scala 721:30]
  wire [31:0] PRIM_DSCRATCH1_io_o_rd_data; // @[CsrRegisterFile.scala 721:30]
  wire  COUNT_MCYCLE_clock; // @[CsrRegisterFile.scala 777:28]
  wire  COUNT_MCYCLE_reset; // @[CsrRegisterFile.scala 777:28]
  wire  COUNT_MCYCLE_io_i_counter_inc; // @[CsrRegisterFile.scala 777:28]
  wire  COUNT_MCYCLE_io_i_counterh_we; // @[CsrRegisterFile.scala 777:28]
  wire  COUNT_MCYCLE_io_i_counter_we; // @[CsrRegisterFile.scala 777:28]
  wire [31:0] COUNT_MCYCLE_io_i_counter_val; // @[CsrRegisterFile.scala 777:28]
  wire [63:0] COUNT_MCYCLE_io_o_counter_val; // @[CsrRegisterFile.scala 777:28]
  wire  COUNT_MINSTRET_clock; // @[CsrRegisterFile.scala 785:30]
  wire  COUNT_MINSTRET_reset; // @[CsrRegisterFile.scala 785:30]
  wire  COUNT_MINSTRET_io_i_counter_inc; // @[CsrRegisterFile.scala 785:30]
  wire  COUNT_MINSTRET_io_i_counterh_we; // @[CsrRegisterFile.scala 785:30]
  wire  COUNT_MINSTRET_io_i_counter_we; // @[CsrRegisterFile.scala 785:30]
  wire [31:0] COUNT_MINSTRET_io_i_counter_val; // @[CsrRegisterFile.scala 785:30]
  wire [63:0] COUNT_MINSTRET_io_o_counter_val; // @[CsrRegisterFile.scala 785:30]
  wire  BrqCounter_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_1_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_1_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_1_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_1_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_1_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_1_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_1_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_2_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_2_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_2_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_2_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_2_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_2_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_2_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_3_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_3_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_3_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_3_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_3_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_3_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_3_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_4_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_4_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_4_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_4_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_4_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_4_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_4_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_5_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_5_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_5_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_5_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_5_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_5_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_5_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_6_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_6_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_6_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_6_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_6_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_6_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_6_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_7_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_7_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_7_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_7_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_7_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_7_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_7_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_8_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_8_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_8_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_8_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_8_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_8_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_8_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_9_clock; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_9_reset; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_9_io_i_counter_inc; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_9_io_i_counterh_we; // @[CsrRegisterFile.scala 797:26]
  wire  BrqCounter_9_io_i_counter_we; // @[CsrRegisterFile.scala 797:26]
  wire [31:0] BrqCounter_9_io_i_counter_val; // @[CsrRegisterFile.scala 797:26]
  wire [63:0] BrqCounter_9_io_o_counter_val; // @[CsrRegisterFile.scala 797:26]
  reg [1:0] priv_lvl_q; // @[CsrRegisterFile.scala 100:27]
  reg [12:0] mcountinhibit_q; // @[CsrRegisterFile.scala 133:49]
  reg [63:0] mhpmcounter_0; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_1; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_2; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_3; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_4; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_5; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_6; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_7; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_8; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_9; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_10; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_11; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_12; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_13; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_14; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_15; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_16; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_17; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_18; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_19; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_20; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_21; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_22; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_23; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_24; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_25; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_26; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_27; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_28; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_29; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_30; // @[CsrRegisterFile.scala 137:49]
  reg [63:0] mhpmcounter_31; // @[CsrRegisterFile.scala 137:49]
  reg [31:0] mhpmevent_0; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_1; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_2; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_3; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_4; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_5; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_6; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_7; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_8; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_9; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_10; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_11; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_12; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_13; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_14; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_15; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_16; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_17; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_18; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_19; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_20; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_21; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_22; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_23; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_24; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_25; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_26; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_27; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_28; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_29; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_30; // @[CsrRegisterFile.scala 142:49]
  reg [31:0] mhpmevent_31; // @[CsrRegisterFile.scala 142:49]
  wire  illegal_csr_priv = io_i_csr_addr[9:8] > priv_lvl_q; // @[CsrRegisterFile.scala 201:43]
  wire  _T_39 = io_i_csr_addr[11:10] == 2'h3; // @[CsrRegisterFile.scala 203:47]
  wire  _T_514 = io_i_csr_op == 2'h1; // @[CsrRegisterFile.scala 618:47]
  wire  _T_515 = io_i_csr_op == 2'h2; // @[CsrRegisterFile.scala 618:89]
  wire  _T_516 = _T_514 | _T_515; // @[CsrRegisterFile.scala 618:74]
  wire  _T_517 = io_i_csr_op == 2'h3; // @[CsrRegisterFile.scala 618:129]
  wire  _T_518 = _T_516 | _T_517; // @[CsrRegisterFile.scala 618:114]
  wire  csr_wreq = io_i_csr_op_en & _T_518; // @[CsrRegisterFile.scala 618:31]
  wire  illegal_csr_write = _T_39 & csr_wreq; // @[CsrRegisterFile.scala 203:60]
  wire  _T_44 = io_i_csr_addr == 12'hf14; // @[CsrRegisterFile.scala 218:22]
  wire  _T_45 = io_i_csr_addr == 12'h300; // @[CsrRegisterFile.scala 223:29]
  wire  _T_56 = io_i_csr_addr == 12'h301; // @[CsrRegisterFile.scala 231:29]
  wire  _T_57 = io_i_csr_addr == 12'h304; // @[CsrRegisterFile.scala 236:29]
  wire  _T_64 = io_i_csr_addr == 12'h340; // @[CsrRegisterFile.scala 244:29]
  wire  _T_65 = io_i_csr_addr == 12'h305; // @[CsrRegisterFile.scala 250:29]
  wire  _T_66 = io_i_csr_addr == 12'h341; // @[CsrRegisterFile.scala 259:29]
  wire  _T_67 = io_i_csr_addr == 12'h342; // @[CsrRegisterFile.scala 265:29]
  wire  _T_72 = io_i_csr_addr == 12'h343; // @[CsrRegisterFile.scala 272:29]
  wire  _T_73 = io_i_csr_addr == 12'h344; // @[CsrRegisterFile.scala 277:29]
  wire  _T_80 = io_i_csr_addr == 12'h7b0; // @[CsrRegisterFile.scala 285:29]
  wire  _T_95 = io_i_csr_addr == 12'h7b1; // @[CsrRegisterFile.scala 290:29]
  wire  _T_97 = io_i_csr_addr == 12'h7b2; // @[CsrRegisterFile.scala 295:29]
  wire  _T_98 = io_i_csr_addr == 12'h7b3; // @[CsrRegisterFile.scala 299:29]
  wire  _T_100 = io_i_csr_addr == 12'h320; // @[CsrRegisterFile.scala 305:29]
  wire  _T_101 = io_i_csr_addr == 12'h323; // @[CsrRegisterFile.scala 310:30]
  wire  _T_102 = io_i_csr_addr == 12'h324; // @[CsrRegisterFile.scala 310:77]
  wire  _T_103 = _T_101 | _T_102; // @[CsrRegisterFile.scala 310:60]
  wire  _T_104 = io_i_csr_addr == 12'h325; // @[CsrRegisterFile.scala 310:124]
  wire  _T_105 = _T_103 | _T_104; // @[CsrRegisterFile.scala 310:107]
  wire  _T_106 = io_i_csr_addr == 12'h326; // @[CsrRegisterFile.scala 310:171]
  wire  _T_107 = _T_105 | _T_106; // @[CsrRegisterFile.scala 310:154]
  wire  _T_108 = io_i_csr_addr == 12'h327; // @[CsrRegisterFile.scala 311:22]
  wire  _T_109 = _T_107 | _T_108; // @[CsrRegisterFile.scala 310:201]
  wire  _T_110 = io_i_csr_addr == 12'h328; // @[CsrRegisterFile.scala 311:69]
  wire  _T_111 = _T_109 | _T_110; // @[CsrRegisterFile.scala 311:52]
  wire  _T_112 = io_i_csr_addr == 12'h329; // @[CsrRegisterFile.scala 311:116]
  wire  _T_113 = _T_111 | _T_112; // @[CsrRegisterFile.scala 311:99]
  wire  _T_114 = io_i_csr_addr == 12'h32a; // @[CsrRegisterFile.scala 311:163]
  wire  _T_115 = _T_113 | _T_114; // @[CsrRegisterFile.scala 311:146]
  wire  _T_116 = io_i_csr_addr == 12'h32b; // @[CsrRegisterFile.scala 312:22]
  wire  _T_117 = _T_115 | _T_116; // @[CsrRegisterFile.scala 311:193]
  wire  _T_118 = io_i_csr_addr == 12'h32c; // @[CsrRegisterFile.scala 312:69]
  wire  _T_119 = _T_117 | _T_118; // @[CsrRegisterFile.scala 312:52]
  wire  _T_120 = io_i_csr_addr == 12'h32d; // @[CsrRegisterFile.scala 312:116]
  wire  _T_121 = _T_119 | _T_120; // @[CsrRegisterFile.scala 312:99]
  wire  _T_122 = io_i_csr_addr == 12'h32e; // @[CsrRegisterFile.scala 312:163]
  wire  _T_123 = _T_121 | _T_122; // @[CsrRegisterFile.scala 312:146]
  wire  _T_124 = io_i_csr_addr == 12'h32f; // @[CsrRegisterFile.scala 313:22]
  wire  _T_125 = _T_123 | _T_124; // @[CsrRegisterFile.scala 312:193]
  wire  _T_126 = io_i_csr_addr == 12'h330; // @[CsrRegisterFile.scala 313:69]
  wire  _T_127 = _T_125 | _T_126; // @[CsrRegisterFile.scala 313:52]
  wire  _T_128 = io_i_csr_addr == 12'h331; // @[CsrRegisterFile.scala 313:116]
  wire  _T_129 = _T_127 | _T_128; // @[CsrRegisterFile.scala 313:99]
  wire  _T_130 = io_i_csr_addr == 12'h332; // @[CsrRegisterFile.scala 313:163]
  wire  _T_131 = _T_129 | _T_130; // @[CsrRegisterFile.scala 313:146]
  wire  _T_132 = io_i_csr_addr == 12'h333; // @[CsrRegisterFile.scala 314:22]
  wire  _T_133 = _T_131 | _T_132; // @[CsrRegisterFile.scala 313:193]
  wire  _T_134 = io_i_csr_addr == 12'h334; // @[CsrRegisterFile.scala 314:69]
  wire  _T_135 = _T_133 | _T_134; // @[CsrRegisterFile.scala 314:52]
  wire  _T_136 = io_i_csr_addr == 12'h335; // @[CsrRegisterFile.scala 314:116]
  wire  _T_137 = _T_135 | _T_136; // @[CsrRegisterFile.scala 314:99]
  wire  _T_138 = io_i_csr_addr == 12'h336; // @[CsrRegisterFile.scala 314:163]
  wire  _T_139 = _T_137 | _T_138; // @[CsrRegisterFile.scala 314:146]
  wire  _T_140 = io_i_csr_addr == 12'h337; // @[CsrRegisterFile.scala 315:22]
  wire  _T_141 = _T_139 | _T_140; // @[CsrRegisterFile.scala 314:193]
  wire  _T_142 = io_i_csr_addr == 12'h338; // @[CsrRegisterFile.scala 315:69]
  wire  _T_143 = _T_141 | _T_142; // @[CsrRegisterFile.scala 315:52]
  wire  _T_144 = io_i_csr_addr == 12'h339; // @[CsrRegisterFile.scala 315:116]
  wire  _T_145 = _T_143 | _T_144; // @[CsrRegisterFile.scala 315:99]
  wire  _T_146 = io_i_csr_addr == 12'h33a; // @[CsrRegisterFile.scala 315:163]
  wire  _T_147 = _T_145 | _T_146; // @[CsrRegisterFile.scala 315:146]
  wire  _T_148 = io_i_csr_addr == 12'h33b; // @[CsrRegisterFile.scala 316:22]
  wire  _T_149 = _T_147 | _T_148; // @[CsrRegisterFile.scala 315:193]
  wire  _T_150 = io_i_csr_addr == 12'h33c; // @[CsrRegisterFile.scala 316:69]
  wire  _T_151 = _T_149 | _T_150; // @[CsrRegisterFile.scala 316:52]
  wire  _T_152 = io_i_csr_addr == 12'h33d; // @[CsrRegisterFile.scala 316:116]
  wire  _T_153 = _T_151 | _T_152; // @[CsrRegisterFile.scala 316:99]
  wire  _T_154 = io_i_csr_addr == 12'h33e; // @[CsrRegisterFile.scala 316:163]
  wire  _T_155 = _T_153 | _T_154; // @[CsrRegisterFile.scala 316:146]
  wire  _T_156 = io_i_csr_addr == 12'h33f; // @[CsrRegisterFile.scala 317:22]
  wire  _T_157 = _T_155 | _T_156; // @[CsrRegisterFile.scala 316:193]
  wire  _T_158 = io_i_csr_addr == 12'hb00; // @[CsrRegisterFile.scala 321:30]
  wire  _T_159 = io_i_csr_addr == 12'hb02; // @[CsrRegisterFile.scala 321:79]
  wire  _T_160 = _T_158 | _T_159; // @[CsrRegisterFile.scala 321:62]
  wire  _T_161 = io_i_csr_addr == 12'hb03; // @[CsrRegisterFile.scala 321:128]
  wire  _T_162 = _T_160 | _T_161; // @[CsrRegisterFile.scala 321:111]
  wire  _T_163 = io_i_csr_addr == 12'hb04; // @[CsrRegisterFile.scala 321:177]
  wire  _T_164 = _T_162 | _T_163; // @[CsrRegisterFile.scala 321:160]
  wire  _T_165 = io_i_csr_addr == 12'hb05; // @[CsrRegisterFile.scala 322:22]
  wire  _T_166 = _T_164 | _T_165; // @[CsrRegisterFile.scala 321:209]
  wire  _T_167 = io_i_csr_addr == 12'hb06; // @[CsrRegisterFile.scala 322:71]
  wire  _T_168 = _T_166 | _T_167; // @[CsrRegisterFile.scala 322:54]
  wire  _T_169 = io_i_csr_addr == 12'hb07; // @[CsrRegisterFile.scala 322:120]
  wire  _T_170 = _T_168 | _T_169; // @[CsrRegisterFile.scala 322:103]
  wire  _T_171 = io_i_csr_addr == 12'hb08; // @[CsrRegisterFile.scala 322:169]
  wire  _T_172 = _T_170 | _T_171; // @[CsrRegisterFile.scala 322:152]
  wire  _T_173 = io_i_csr_addr == 12'hb09; // @[CsrRegisterFile.scala 323:22]
  wire  _T_174 = _T_172 | _T_173; // @[CsrRegisterFile.scala 322:201]
  wire  _T_175 = io_i_csr_addr == 12'hb0a; // @[CsrRegisterFile.scala 323:71]
  wire  _T_176 = _T_174 | _T_175; // @[CsrRegisterFile.scala 323:54]
  wire  _T_177 = io_i_csr_addr == 12'hb0b; // @[CsrRegisterFile.scala 323:120]
  wire  _T_178 = _T_176 | _T_177; // @[CsrRegisterFile.scala 323:103]
  wire  _T_179 = io_i_csr_addr == 12'hb0c; // @[CsrRegisterFile.scala 323:169]
  wire  _T_180 = _T_178 | _T_179; // @[CsrRegisterFile.scala 323:152]
  wire  _T_181 = io_i_csr_addr == 12'hb0d; // @[CsrRegisterFile.scala 324:22]
  wire  _T_182 = _T_180 | _T_181; // @[CsrRegisterFile.scala 323:201]
  wire  _T_183 = io_i_csr_addr == 12'hb0e; // @[CsrRegisterFile.scala 324:71]
  wire  _T_184 = _T_182 | _T_183; // @[CsrRegisterFile.scala 324:54]
  wire  _T_185 = io_i_csr_addr == 12'hb0f; // @[CsrRegisterFile.scala 324:120]
  wire  _T_186 = _T_184 | _T_185; // @[CsrRegisterFile.scala 324:103]
  wire  _T_187 = io_i_csr_addr == 12'hb10; // @[CsrRegisterFile.scala 324:169]
  wire  _T_188 = _T_186 | _T_187; // @[CsrRegisterFile.scala 324:152]
  wire  _T_189 = io_i_csr_addr == 12'hb11; // @[CsrRegisterFile.scala 325:22]
  wire  _T_190 = _T_188 | _T_189; // @[CsrRegisterFile.scala 324:201]
  wire  _T_191 = io_i_csr_addr == 12'hb12; // @[CsrRegisterFile.scala 325:71]
  wire  _T_192 = _T_190 | _T_191; // @[CsrRegisterFile.scala 325:54]
  wire  _T_193 = io_i_csr_addr == 12'hb13; // @[CsrRegisterFile.scala 325:120]
  wire  _T_194 = _T_192 | _T_193; // @[CsrRegisterFile.scala 325:103]
  wire  _T_195 = io_i_csr_addr == 12'hb14; // @[CsrRegisterFile.scala 325:169]
  wire  _T_196 = _T_194 | _T_195; // @[CsrRegisterFile.scala 325:152]
  wire  _T_197 = io_i_csr_addr == 12'hb15; // @[CsrRegisterFile.scala 326:22]
  wire  _T_198 = _T_196 | _T_197; // @[CsrRegisterFile.scala 325:201]
  wire  _T_199 = io_i_csr_addr == 12'hb16; // @[CsrRegisterFile.scala 326:71]
  wire  _T_200 = _T_198 | _T_199; // @[CsrRegisterFile.scala 326:54]
  wire  _T_201 = io_i_csr_addr == 12'hb17; // @[CsrRegisterFile.scala 326:120]
  wire  _T_202 = _T_200 | _T_201; // @[CsrRegisterFile.scala 326:103]
  wire  _T_203 = io_i_csr_addr == 12'hb18; // @[CsrRegisterFile.scala 326:169]
  wire  _T_204 = _T_202 | _T_203; // @[CsrRegisterFile.scala 326:152]
  wire  _T_205 = io_i_csr_addr == 12'hb19; // @[CsrRegisterFile.scala 327:22]
  wire  _T_206 = _T_204 | _T_205; // @[CsrRegisterFile.scala 326:201]
  wire  _T_207 = io_i_csr_addr == 12'hb1a; // @[CsrRegisterFile.scala 327:71]
  wire  _T_208 = _T_206 | _T_207; // @[CsrRegisterFile.scala 327:54]
  wire  _T_209 = io_i_csr_addr == 12'hb1b; // @[CsrRegisterFile.scala 327:120]
  wire  _T_210 = _T_208 | _T_209; // @[CsrRegisterFile.scala 327:103]
  wire  _T_211 = io_i_csr_addr == 12'hb1c; // @[CsrRegisterFile.scala 327:169]
  wire  _T_212 = _T_210 | _T_211; // @[CsrRegisterFile.scala 327:152]
  wire  _T_213 = io_i_csr_addr == 12'hb1d; // @[CsrRegisterFile.scala 328:22]
  wire  _T_214 = _T_212 | _T_213; // @[CsrRegisterFile.scala 327:201]
  wire  _T_215 = io_i_csr_addr == 12'hb1e; // @[CsrRegisterFile.scala 328:71]
  wire  _T_216 = _T_214 | _T_215; // @[CsrRegisterFile.scala 328:54]
  wire  _T_217 = io_i_csr_addr == 12'hb1f; // @[CsrRegisterFile.scala 328:120]
  wire  _T_218 = _T_216 | _T_217; // @[CsrRegisterFile.scala 328:103]
  wire  _T_221 = io_i_csr_addr == 12'hb80; // @[CsrRegisterFile.scala 334:30]
  wire  _T_222 = io_i_csr_addr == 12'hb82; // @[CsrRegisterFile.scala 334:80]
  wire  _T_223 = _T_221 | _T_222; // @[CsrRegisterFile.scala 334:63]
  wire  _T_224 = io_i_csr_addr == 12'hb83; // @[CsrRegisterFile.scala 334:130]
  wire  _T_225 = _T_223 | _T_224; // @[CsrRegisterFile.scala 334:113]
  wire  _T_226 = io_i_csr_addr == 12'hb84; // @[CsrRegisterFile.scala 334:180]
  wire  _T_227 = _T_225 | _T_226; // @[CsrRegisterFile.scala 334:163]
  wire  _T_228 = io_i_csr_addr == 12'hb85; // @[CsrRegisterFile.scala 335:22]
  wire  _T_229 = _T_227 | _T_228; // @[CsrRegisterFile.scala 334:213]
  wire  _T_230 = io_i_csr_addr == 12'hb86; // @[CsrRegisterFile.scala 335:72]
  wire  _T_231 = _T_229 | _T_230; // @[CsrRegisterFile.scala 335:55]
  wire  _T_232 = io_i_csr_addr == 12'hb87; // @[CsrRegisterFile.scala 335:122]
  wire  _T_233 = _T_231 | _T_232; // @[CsrRegisterFile.scala 335:105]
  wire  _T_234 = io_i_csr_addr == 12'hb88; // @[CsrRegisterFile.scala 335:172]
  wire  _T_235 = _T_233 | _T_234; // @[CsrRegisterFile.scala 335:155]
  wire  _T_236 = io_i_csr_addr == 12'hb89; // @[CsrRegisterFile.scala 336:22]
  wire  _T_237 = _T_235 | _T_236; // @[CsrRegisterFile.scala 335:205]
  wire  _T_238 = io_i_csr_addr == 12'hb8a; // @[CsrRegisterFile.scala 336:72]
  wire  _T_239 = _T_237 | _T_238; // @[CsrRegisterFile.scala 336:55]
  wire  _T_240 = io_i_csr_addr == 12'hb8b; // @[CsrRegisterFile.scala 336:122]
  wire  _T_241 = _T_239 | _T_240; // @[CsrRegisterFile.scala 336:105]
  wire  _T_242 = io_i_csr_addr == 12'hb8c; // @[CsrRegisterFile.scala 336:172]
  wire  _T_243 = _T_241 | _T_242; // @[CsrRegisterFile.scala 336:155]
  wire  _T_244 = io_i_csr_addr == 12'hb8d; // @[CsrRegisterFile.scala 337:22]
  wire  _T_245 = _T_243 | _T_244; // @[CsrRegisterFile.scala 336:205]
  wire  _T_246 = io_i_csr_addr == 12'hb8e; // @[CsrRegisterFile.scala 337:72]
  wire  _T_247 = _T_245 | _T_246; // @[CsrRegisterFile.scala 337:55]
  wire  _T_248 = io_i_csr_addr == 12'hb8f; // @[CsrRegisterFile.scala 337:122]
  wire  _T_249 = _T_247 | _T_248; // @[CsrRegisterFile.scala 337:105]
  wire  _T_250 = io_i_csr_addr == 12'hb90; // @[CsrRegisterFile.scala 337:172]
  wire  _T_251 = _T_249 | _T_250; // @[CsrRegisterFile.scala 337:155]
  wire  _T_252 = io_i_csr_addr == 12'hb91; // @[CsrRegisterFile.scala 338:22]
  wire  _T_253 = _T_251 | _T_252; // @[CsrRegisterFile.scala 337:205]
  wire  _T_254 = io_i_csr_addr == 12'hb92; // @[CsrRegisterFile.scala 338:72]
  wire  _T_255 = _T_253 | _T_254; // @[CsrRegisterFile.scala 338:55]
  wire  _T_256 = io_i_csr_addr == 12'hb93; // @[CsrRegisterFile.scala 338:122]
  wire  _T_257 = _T_255 | _T_256; // @[CsrRegisterFile.scala 338:105]
  wire  _T_258 = io_i_csr_addr == 12'hb94; // @[CsrRegisterFile.scala 338:172]
  wire  _T_259 = _T_257 | _T_258; // @[CsrRegisterFile.scala 338:155]
  wire  _T_260 = io_i_csr_addr == 12'hb95; // @[CsrRegisterFile.scala 339:22]
  wire  _T_261 = _T_259 | _T_260; // @[CsrRegisterFile.scala 338:205]
  wire  _T_262 = io_i_csr_addr == 12'hb96; // @[CsrRegisterFile.scala 339:72]
  wire  _T_263 = _T_261 | _T_262; // @[CsrRegisterFile.scala 339:55]
  wire  _T_264 = io_i_csr_addr == 12'hb97; // @[CsrRegisterFile.scala 339:122]
  wire  _T_265 = _T_263 | _T_264; // @[CsrRegisterFile.scala 339:105]
  wire  _T_266 = io_i_csr_addr == 12'hb98; // @[CsrRegisterFile.scala 339:172]
  wire  _T_267 = _T_265 | _T_266; // @[CsrRegisterFile.scala 339:155]
  wire  _T_268 = io_i_csr_addr == 12'hb99; // @[CsrRegisterFile.scala 340:22]
  wire  _T_269 = _T_267 | _T_268; // @[CsrRegisterFile.scala 339:205]
  wire  _T_270 = io_i_csr_addr == 12'hb9a; // @[CsrRegisterFile.scala 340:72]
  wire  _T_271 = _T_269 | _T_270; // @[CsrRegisterFile.scala 340:55]
  wire  _T_272 = io_i_csr_addr == 12'hb9b; // @[CsrRegisterFile.scala 340:122]
  wire  _T_273 = _T_271 | _T_272; // @[CsrRegisterFile.scala 340:105]
  wire  _T_274 = io_i_csr_addr == 12'hb9c; // @[CsrRegisterFile.scala 340:172]
  wire  _T_275 = _T_273 | _T_274; // @[CsrRegisterFile.scala 340:155]
  wire  _T_276 = io_i_csr_addr == 12'hb9d; // @[CsrRegisterFile.scala 341:22]
  wire  _T_277 = _T_275 | _T_276; // @[CsrRegisterFile.scala 340:205]
  wire  _T_278 = io_i_csr_addr == 12'hb9e; // @[CsrRegisterFile.scala 341:72]
  wire  _T_279 = _T_277 | _T_278; // @[CsrRegisterFile.scala 341:55]
  wire  _T_280 = io_i_csr_addr == 12'hb9f; // @[CsrRegisterFile.scala 341:122]
  wire  _T_281 = _T_279 | _T_280; // @[CsrRegisterFile.scala 341:105]
  wire  _T_284 = io_i_csr_addr == 12'h7a0; // @[CsrRegisterFile.scala 348:29]
  wire  _T_286 = io_i_csr_addr == 12'h7a1; // @[CsrRegisterFile.scala 353:29]
  wire  _T_288 = io_i_csr_addr == 12'h7a2; // @[CsrRegisterFile.scala 358:29]
  wire  _T_290 = io_i_csr_addr == 12'h7a3; // @[CsrRegisterFile.scala 363:29]
  wire  _T_292 = io_i_csr_addr == 12'h7a8; // @[CsrRegisterFile.scala 368:29]
  wire  _GEN_67 = _T_292 ? 1'h0 : 1'h1; // @[CsrRegisterFile.scala 369:5]
  wire  _GEN_69 = _T_290 | _GEN_67; // @[CsrRegisterFile.scala 364:5]
  wire  _GEN_71 = _T_288 | _GEN_69; // @[CsrRegisterFile.scala 359:5]
  wire  _GEN_73 = _T_286 | _GEN_71; // @[CsrRegisterFile.scala 354:5]
  wire  _GEN_75 = _T_284 | _GEN_73; // @[CsrRegisterFile.scala 349:5]
  wire  _GEN_77 = _T_281 ? 1'h0 : _GEN_75; // @[CsrRegisterFile.scala 342:5]
  wire  _GEN_79 = _T_218 ? 1'h0 : _GEN_77; // @[CsrRegisterFile.scala 329:5]
  wire  _GEN_81 = _T_157 ? 1'h0 : _GEN_79; // @[CsrRegisterFile.scala 318:5]
  wire  _GEN_83 = _T_100 ? 1'h0 : _GEN_81; // @[CsrRegisterFile.scala 306:5]
  wire  _GEN_85 = _T_98 | _GEN_83; // @[CsrRegisterFile.scala 300:5]
  wire  _GEN_87 = _T_97 ? 1'h0 : _GEN_85; // @[CsrRegisterFile.scala 296:5]
  wire  _GEN_89 = _T_95 | _GEN_87; // @[CsrRegisterFile.scala 291:5]
  wire  _GEN_91 = _T_80 | _GEN_89; // @[CsrRegisterFile.scala 286:5]
  wire  _GEN_93 = _T_73 ? 1'h0 : _GEN_91; // @[CsrRegisterFile.scala 278:5]
  wire  _GEN_95 = _T_72 ? 1'h0 : _GEN_93; // @[CsrRegisterFile.scala 273:5]
  wire  _GEN_97 = _T_67 ? 1'h0 : _GEN_95; // @[CsrRegisterFile.scala 266:5]
  wire  _GEN_99 = _T_66 ? 1'h0 : _GEN_97; // @[CsrRegisterFile.scala 260:5]
  wire  _GEN_101 = _T_65 ? 1'h0 : _GEN_99; // @[CsrRegisterFile.scala 251:5]
  wire  _GEN_103 = _T_64 ? 1'h0 : _GEN_101; // @[CsrRegisterFile.scala 245:5]
  wire  _GEN_105 = _T_57 ? 1'h0 : _GEN_103; // @[CsrRegisterFile.scala 237:5]
  wire  _GEN_107 = _T_56 ? 1'h0 : _GEN_105; // @[CsrRegisterFile.scala 232:5]
  wire  _GEN_109 = _T_45 ? 1'h0 : _GEN_107; // @[CsrRegisterFile.scala 224:5]
  wire  illegal_csr = _T_44 ? 1'h0 : _GEN_109; // @[CsrRegisterFile.scala 219:3]
  wire  _T_41 = illegal_csr | illegal_csr_priv; // @[CsrRegisterFile.scala 205:61]
  wire  _T_42 = _T_41 | illegal_csr_write; // @[CsrRegisterFile.scala 205:80]
  wire [5:0] _T_537 = PRIM_MSTATUS_io_o_rd_data;
  wire  mstatus_q_mie = _T_537[0]; // @[CsrRegisterFile.scala 650:19]
  wire  mstatus_q_mpie = _T_537[1]; // @[CsrRegisterFile.scala 650:19]
  wire [10:0] _T_49 = {3'h0,_T_537[1],3'h0,_T_537[0],3'h0}; // @[Cat.scala 29:58]
  wire  mstatus_q_mprv = _T_537[4]; // @[CsrRegisterFile.scala 650:19]
  wire [1:0] mstatus_q_mpp = _T_537[3:2]; // @[CsrRegisterFile.scala 650:19]
  wire  mstatus_q_tw = _T_537[5]; // @[CsrRegisterFile.scala 650:19]
  wire [31:0] _T_55 = {10'h0,_T_537[5],3'h0,_T_537[4],4'h0,_T_537[3:2],_T_49}; // @[Cat.scala 29:58]
  wire [2:0] _T_549 = PRIM_MIE_io_o_rd_data;
  wire  mie_q_irq_software = _T_549[0]; // @[CsrRegisterFile.scala 667:10]
  wire  mie_q_irq_timer = _T_549[1]; // @[CsrRegisterFile.scala 667:10]
  wire  mie_q_irq_external = _T_549[2]; // @[CsrRegisterFile.scala 667:10]
  wire [31:0] _T_63 = {20'h0,_T_549[2],3'h0,_T_549[1],3'h0,_T_549[0],3'h0}; // @[Cat.scala 29:58]
  wire [5:0] mcause_q = PRIM_MCAUSE_io_o_rd_data; // @[CsrRegisterFile.scala 113:46 CsrRegisterFile.scala 681:28]
  wire [31:0] _T_71 = {mcause_q[5],26'h0,mcause_q[4:0]}; // @[Cat.scala 29:58]
  wire  mip_irq_software = 1'h0; // @[CsrRegisterFile.scala 208:21]
  wire  mip_irq_timer = 1'h0; // @[CsrRegisterFile.scala 210:21]
  wire  mip_irq_external = io_i_irq_external; // @[CsrRegisterFile.scala 209:21]
  wire [31:0] _T_79 = {20'h0,mip_irq_external,3'h0,mip_irq_software,3'h0,mip_irq_software,3'h0}; // @[Cat.scala 29:58]
  wire [27:0] _T_567 = PRIM_DCSR_io_o_rd_data;
  wire  dcsr_q_nmip = _T_567[2]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_step = _T_567[1]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_prv = _T_567[0]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_zero0 = _T_567[4]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_mprven = _T_567[3]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_stoptime = _T_567[6]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_cause = _T_567[5]; // @[CsrRegisterFile.scala 704:26]
  wire [6:0] _T_86 = {_T_567[6],_T_567[5],_T_567[4],_T_567[3],_T_567[2],_T_567[1],_T_567[0]}; // @[CsrRegisterFile.scala 287:31]
  wire  dcsr_q_ebreaks = _T_567[9]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_stepie = _T_567[8]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_stopcount = _T_567[7]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_ebreakm = _T_567[11]; // @[CsrRegisterFile.scala 704:26]
  wire  dcsr_q_zero1 = _T_567[10]; // @[CsrRegisterFile.scala 704:26]
  wire [3:0] dcsr_q_xdebugver = _T_567[27:24]; // @[CsrRegisterFile.scala 704:26]
  wire [11:0] dcsr_q_zero2 = _T_567[23:12]; // @[CsrRegisterFile.scala 704:26]
  wire [27:0] _T_93 = {_T_567[27:24],_T_567[23:12],_T_567[11],_T_567[10],_T_567[9],_T_567[8],_T_567[7],_T_86}; // @[CsrRegisterFile.scala 287:31]
  wire [4:0] mhpmcounter_idx = io_i_csr_addr[4:0]; // @[CsrRegisterFile.scala 143:46 CsrRegisterFile.scala 175:19]
  wire [31:0] _GEN_1 = 5'h1 == mhpmcounter_idx ? mhpmevent_1 : mhpmevent_0; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_2 = 5'h2 == mhpmcounter_idx ? mhpmevent_2 : _GEN_1; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_3 = 5'h3 == mhpmcounter_idx ? mhpmevent_3 : _GEN_2; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_4 = 5'h4 == mhpmcounter_idx ? mhpmevent_4 : _GEN_3; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_5 = 5'h5 == mhpmcounter_idx ? mhpmevent_5 : _GEN_4; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_6 = 5'h6 == mhpmcounter_idx ? mhpmevent_6 : _GEN_5; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_7 = 5'h7 == mhpmcounter_idx ? mhpmevent_7 : _GEN_6; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_8 = 5'h8 == mhpmcounter_idx ? mhpmevent_8 : _GEN_7; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_9 = 5'h9 == mhpmcounter_idx ? mhpmevent_9 : _GEN_8; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_10 = 5'ha == mhpmcounter_idx ? mhpmevent_10 : _GEN_9; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_11 = 5'hb == mhpmcounter_idx ? mhpmevent_11 : _GEN_10; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_12 = 5'hc == mhpmcounter_idx ? mhpmevent_12 : _GEN_11; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_13 = 5'hd == mhpmcounter_idx ? mhpmevent_13 : _GEN_12; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_14 = 5'he == mhpmcounter_idx ? mhpmevent_14 : _GEN_13; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_15 = 5'hf == mhpmcounter_idx ? mhpmevent_15 : _GEN_14; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_16 = 5'h10 == mhpmcounter_idx ? mhpmevent_16 : _GEN_15; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_17 = 5'h11 == mhpmcounter_idx ? mhpmevent_17 : _GEN_16; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_18 = 5'h12 == mhpmcounter_idx ? mhpmevent_18 : _GEN_17; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_19 = 5'h13 == mhpmcounter_idx ? mhpmevent_19 : _GEN_18; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_20 = 5'h14 == mhpmcounter_idx ? mhpmevent_20 : _GEN_19; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_21 = 5'h15 == mhpmcounter_idx ? mhpmevent_21 : _GEN_20; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_22 = 5'h16 == mhpmcounter_idx ? mhpmevent_22 : _GEN_21; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_23 = 5'h17 == mhpmcounter_idx ? mhpmevent_23 : _GEN_22; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_24 = 5'h18 == mhpmcounter_idx ? mhpmevent_24 : _GEN_23; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_25 = 5'h19 == mhpmcounter_idx ? mhpmevent_25 : _GEN_24; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_26 = 5'h1a == mhpmcounter_idx ? mhpmevent_26 : _GEN_25; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_27 = 5'h1b == mhpmcounter_idx ? mhpmevent_27 : _GEN_26; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_28 = 5'h1c == mhpmcounter_idx ? mhpmevent_28 : _GEN_27; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_29 = 5'h1d == mhpmcounter_idx ? mhpmevent_29 : _GEN_28; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_30 = 5'h1e == mhpmcounter_idx ? mhpmevent_30 : _GEN_29; // @[CsrRegisterFile.scala 319:21]
  wire [31:0] _GEN_31 = 5'h1f == mhpmcounter_idx ? mhpmevent_31 : _GEN_30; // @[CsrRegisterFile.scala 319:21]
  wire [63:0] _GEN_33 = 5'h1 == mhpmcounter_idx ? mhpmcounter_1 : mhpmcounter_0; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_34 = 5'h2 == mhpmcounter_idx ? mhpmcounter_2 : _GEN_33; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_35 = 5'h3 == mhpmcounter_idx ? mhpmcounter_3 : _GEN_34; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_36 = 5'h4 == mhpmcounter_idx ? mhpmcounter_4 : _GEN_35; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_37 = 5'h5 == mhpmcounter_idx ? mhpmcounter_5 : _GEN_36; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_38 = 5'h6 == mhpmcounter_idx ? mhpmcounter_6 : _GEN_37; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_39 = 5'h7 == mhpmcounter_idx ? mhpmcounter_7 : _GEN_38; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_40 = 5'h8 == mhpmcounter_idx ? mhpmcounter_8 : _GEN_39; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_41 = 5'h9 == mhpmcounter_idx ? mhpmcounter_9 : _GEN_40; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_42 = 5'ha == mhpmcounter_idx ? mhpmcounter_10 : _GEN_41; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_43 = 5'hb == mhpmcounter_idx ? mhpmcounter_11 : _GEN_42; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_44 = 5'hc == mhpmcounter_idx ? mhpmcounter_12 : _GEN_43; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_45 = 5'hd == mhpmcounter_idx ? mhpmcounter_13 : _GEN_44; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_46 = 5'he == mhpmcounter_idx ? mhpmcounter_14 : _GEN_45; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_47 = 5'hf == mhpmcounter_idx ? mhpmcounter_15 : _GEN_46; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_48 = 5'h10 == mhpmcounter_idx ? mhpmcounter_16 : _GEN_47; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_49 = 5'h11 == mhpmcounter_idx ? mhpmcounter_17 : _GEN_48; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_50 = 5'h12 == mhpmcounter_idx ? mhpmcounter_18 : _GEN_49; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_51 = 5'h13 == mhpmcounter_idx ? mhpmcounter_19 : _GEN_50; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_52 = 5'h14 == mhpmcounter_idx ? mhpmcounter_20 : _GEN_51; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_53 = 5'h15 == mhpmcounter_idx ? mhpmcounter_21 : _GEN_52; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_54 = 5'h16 == mhpmcounter_idx ? mhpmcounter_22 : _GEN_53; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_55 = 5'h17 == mhpmcounter_idx ? mhpmcounter_23 : _GEN_54; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_56 = 5'h18 == mhpmcounter_idx ? mhpmcounter_24 : _GEN_55; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_57 = 5'h19 == mhpmcounter_idx ? mhpmcounter_25 : _GEN_56; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_58 = 5'h1a == mhpmcounter_idx ? mhpmcounter_26 : _GEN_57; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_59 = 5'h1b == mhpmcounter_idx ? mhpmcounter_27 : _GEN_58; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_60 = 5'h1c == mhpmcounter_idx ? mhpmcounter_28 : _GEN_59; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_61 = 5'h1d == mhpmcounter_idx ? mhpmcounter_29 : _GEN_60; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_62 = 5'h1e == mhpmcounter_idx ? mhpmcounter_30 : _GEN_61; // @[CsrRegisterFile.scala 331:11]
  wire [63:0] _GEN_63 = 5'h1f == mhpmcounter_idx ? mhpmcounter_31 : _GEN_62; // @[CsrRegisterFile.scala 331:11]
  wire [31:0] tmatch_value_rdata = 32'h0; // @[CsrRegisterFile.scala 149:36 CsrRegisterFile.scala 894:26]
  wire [31:0] _GEN_76 = _T_281 ? _GEN_63[63:32] : 32'h0; // @[CsrRegisterFile.scala 342:5]
  wire [31:0] _GEN_78 = _T_218 ? _GEN_63[31:0] : _GEN_76; // @[CsrRegisterFile.scala 329:5]
  wire [31:0] _GEN_80 = _T_157 ? _GEN_31 : _GEN_78; // @[CsrRegisterFile.scala 318:5]
  wire [31:0] _T_725 = {19'h1,mcountinhibit_q}; // @[Cat.scala 29:58]
  wire [31:0] mcountinhibit = _T_725; // @[CsrRegisterFile.scala 131:46 CsrRegisterFile.scala 812:19]
  wire [31:0] _GEN_82 = _T_100 ? mcountinhibit : _GEN_80; // @[CsrRegisterFile.scala 306:5]
  wire [31:0] dscratch1_q = PRIM_DSCRATCH1_io_o_rd_data; // @[CsrRegisterFile.scala 125:46 CsrRegisterFile.scala 724:31]
  wire [31:0] _GEN_84 = _T_98 ? dscratch1_q : _GEN_82; // @[CsrRegisterFile.scala 300:5]
  wire [31:0] dscratch0_q = PRIM_DSCRATCH0_io_o_rd_data; // @[CsrRegisterFile.scala 124:46 CsrRegisterFile.scala 717:31]
  wire [31:0] _GEN_86 = _T_97 ? dscratch0_q : _GEN_84; // @[CsrRegisterFile.scala 296:5]
  wire [31:0] depc_q = PRIM_DEPC_io_o_rd_data; // @[CsrRegisterFile.scala 122:46 CsrRegisterFile.scala 711:26]
  wire [31:0] _GEN_88 = _T_95 ? depc_q : _GEN_86; // @[CsrRegisterFile.scala 291:5]
  wire [31:0] _GEN_90 = _T_80 ? {{4'd0}, _T_93} : _GEN_88; // @[CsrRegisterFile.scala 286:5]
  wire [31:0] _GEN_92 = _T_73 ? _T_79 : _GEN_90; // @[CsrRegisterFile.scala 278:5]
  wire [31:0] mtval_q = PRIM_MTVAL_io_o_rd_data; // @[CsrRegisterFile.scala 115:46 CsrRegisterFile.scala 687:27]
  wire [31:0] _GEN_94 = _T_72 ? mtval_q : _GEN_92; // @[CsrRegisterFile.scala 273:5]
  wire [31:0] _GEN_96 = _T_67 ? _T_71 : _GEN_94; // @[CsrRegisterFile.scala 266:5]
  wire [31:0] mepc_q = PRIM_MEPC_io_o_rd_data; // @[CsrRegisterFile.scala 110:46 CsrRegisterFile.scala 656:26]
  wire [31:0] _GEN_98 = _T_66 ? mepc_q : _GEN_96; // @[CsrRegisterFile.scala 260:5]
  wire [31:0] mtvec_q = PRIM_MTVEC_io_o_rd_data; // @[CsrRegisterFile.scala 117:46 CsrRegisterFile.scala 694:27]
  wire [31:0] _GEN_100 = _T_65 ? mtvec_q : _GEN_98; // @[CsrRegisterFile.scala 251:5]
  wire [31:0] mscratch_q = PRIM_MSCRATCH_io_o_rd_data; // @[CsrRegisterFile.scala 108:46 CsrRegisterFile.scala 674:30]
  wire [31:0] _GEN_102 = _T_64 ? mscratch_q : _GEN_100; // @[CsrRegisterFile.scala 245:5]
  wire [31:0] _GEN_104 = _T_57 ? _T_63 : _GEN_102; // @[CsrRegisterFile.scala 237:5]
  wire [31:0] _GEN_106 = _T_56 ? 32'h40001100 : _GEN_104; // @[CsrRegisterFile.scala 232:5]
  wire [31:0] _GEN_108 = _T_45 ? _T_55 : _GEN_106; // @[CsrRegisterFile.scala 224:5]
  wire  _T_300 = ~io_o_illegal_csr_insn; // @[CsrRegisterFile.scala 393:28]
  wire  _T_301 = csr_wreq & _T_300; // @[CsrRegisterFile.scala 393:26]
  wire  csr_we_int = _T_301; // @[CsrRegisterFile.scala 154:46 CsrRegisterFile.scala 393:14]
  wire  _T_303 = csr_we_int & _T_45; // @[CsrRegisterFile.scala 397:19]
  wire  _T_309 = _T_537[3:2] != 2'h3; // @[CsrRegisterFile.scala 404:32]
  wire  _T_311 = _T_537[3:2] != 2'h0; // @[CsrRegisterFile.scala 404:91]
  wire  _T_312 = _T_309 & _T_311; // @[CsrRegisterFile.scala 404:66]
  wire [31:0] _T_509 = io_i_csr_wdata | io_o_csr_rdata; // @[CsrRegisterFile.scala 603:39]
  wire [31:0] _T_511 = ~io_i_csr_wdata; // @[CsrRegisterFile.scala 607:24]
  wire [31:0] _T_512 = _T_511 & io_o_csr_rdata; // @[CsrRegisterFile.scala 607:40]
  wire [31:0] _GEN_371 = _T_517 ? _T_512 : io_i_csr_wdata; // @[CsrRegisterFile.scala 606:5]
  wire [31:0] _GEN_372 = _T_515 ? _T_509 : _GEN_371; // @[CsrRegisterFile.scala 602:5]
  wire [31:0] csr_wdata_int = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 598:3]
  wire [1:0] _GEN_112 = _T_312 ? 2'h3 : csr_wdata_int[12:11]; // @[CsrRegisterFile.scala 405:5]
  wire [1:0] _GEN_287 = _T_303 ? _GEN_112 : _T_537[3:2]; // @[CsrRegisterFile.scala 398:3]
  wire [1:0] _GEN_356 = io_i_csr_save_cause ? priv_lvl_q : _GEN_287; // @[CsrRegisterFile.scala 509:3]
  wire [1:0] _GEN_368 = io_i_csr_restore_mret ? 2'h3 : _GEN_356; // @[CsrRegisterFile.scala 561:5]
  wire [1:0] mstatus_d_mpp = _GEN_368; // @[CsrRegisterFile.scala 180:18 CsrRegisterFile.scala 402:20 CsrRegisterFile.scala 406:21 CsrRegisterFile.scala 545:24 CsrRegisterFile.scala 566:22]
  wire  _T_296 = mstatus_d_mpp != 2'h3; // @[CsrRegisterFile.scala 392:40]
  wire  _T_298 = mstatus_d_mpp != 2'h0; // @[CsrRegisterFile.scala 392:99]
  wire  _T_299 = _T_296 & _T_298; // @[CsrRegisterFile.scala 392:74]
  wire  _T_315 = csr_we_int & _T_57; // @[CsrRegisterFile.scala 410:26]
  wire  _T_317 = csr_we_int & _T_64; // @[CsrRegisterFile.scala 414:26]
  wire  _T_319 = csr_we_int & _T_66; // @[CsrRegisterFile.scala 418:26]
  wire  _T_321 = csr_we_int & _T_67; // @[CsrRegisterFile.scala 422:26]
  wire  _T_323 = csr_we_int & _T_72; // @[CsrRegisterFile.scala 426:26]
  wire  _T_325 = csr_we_int & _T_65; // @[CsrRegisterFile.scala 430:26]
  wire  _T_327 = csr_we_int & _T_80; // @[CsrRegisterFile.scala 434:26]
  wire [1:0] _GEN_329 = {{1'd0}, _T_567[0]}; // @[CsrRegisterFile.scala 526:5]
  wire [1:0] _GEN_347 = io_i_csr_save_cause ? _GEN_329 : {{1'd0}, _T_567[0]}; // @[CsrRegisterFile.scala 509:3]
  wire  dcsr_d_prv = _GEN_347[0]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 442:20 CsrRegisterFile.scala 500:14 CsrRegisterFile.scala 529:21]
  wire  _T_352 = csr_we_int & _T_97; // @[CsrRegisterFile.scala 453:26]
  wire  _T_354 = csr_we_int & _T_98; // @[CsrRegisterFile.scala 457:26]
  wire  _T_356 = csr_we_int & _T_100; // @[CsrRegisterFile.scala 461:26]
  wire  _T_418 = csr_we_int & _T_218; // @[CsrRegisterFile.scala 465:26]
  wire [31:0] _T_419 = 32'h1 << mhpmcounter_idx; // @[CsrRegisterFile.scala 474:32]
  wire  _T_481 = csr_we_int & _T_281; // @[CsrRegisterFile.scala 476:26]
  wire [31:0] _GEN_114 = _T_481 ? _T_419 : 32'h0; // @[CsrRegisterFile.scala 484:5]
  wire [31:0] _GEN_115 = _T_418 ? _T_419 : 32'h0; // @[CsrRegisterFile.scala 473:5]
  wire [31:0] _GEN_116 = _T_418 ? 32'h0 : _GEN_114; // @[CsrRegisterFile.scala 473:5]
  wire [31:0] _GEN_118 = _T_356 ? 32'h0 : _GEN_115; // @[CsrRegisterFile.scala 462:5]
  wire [31:0] _GEN_119 = _T_356 ? 32'h0 : _GEN_116; // @[CsrRegisterFile.scala 462:5]
  wire  _GEN_121 = _T_354 ? 1'h0 : _T_356; // @[CsrRegisterFile.scala 458:5]
  wire [31:0] _GEN_122 = _T_354 ? 32'h0 : _GEN_118; // @[CsrRegisterFile.scala 458:5]
  wire [31:0] _GEN_123 = _T_354 ? 32'h0 : _GEN_119; // @[CsrRegisterFile.scala 458:5]
  wire  _GEN_125 = _T_352 ? 1'h0 : _T_354; // @[CsrRegisterFile.scala 454:5]
  wire  _GEN_126 = _T_352 ? 1'h0 : _GEN_121; // @[CsrRegisterFile.scala 454:5]
  wire [31:0] _GEN_127 = _T_352 ? 32'h0 : _GEN_122; // @[CsrRegisterFile.scala 454:5]
  wire [31:0] _GEN_128 = _T_352 ? 32'h0 : _GEN_123; // @[CsrRegisterFile.scala 454:5]
  wire  _GEN_144 = _T_327 ? 1'h0 : _T_352; // @[CsrRegisterFile.scala 435:5]
  wire  _GEN_145 = _T_327 ? 1'h0 : _GEN_125; // @[CsrRegisterFile.scala 435:5]
  wire  _GEN_146 = _T_327 ? 1'h0 : _GEN_126; // @[CsrRegisterFile.scala 435:5]
  wire [31:0] _GEN_147 = _T_327 ? 32'h0 : _GEN_127; // @[CsrRegisterFile.scala 435:5]
  wire [31:0] _GEN_148 = _T_327 ? 32'h0 : _GEN_128; // @[CsrRegisterFile.scala 435:5]
  wire  _GEN_164 = _T_325 ? 1'h0 : _GEN_144; // @[CsrRegisterFile.scala 431:5]
  wire  _GEN_165 = _T_325 ? 1'h0 : _GEN_145; // @[CsrRegisterFile.scala 431:5]
  wire  _GEN_166 = _T_325 ? 1'h0 : _GEN_146; // @[CsrRegisterFile.scala 431:5]
  wire [31:0] _GEN_167 = _T_325 ? 32'h0 : _GEN_147; // @[CsrRegisterFile.scala 431:5]
  wire [31:0] _GEN_168 = _T_325 ? 32'h0 : _GEN_148; // @[CsrRegisterFile.scala 431:5]
  wire  _GEN_185 = _T_323 ? 1'h0 : _GEN_164; // @[CsrRegisterFile.scala 427:5]
  wire  _GEN_186 = _T_323 ? 1'h0 : _GEN_165; // @[CsrRegisterFile.scala 427:5]
  wire  _GEN_187 = _T_323 ? 1'h0 : _GEN_166; // @[CsrRegisterFile.scala 427:5]
  wire [31:0] _GEN_188 = _T_323 ? 32'h0 : _GEN_167; // @[CsrRegisterFile.scala 427:5]
  wire [31:0] _GEN_189 = _T_323 ? 32'h0 : _GEN_168; // @[CsrRegisterFile.scala 427:5]
  wire  _GEN_191 = _T_321 ? 1'h0 : _T_323; // @[CsrRegisterFile.scala 423:5]
  wire  _GEN_207 = _T_321 ? 1'h0 : _GEN_185; // @[CsrRegisterFile.scala 423:5]
  wire  _GEN_208 = _T_321 ? 1'h0 : _GEN_186; // @[CsrRegisterFile.scala 423:5]
  wire  _GEN_209 = _T_321 ? 1'h0 : _GEN_187; // @[CsrRegisterFile.scala 423:5]
  wire [31:0] _GEN_210 = _T_321 ? 32'h0 : _GEN_188; // @[CsrRegisterFile.scala 423:5]
  wire [31:0] _GEN_211 = _T_321 ? 32'h0 : _GEN_189; // @[CsrRegisterFile.scala 423:5]
  wire  _GEN_213 = _T_319 ? 1'h0 : _T_321; // @[CsrRegisterFile.scala 419:5]
  wire  _GEN_214 = _T_319 ? 1'h0 : _GEN_191; // @[CsrRegisterFile.scala 419:5]
  wire  _GEN_230 = _T_319 ? 1'h0 : _GEN_207; // @[CsrRegisterFile.scala 419:5]
  wire  _GEN_231 = _T_319 ? 1'h0 : _GEN_208; // @[CsrRegisterFile.scala 419:5]
  wire  _GEN_232 = _T_319 ? 1'h0 : _GEN_209; // @[CsrRegisterFile.scala 419:5]
  wire [31:0] _GEN_233 = _T_319 ? 32'h0 : _GEN_210; // @[CsrRegisterFile.scala 419:5]
  wire [31:0] _GEN_234 = _T_319 ? 32'h0 : _GEN_211; // @[CsrRegisterFile.scala 419:5]
  wire  _GEN_236 = _T_317 ? 1'h0 : _T_319; // @[CsrRegisterFile.scala 415:5]
  wire  _GEN_237 = _T_317 ? 1'h0 : _GEN_213; // @[CsrRegisterFile.scala 415:5]
  wire  _GEN_238 = _T_317 ? 1'h0 : _GEN_214; // @[CsrRegisterFile.scala 415:5]
  wire  _GEN_254 = _T_317 ? 1'h0 : _GEN_230; // @[CsrRegisterFile.scala 415:5]
  wire  _GEN_255 = _T_317 ? 1'h0 : _GEN_231; // @[CsrRegisterFile.scala 415:5]
  wire  _GEN_256 = _T_317 ? 1'h0 : _GEN_232; // @[CsrRegisterFile.scala 415:5]
  wire [31:0] _GEN_257 = _T_317 ? 32'h0 : _GEN_233; // @[CsrRegisterFile.scala 415:5]
  wire [31:0] _GEN_258 = _T_317 ? 32'h0 : _GEN_234; // @[CsrRegisterFile.scala 415:5]
  wire  _GEN_260 = _T_315 ? 1'h0 : _T_317; // @[CsrRegisterFile.scala 411:5]
  wire  _GEN_261 = _T_315 ? 1'h0 : _GEN_236; // @[CsrRegisterFile.scala 411:5]
  wire  _GEN_262 = _T_315 ? 1'h0 : _GEN_237; // @[CsrRegisterFile.scala 411:5]
  wire  _GEN_263 = _T_315 ? 1'h0 : _GEN_238; // @[CsrRegisterFile.scala 411:5]
  wire  _GEN_279 = _T_315 ? 1'h0 : _GEN_254; // @[CsrRegisterFile.scala 411:5]
  wire  _GEN_280 = _T_315 ? 1'h0 : _GEN_255; // @[CsrRegisterFile.scala 411:5]
  wire  _GEN_281 = _T_315 ? 1'h0 : _GEN_256; // @[CsrRegisterFile.scala 411:5]
  wire [31:0] _GEN_282 = _T_315 ? 32'h0 : _GEN_257; // @[CsrRegisterFile.scala 411:5]
  wire [31:0] _GEN_283 = _T_315 ? 32'h0 : _GEN_258; // @[CsrRegisterFile.scala 411:5]
  wire  _GEN_285 = _T_303 ? csr_wdata_int[3] : _T_537[0]; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_286 = _T_303 ? csr_wdata_int[7] : _T_537[1]; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_288 = _T_303 ? csr_wdata_int[21] : _T_537[5]; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_289 = _T_303 ? 1'h0 : _T_315; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_290 = _T_303 ? 1'h0 : _GEN_260; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_291 = _T_303 ? 1'h0 : _GEN_261; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_292 = _T_303 ? 1'h0 : _GEN_262; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_293 = _T_303 ? 1'h0 : _GEN_263; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_309 = _T_303 ? 1'h0 : _GEN_279; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_310 = _T_303 ? 1'h0 : _GEN_280; // @[CsrRegisterFile.scala 398:3]
  wire  _GEN_311 = _T_303 ? 1'h0 : _GEN_281; // @[CsrRegisterFile.scala 398:3]
  wire [31:0] _GEN_312 = _T_303 ? 32'h0 : _GEN_282; // @[CsrRegisterFile.scala 398:3]
  wire [31:0] _GEN_313 = _T_303 ? 32'h0 : _GEN_283; // @[CsrRegisterFile.scala 398:3]
  wire [31:0] _T_484 = {csr_wdata_int[31:1],1'h0}; // @[Cat.scala 29:58]
  wire [5:0] _T_487 = {csr_wdata_int[31],csr_wdata_int[4:0]}; // @[Cat.scala 29:58]
  wire [30:0] _T_493 = {csr_wdata_int[31:8],6'h0,1'h1}; // @[Cat.scala 29:58]
  wire [30:0] _T_494 = io_i_csr_mtvec_init ? 31'h1 : _T_493; // @[CsrRegisterFile.scala 496:20]
  wire [31:0] _GEN_316 = io_i_csr_save_if ? io_i_pc_if : 32'h0; // @[CsrRegisterFile.scala 511:5]
  wire [31:0] exception_pc = io_i_csr_save_cause ? _GEN_316 : 32'h0; // @[CsrRegisterFile.scala 509:3]
  wire [4:0] _GEN_330 = {{4'd0}, _T_567[5]}; // @[CsrRegisterFile.scala 526:5]
  wire [31:0] _GEN_332 = _T_484; // @[CsrRegisterFile.scala 526:5]
  wire [4:0] _GEN_348 = io_i_csr_save_cause ? _GEN_330 : {{4'd0}, _T_567[5]}; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_351 = io_i_csr_save_cause | _GEN_293; // @[CsrRegisterFile.scala 509:3]
  wire [31:0] _GEN_352 = io_i_csr_save_cause ? 32'h0 : csr_wdata_int; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_353 = io_i_csr_save_cause | _T_303; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_354 = io_i_csr_save_cause ? 1'h0 : _GEN_285; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_355 = io_i_csr_save_cause ? _T_537[0] : _GEN_286; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_357 = io_i_csr_save_cause ? 1'h0 : _T_537[4]; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_358 = io_i_csr_save_cause ? 1'h0 : _GEN_288; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_359 = io_i_csr_save_cause | _GEN_291; // @[CsrRegisterFile.scala 509:3]
  wire [31:0] _GEN_360 = io_i_csr_save_cause ? exception_pc : _T_484; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_361 = io_i_csr_save_cause | _GEN_292; // @[CsrRegisterFile.scala 509:3]
  wire [5:0] _GEN_362 = io_i_csr_save_cause ? io_i_csr_mcause : _T_487; // @[CsrRegisterFile.scala 509:3]
  wire  _GEN_365 = io_i_csr_restore_mret | _GEN_353; // @[CsrRegisterFile.scala 561:5]
  wire  _GEN_366 = io_i_csr_restore_mret ? _T_537[1] : _GEN_354; // @[CsrRegisterFile.scala 561:5]
  wire  _GEN_367 = io_i_csr_restore_mret | _GEN_355; // @[CsrRegisterFile.scala 561:5]
  wire  _T_520 = mip_irq_external & _T_549[2]; // @[CsrRegisterFile.scala 636:42]
  wire  _T_523 = mip_irq_software & _T_549[1]; // @[CsrRegisterFile.scala 636:117]
  wire  _T_526 = mip_irq_software & _T_549[0]; // @[CsrRegisterFile.scala 636:192]
  wire [1:0] _T_529 = {_T_520,_T_523}; // @[Cat.scala 29:58]
  wire  mstatus_d_mpie = _GEN_367; // @[CsrRegisterFile.scala 179:18 CsrRegisterFile.scala 401:20 CsrRegisterFile.scala 544:24 CsrRegisterFile.scala 565:22]
  wire  mstatus_d_mie = _GEN_366; // @[CsrRegisterFile.scala 178:18 CsrRegisterFile.scala 400:20 CsrRegisterFile.scala 542:24 CsrRegisterFile.scala 564:22]
  wire [1:0] _T_532 = {mstatus_d_mpie,mstatus_d_mie}; // @[CsrRegisterFile.scala 648:41]
  wire  mstatus_d_tw = _GEN_358; // @[CsrRegisterFile.scala 182:18 CsrRegisterFile.scala 403:20 CsrRegisterFile.scala 547:24]
  wire  mstatus_d_mprv = _GEN_357; // @[CsrRegisterFile.scala 181:18 CsrRegisterFile.scala 546:24]
  wire [3:0] _T_534 = {mstatus_d_tw,mstatus_d_mprv,mstatus_d_mpp}; // @[CsrRegisterFile.scala 648:41]
  wire  mie_d_irq_external = csr_wdata_int[11]; // @[CsrRegisterFile.scala 662:23]
  wire  mie_d_irq_timer = csr_wdata_int[7]; // @[CsrRegisterFile.scala 661:23]
  wire [1:0] _T_546 = {mie_d_irq_external,mie_d_irq_timer}; // @[CsrRegisterFile.scala 665:33]
  wire  mie_d_irq_software = csr_wdata_int[3]; // @[CsrRegisterFile.scala 660:23]
  wire  dcsr_d_nmip = _T_567[2]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 448:24 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_step = _T_567[1]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_zero0 = _T_567[4]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_mprven = _T_567[3]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 449:24 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_stoptime = _T_567[6]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 451:24 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_cause = _GEN_348[0]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 445:20 CsrRegisterFile.scala 500:14 CsrRegisterFile.scala 530:21]
  wire [6:0] _T_558 = {dcsr_d_stoptime,dcsr_d_cause,dcsr_d_zero0,dcsr_d_mprven,dcsr_d_nmip,dcsr_d_step,dcsr_d_prv}; // @[CsrRegisterFile.scala 702:35]
  wire  dcsr_d_ebreaks = _T_567[9]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_stepie = _T_567[8]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_stopcount = _T_567[7]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 450:24 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_ebreakm = _T_567[11]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 500:14]
  wire  dcsr_d_zero1 = _T_567[10]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 500:14]
  wire [3:0] dcsr_d_xdebugver = _T_567[27:24]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 438:24 CsrRegisterFile.scala 500:14]
  wire [11:0] dcsr_d_zero2 = _T_567[23:12]; // @[CsrRegisterFile.scala 436:14 CsrRegisterFile.scala 500:14]
  wire [20:0] _T_564 = {dcsr_d_xdebugver,dcsr_d_zero2,dcsr_d_ebreakm,dcsr_d_zero1,dcsr_d_ebreaks,dcsr_d_stepie,dcsr_d_stopcount}; // @[CsrRegisterFile.scala 702:35]
  wire [12:0] _T_585 = {csr_wdata_int[12:2],1'h1,csr_wdata_int[0]}; // @[Cat.scala 29:58]
  wire  mcountinhibit_we = _GEN_311; // @[CsrRegisterFile.scala 139:46 CsrRegisterFile.scala 192:20 CsrRegisterFile.scala 463:24]
  wire [12:0] _GEN_374 = mcountinhibit_we ? _T_585 : mcountinhibit_q; // @[CsrRegisterFile.scala 734:3]
  wire [31:0] mhpmcounter_incr = 32'h0; // @[CsrRegisterFile.scala 141:46 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 745:22 CsrRegisterFile.scala 749:21 CsrRegisterFile.scala 750:21 CsrRegisterFile.scala 751:21 CsrRegisterFile.scala 752:21 CsrRegisterFile.scala 753:21 CsrRegisterFile.scala 754:21 CsrRegisterFile.scala 755:21 CsrRegisterFile.scala 756:21 CsrRegisterFile.scala 757:21 CsrRegisterFile.scala 758:21]
  wire  _T_652 = ~mcountinhibit[0]; // @[CsrRegisterFile.scala 778:58]
  wire [31:0] mhpmcounterh_we = _GEN_313; // @[CsrRegisterFile.scala 140:46 CsrRegisterFile.scala 194:20 CsrRegisterFile.scala 485:23]
  wire [31:0] mhpmcounter_we = _GEN_312; // @[CsrRegisterFile.scala 138:46 CsrRegisterFile.scala 193:20 CsrRegisterFile.scala 474:22]
  wire  _T_658 = ~mcountinhibit[2]; // @[CsrRegisterFile.scala 786:60]
  wire  _T_664 = ~mcountinhibit[3]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_670 = ~mcountinhibit[4]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_676 = ~mcountinhibit[5]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_682 = ~mcountinhibit[6]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_688 = ~mcountinhibit[7]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_694 = ~mcountinhibit[8]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_700 = ~mcountinhibit[9]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_706 = ~mcountinhibit[10]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_712 = ~mcountinhibit[11]; // @[CsrRegisterFile.scala 799:60]
  wire  _T_718 = ~mcountinhibit[12]; // @[CsrRegisterFile.scala 799:60]
  wire  mstatus_en = _GEN_365; // @[CsrRegisterFile.scala 104:46 CsrRegisterFile.scala 177:14 CsrRegisterFile.scala 399:16 CsrRegisterFile.scala 541:24 CsrRegisterFile.scala 563:22]
  wire  mie_en = _GEN_289; // @[CsrRegisterFile.scala 107:46 CsrRegisterFile.scala 184:14 CsrRegisterFile.scala 412:14]
  wire  mscratch_en = _GEN_290; // @[CsrRegisterFile.scala 109:46 CsrRegisterFile.scala 183:14 CsrRegisterFile.scala 416:19]
  wire [31:0] mepc_d = _GEN_360; // @[CsrRegisterFile.scala 111:46 CsrRegisterFile.scala 490:14 CsrRegisterFile.scala 549:24]
  wire  mepc_en = _GEN_359; // @[CsrRegisterFile.scala 112:46 CsrRegisterFile.scala 185:14 CsrRegisterFile.scala 420:15 CsrRegisterFile.scala 548:24]
  wire [5:0] mcause_d = _GEN_362; // @[CsrRegisterFile.scala 113:46 CsrRegisterFile.scala 491:14 CsrRegisterFile.scala 551:24]
  wire  mcause_en = _GEN_361; // @[CsrRegisterFile.scala 114:46 CsrRegisterFile.scala 186:14 CsrRegisterFile.scala 424:17 CsrRegisterFile.scala 550:24]
  wire [31:0] mtval_d = _GEN_352; // @[CsrRegisterFile.scala 115:46 CsrRegisterFile.scala 492:14 CsrRegisterFile.scala 540:24]
  wire  mtval_en = _GEN_351; // @[CsrRegisterFile.scala 116:46 CsrRegisterFile.scala 187:14 CsrRegisterFile.scala 428:16 CsrRegisterFile.scala 539:24]
  wire [31:0] mtvec_d = {{1'd0}, _T_494}; // @[CsrRegisterFile.scala 117:46 CsrRegisterFile.scala 496:14]
  wire  mtvec_en = io_i_csr_mtvec_init; // @[CsrRegisterFile.scala 118:46 CsrRegisterFile.scala 432:16 CsrRegisterFile.scala 493:14]
  wire  dcsr_en = 1'h0; // @[CsrRegisterFile.scala 121:46 CsrRegisterFile.scala 191:14 CsrRegisterFile.scala 531:20]
  wire [31:0] depc_d = _T_484; // @[CsrRegisterFile.scala 122:46 CsrRegisterFile.scala 501:14 CsrRegisterFile.scala 532:20]
  wire  depc_en = 1'h0; // @[CsrRegisterFile.scala 123:46 CsrRegisterFile.scala 188:14 CsrRegisterFile.scala 533:20]
  wire  dscratch0_en = _GEN_309; // @[CsrRegisterFile.scala 126:46 CsrRegisterFile.scala 189:16 CsrRegisterFile.scala 455:20]
  wire  dscratch1_en = _GEN_310; // @[CsrRegisterFile.scala 127:46 CsrRegisterFile.scala 190:16 CsrRegisterFile.scala 459:20]
  wire [12:0] mcountinhibit_d = _GEN_374; // @[CsrRegisterFile.scala 132:46 CsrRegisterFile.scala 736:21 CsrRegisterFile.scala 740:23]
  wire  mstat_priv = _T_299; // @[CsrRegisterFile.scala 391:34 CsrRegisterFile.scala 392:14]
  wire [18:0] _T_722 = mhpmcounter_we[31:13]; // @[CsrRegisterFile.scala 808:47 CsrRegisterFile.scala 814:28]
  CsrPrimitive PRIM_MSTATUS ( // @[CsrRegisterFile.scala 647:28]
    .clock(PRIM_MSTATUS_clock),
    .reset(PRIM_MSTATUS_reset),
    .io_i_wrdata(PRIM_MSTATUS_io_i_wrdata),
    .io_i_wr_en(PRIM_MSTATUS_io_i_wr_en),
    .io_o_rd_data(PRIM_MSTATUS_io_o_rd_data)
  );
  CsrPrimitive_1 PRIM_MEPC ( // @[CsrRegisterFile.scala 653:25]
    .clock(PRIM_MEPC_clock),
    .reset(PRIM_MEPC_reset),
    .io_i_wrdata(PRIM_MEPC_io_i_wrdata),
    .io_i_wr_en(PRIM_MEPC_io_i_wr_en),
    .io_o_rd_data(PRIM_MEPC_io_o_rd_data)
  );
  CsrPrimitive_2 PRIM_MIE ( // @[CsrRegisterFile.scala 664:24]
    .clock(PRIM_MIE_clock),
    .reset(PRIM_MIE_reset),
    .io_i_wrdata(PRIM_MIE_io_i_wrdata),
    .io_i_wr_en(PRIM_MIE_io_i_wr_en),
    .io_o_rd_data(PRIM_MIE_io_o_rd_data)
  );
  CsrPrimitive_1 PRIM_MSCRATCH ( // @[CsrRegisterFile.scala 671:29]
    .clock(PRIM_MSCRATCH_clock),
    .reset(PRIM_MSCRATCH_reset),
    .io_i_wrdata(PRIM_MSCRATCH_io_i_wrdata),
    .io_i_wr_en(PRIM_MSCRATCH_io_i_wr_en),
    .io_o_rd_data(PRIM_MSCRATCH_io_o_rd_data)
  );
  CsrPrimitive_4 PRIM_MCAUSE ( // @[CsrRegisterFile.scala 678:27]
    .clock(PRIM_MCAUSE_clock),
    .reset(PRIM_MCAUSE_reset),
    .io_i_wrdata(PRIM_MCAUSE_io_i_wrdata),
    .io_i_wr_en(PRIM_MCAUSE_io_i_wr_en),
    .io_o_rd_data(PRIM_MCAUSE_io_o_rd_data)
  );
  CsrPrimitive_1 PRIM_MTVAL ( // @[CsrRegisterFile.scala 684:26]
    .clock(PRIM_MTVAL_clock),
    .reset(PRIM_MTVAL_reset),
    .io_i_wrdata(PRIM_MTVAL_io_i_wrdata),
    .io_i_wr_en(PRIM_MTVAL_io_i_wr_en),
    .io_o_rd_data(PRIM_MTVAL_io_o_rd_data)
  );
  CsrPrimitive_6 PRIM_MTVEC ( // @[CsrRegisterFile.scala 691:26]
    .clock(PRIM_MTVEC_clock),
    .reset(PRIM_MTVEC_reset),
    .io_i_wrdata(PRIM_MTVEC_io_i_wrdata),
    .io_i_wr_en(PRIM_MTVEC_io_i_wr_en),
    .io_o_rd_data(PRIM_MTVEC_io_o_rd_data)
  );
  CsrPrimitive_7 PRIM_DCSR ( // @[CsrRegisterFile.scala 701:25]
    .clock(PRIM_DCSR_clock),
    .reset(PRIM_DCSR_reset),
    .io_i_wrdata(PRIM_DCSR_io_i_wrdata),
    .io_i_wr_en(PRIM_DCSR_io_i_wr_en),
    .io_o_rd_data(PRIM_DCSR_io_o_rd_data)
  );
  CsrPrimitive_1 PRIM_DEPC ( // @[CsrRegisterFile.scala 708:25]
    .clock(PRIM_DEPC_clock),
    .reset(PRIM_DEPC_reset),
    .io_i_wrdata(PRIM_DEPC_io_i_wrdata),
    .io_i_wr_en(PRIM_DEPC_io_i_wr_en),
    .io_o_rd_data(PRIM_DEPC_io_o_rd_data)
  );
  CsrPrimitive_1 PRIM_DSCRATCH0 ( // @[CsrRegisterFile.scala 714:30]
    .clock(PRIM_DSCRATCH0_clock),
    .reset(PRIM_DSCRATCH0_reset),
    .io_i_wrdata(PRIM_DSCRATCH0_io_i_wrdata),
    .io_i_wr_en(PRIM_DSCRATCH0_io_i_wr_en),
    .io_o_rd_data(PRIM_DSCRATCH0_io_o_rd_data)
  );
  CsrPrimitive_1 PRIM_DSCRATCH1 ( // @[CsrRegisterFile.scala 721:30]
    .clock(PRIM_DSCRATCH1_clock),
    .reset(PRIM_DSCRATCH1_reset),
    .io_i_wrdata(PRIM_DSCRATCH1_io_i_wrdata),
    .io_i_wr_en(PRIM_DSCRATCH1_io_i_wr_en),
    .io_o_rd_data(PRIM_DSCRATCH1_io_o_rd_data)
  );
  BrqCounter COUNT_MCYCLE ( // @[CsrRegisterFile.scala 777:28]
    .clock(COUNT_MCYCLE_clock),
    .reset(COUNT_MCYCLE_reset),
    .io_i_counter_inc(COUNT_MCYCLE_io_i_counter_inc),
    .io_i_counterh_we(COUNT_MCYCLE_io_i_counterh_we),
    .io_i_counter_we(COUNT_MCYCLE_io_i_counter_we),
    .io_i_counter_val(COUNT_MCYCLE_io_i_counter_val),
    .io_o_counter_val(COUNT_MCYCLE_io_o_counter_val)
  );
  BrqCounter COUNT_MINSTRET ( // @[CsrRegisterFile.scala 785:30]
    .clock(COUNT_MINSTRET_clock),
    .reset(COUNT_MINSTRET_reset),
    .io_i_counter_inc(COUNT_MINSTRET_io_i_counter_inc),
    .io_i_counterh_we(COUNT_MINSTRET_io_i_counterh_we),
    .io_i_counter_we(COUNT_MINSTRET_io_i_counter_we),
    .io_i_counter_val(COUNT_MINSTRET_io_i_counter_val),
    .io_o_counter_val(COUNT_MINSTRET_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_clock),
    .reset(BrqCounter_reset),
    .io_i_counter_inc(BrqCounter_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_io_i_counter_we),
    .io_i_counter_val(BrqCounter_io_i_counter_val),
    .io_o_counter_val(BrqCounter_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_1 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_1_clock),
    .reset(BrqCounter_1_reset),
    .io_i_counter_inc(BrqCounter_1_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_1_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_1_io_i_counter_we),
    .io_i_counter_val(BrqCounter_1_io_i_counter_val),
    .io_o_counter_val(BrqCounter_1_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_2 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_2_clock),
    .reset(BrqCounter_2_reset),
    .io_i_counter_inc(BrqCounter_2_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_2_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_2_io_i_counter_we),
    .io_i_counter_val(BrqCounter_2_io_i_counter_val),
    .io_o_counter_val(BrqCounter_2_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_3 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_3_clock),
    .reset(BrqCounter_3_reset),
    .io_i_counter_inc(BrqCounter_3_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_3_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_3_io_i_counter_we),
    .io_i_counter_val(BrqCounter_3_io_i_counter_val),
    .io_o_counter_val(BrqCounter_3_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_4 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_4_clock),
    .reset(BrqCounter_4_reset),
    .io_i_counter_inc(BrqCounter_4_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_4_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_4_io_i_counter_we),
    .io_i_counter_val(BrqCounter_4_io_i_counter_val),
    .io_o_counter_val(BrqCounter_4_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_5 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_5_clock),
    .reset(BrqCounter_5_reset),
    .io_i_counter_inc(BrqCounter_5_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_5_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_5_io_i_counter_we),
    .io_i_counter_val(BrqCounter_5_io_i_counter_val),
    .io_o_counter_val(BrqCounter_5_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_6 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_6_clock),
    .reset(BrqCounter_6_reset),
    .io_i_counter_inc(BrqCounter_6_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_6_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_6_io_i_counter_we),
    .io_i_counter_val(BrqCounter_6_io_i_counter_val),
    .io_o_counter_val(BrqCounter_6_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_7 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_7_clock),
    .reset(BrqCounter_7_reset),
    .io_i_counter_inc(BrqCounter_7_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_7_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_7_io_i_counter_we),
    .io_i_counter_val(BrqCounter_7_io_i_counter_val),
    .io_o_counter_val(BrqCounter_7_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_8 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_8_clock),
    .reset(BrqCounter_8_reset),
    .io_i_counter_inc(BrqCounter_8_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_8_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_8_io_i_counter_we),
    .io_i_counter_val(BrqCounter_8_io_i_counter_val),
    .io_o_counter_val(BrqCounter_8_io_o_counter_val)
  );
  BrqCounter_2 BrqCounter_9 ( // @[CsrRegisterFile.scala 797:26]
    .clock(BrqCounter_9_clock),
    .reset(BrqCounter_9_reset),
    .io_i_counter_inc(BrqCounter_9_io_i_counter_inc),
    .io_i_counterh_we(BrqCounter_9_io_i_counterh_we),
    .io_i_counter_we(BrqCounter_9_io_i_counter_we),
    .io_i_counter_val(BrqCounter_9_io_i_counter_val),
    .io_o_counter_val(BrqCounter_9_io_o_counter_val)
  );
  assign io_o_csr_mtvec = mtvec_q; // @[CsrRegisterFile.scala 628:18]
  assign io_o_csr_rdata = _T_44 ? 32'h0 : _GEN_108; // @[CsrRegisterFile.scala 623:18]
  assign io_o_irq_pending = |io_o_irqs; // @[CsrRegisterFile.scala 637:20]
  assign io_o_irqs = {_T_529,_T_526}; // @[CsrRegisterFile.scala 636:13]
  assign io_o_csr_mstatus_mie = _T_537[0]; // @[CsrRegisterFile.scala 629:24]
  assign io_o_csr_mepc = mepc_q; // @[CsrRegisterFile.scala 626:18]
  assign io_o_illegal_csr_insn = io_i_csr_access & _T_42; // @[CsrRegisterFile.scala 205:26]
  assign PRIM_MSTATUS_clock = clock;
  assign PRIM_MSTATUS_reset = reset;
  assign PRIM_MSTATUS_io_i_wrdata = {_T_534,_T_532}; // @[CsrRegisterFile.scala 648:28]
  assign PRIM_MSTATUS_io_i_wr_en = mstatus_en; // @[CsrRegisterFile.scala 649:29]
  assign PRIM_MEPC_clock = clock;
  assign PRIM_MEPC_reset = reset;
  assign PRIM_MEPC_io_i_wrdata = mepc_d; // @[CsrRegisterFile.scala 654:25]
  assign PRIM_MEPC_io_i_wr_en = mepc_en; // @[CsrRegisterFile.scala 655:26]
  assign PRIM_MIE_clock = clock;
  assign PRIM_MIE_reset = reset;
  assign PRIM_MIE_io_i_wrdata = {_T_546,mie_d_irq_software}; // @[CsrRegisterFile.scala 665:24]
  assign PRIM_MIE_io_i_wr_en = mie_en; // @[CsrRegisterFile.scala 666:25]
  assign PRIM_MSCRATCH_clock = clock;
  assign PRIM_MSCRATCH_reset = reset;
  assign PRIM_MSCRATCH_io_i_wrdata = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 672:29]
  assign PRIM_MSCRATCH_io_i_wr_en = mscratch_en; // @[CsrRegisterFile.scala 673:30]
  assign PRIM_MCAUSE_clock = clock;
  assign PRIM_MCAUSE_reset = reset;
  assign PRIM_MCAUSE_io_i_wrdata = mcause_d; // @[CsrRegisterFile.scala 679:27]
  assign PRIM_MCAUSE_io_i_wr_en = mcause_en; // @[CsrRegisterFile.scala 680:28]
  assign PRIM_MTVAL_clock = clock;
  assign PRIM_MTVAL_reset = reset;
  assign PRIM_MTVAL_io_i_wrdata = mtval_d; // @[CsrRegisterFile.scala 685:26]
  assign PRIM_MTVAL_io_i_wr_en = mtval_en; // @[CsrRegisterFile.scala 686:27]
  assign PRIM_MTVEC_clock = clock;
  assign PRIM_MTVEC_reset = reset;
  assign PRIM_MTVEC_io_i_wrdata = mtvec_d; // @[CsrRegisterFile.scala 692:26]
  assign PRIM_MTVEC_io_i_wr_en = mtvec_en; // @[CsrRegisterFile.scala 693:27]
  assign PRIM_DCSR_clock = clock;
  assign PRIM_DCSR_reset = reset;
  assign PRIM_DCSR_io_i_wrdata = {_T_564,_T_558}; // @[CsrRegisterFile.scala 702:25]
  assign PRIM_DCSR_io_i_wr_en = mip_irq_software; // @[CsrRegisterFile.scala 703:26]
  assign PRIM_DEPC_clock = clock;
  assign PRIM_DEPC_reset = reset;
  assign PRIM_DEPC_io_i_wrdata = _GEN_332; // @[CsrRegisterFile.scala 709:25]
  assign PRIM_DEPC_io_i_wr_en = mip_irq_software; // @[CsrRegisterFile.scala 710:26]
  assign PRIM_DSCRATCH0_clock = clock;
  assign PRIM_DSCRATCH0_reset = reset;
  assign PRIM_DSCRATCH0_io_i_wrdata = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 715:30]
  assign PRIM_DSCRATCH0_io_i_wr_en = dscratch0_en; // @[CsrRegisterFile.scala 716:31]
  assign PRIM_DSCRATCH1_clock = clock;
  assign PRIM_DSCRATCH1_reset = reset;
  assign PRIM_DSCRATCH1_io_i_wrdata = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 722:30]
  assign PRIM_DSCRATCH1_io_i_wr_en = dscratch1_en; // @[CsrRegisterFile.scala 723:31]
  assign COUNT_MCYCLE_clock = clock;
  assign COUNT_MCYCLE_reset = reset;
  assign COUNT_MCYCLE_io_i_counter_inc = tmatch_value_rdata[0] & _T_652; // @[CsrRegisterFile.scala 778:33]
  assign COUNT_MCYCLE_io_i_counterh_we = mhpmcounterh_we[0]; // @[CsrRegisterFile.scala 779:33]
  assign COUNT_MCYCLE_io_i_counter_we = mhpmcounter_we[0]; // @[CsrRegisterFile.scala 780:33]
  assign COUNT_MCYCLE_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 781:33]
  assign COUNT_MINSTRET_clock = clock;
  assign COUNT_MINSTRET_reset = reset;
  assign COUNT_MINSTRET_io_i_counter_inc = tmatch_value_rdata[2] & _T_658; // @[CsrRegisterFile.scala 786:35]
  assign COUNT_MINSTRET_io_i_counterh_we = mhpmcounterh_we[2]; // @[CsrRegisterFile.scala 787:35]
  assign COUNT_MINSTRET_io_i_counter_we = mhpmcounter_we[2]; // @[CsrRegisterFile.scala 788:35]
  assign COUNT_MINSTRET_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 789:35]
  assign BrqCounter_clock = clock;
  assign BrqCounter_reset = reset;
  assign BrqCounter_io_i_counter_inc = tmatch_value_rdata[3] & _T_664; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_io_i_counterh_we = mhpmcounterh_we[3]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_io_i_counter_we = mhpmcounter_we[3]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_1_clock = clock;
  assign BrqCounter_1_reset = reset;
  assign BrqCounter_1_io_i_counter_inc = tmatch_value_rdata[4] & _T_670; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_1_io_i_counterh_we = mhpmcounterh_we[4]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_1_io_i_counter_we = mhpmcounter_we[4]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_1_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_2_clock = clock;
  assign BrqCounter_2_reset = reset;
  assign BrqCounter_2_io_i_counter_inc = tmatch_value_rdata[5] & _T_676; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_2_io_i_counterh_we = mhpmcounterh_we[5]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_2_io_i_counter_we = mhpmcounter_we[5]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_2_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_3_clock = clock;
  assign BrqCounter_3_reset = reset;
  assign BrqCounter_3_io_i_counter_inc = tmatch_value_rdata[6] & _T_682; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_3_io_i_counterh_we = mhpmcounterh_we[6]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_3_io_i_counter_we = mhpmcounter_we[6]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_3_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_4_clock = clock;
  assign BrqCounter_4_reset = reset;
  assign BrqCounter_4_io_i_counter_inc = tmatch_value_rdata[7] & _T_688; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_4_io_i_counterh_we = mhpmcounterh_we[7]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_4_io_i_counter_we = mhpmcounter_we[7]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_4_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_5_clock = clock;
  assign BrqCounter_5_reset = reset;
  assign BrqCounter_5_io_i_counter_inc = tmatch_value_rdata[8] & _T_694; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_5_io_i_counterh_we = mhpmcounterh_we[8]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_5_io_i_counter_we = mhpmcounter_we[8]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_5_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_6_clock = clock;
  assign BrqCounter_6_reset = reset;
  assign BrqCounter_6_io_i_counter_inc = tmatch_value_rdata[9] & _T_700; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_6_io_i_counterh_we = mhpmcounterh_we[9]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_6_io_i_counter_we = mhpmcounter_we[9]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_6_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_7_clock = clock;
  assign BrqCounter_7_reset = reset;
  assign BrqCounter_7_io_i_counter_inc = tmatch_value_rdata[10] & _T_706; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_7_io_i_counterh_we = mhpmcounterh_we[10]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_7_io_i_counter_we = mhpmcounter_we[10]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_7_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_8_clock = clock;
  assign BrqCounter_8_reset = reset;
  assign BrqCounter_8_io_i_counter_inc = tmatch_value_rdata[11] & _T_712; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_8_io_i_counterh_we = mhpmcounterh_we[11]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_8_io_i_counter_we = mhpmcounter_we[11]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_8_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
  assign BrqCounter_9_clock = clock;
  assign BrqCounter_9_reset = reset;
  assign BrqCounter_9_io_i_counter_inc = tmatch_value_rdata[12] & _T_718; // @[CsrRegisterFile.scala 799:31]
  assign BrqCounter_9_io_i_counterh_we = mhpmcounterh_we[12]; // @[CsrRegisterFile.scala 800:31]
  assign BrqCounter_9_io_i_counter_we = mhpmcounter_we[12]; // @[CsrRegisterFile.scala 801:31]
  assign BrqCounter_9_io_i_counter_val = _T_514 ? io_i_csr_wdata : _GEN_372; // @[CsrRegisterFile.scala 802:31]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  priv_lvl_q = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  mcountinhibit_q = _RAND_1[12:0];
  _RAND_2 = {2{`RANDOM}};
  mhpmcounter_0 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  mhpmcounter_1 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  mhpmcounter_2 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  mhpmcounter_3 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  mhpmcounter_4 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  mhpmcounter_5 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  mhpmcounter_6 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  mhpmcounter_7 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  mhpmcounter_8 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  mhpmcounter_9 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  mhpmcounter_10 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  mhpmcounter_11 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  mhpmcounter_12 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  mhpmcounter_13 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  mhpmcounter_14 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  mhpmcounter_15 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  mhpmcounter_16 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  mhpmcounter_17 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  mhpmcounter_18 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  mhpmcounter_19 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  mhpmcounter_20 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  mhpmcounter_21 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  mhpmcounter_22 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  mhpmcounter_23 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  mhpmcounter_24 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  mhpmcounter_25 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  mhpmcounter_26 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  mhpmcounter_27 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  mhpmcounter_28 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  mhpmcounter_29 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  mhpmcounter_30 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  mhpmcounter_31 = _RAND_33[63:0];
  _RAND_34 = {1{`RANDOM}};
  mhpmevent_0 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  mhpmevent_1 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  mhpmevent_2 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  mhpmevent_3 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  mhpmevent_4 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  mhpmevent_5 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  mhpmevent_6 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  mhpmevent_7 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  mhpmevent_8 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  mhpmevent_9 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  mhpmevent_10 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  mhpmevent_11 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  mhpmevent_12 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  mhpmevent_13 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  mhpmevent_14 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  mhpmevent_15 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  mhpmevent_16 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  mhpmevent_17 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  mhpmevent_18 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  mhpmevent_19 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  mhpmevent_20 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  mhpmevent_21 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  mhpmevent_22 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  mhpmevent_23 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  mhpmevent_24 = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  mhpmevent_25 = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  mhpmevent_26 = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  mhpmevent_27 = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  mhpmevent_28 = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  mhpmevent_29 = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  mhpmevent_30 = _RAND_64[31:0];
  _RAND_65 = {1{`RANDOM}};
  mhpmevent_31 = _RAND_65[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      priv_lvl_q <= 2'h3;
    end else if (reset) begin
      priv_lvl_q <= 2'h3;
    end else if (io_i_csr_restore_mret) begin
      priv_lvl_q <= _T_537[3:2];
    end else if (io_i_csr_save_cause) begin
      priv_lvl_q <= 2'h3;
    end
    if (reset) begin
      mcountinhibit_q <= 13'h0;
    end else begin
      mcountinhibit_q <= mcountinhibit_d;
    end
    if (reset) begin
      mhpmcounter_0 <= 64'h0;
    end else begin
      mhpmcounter_0 <= COUNT_MCYCLE_io_o_counter_val;
    end
    mhpmcounter_1 <= 64'h0;
    if (reset) begin
      mhpmcounter_2 <= 64'h0;
    end else begin
      mhpmcounter_2 <= COUNT_MINSTRET_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_3 <= 64'h0;
    end else begin
      mhpmcounter_3 <= BrqCounter_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_4 <= 64'h0;
    end else begin
      mhpmcounter_4 <= BrqCounter_1_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_5 <= 64'h0;
    end else begin
      mhpmcounter_5 <= BrqCounter_2_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_6 <= 64'h0;
    end else begin
      mhpmcounter_6 <= BrqCounter_3_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_7 <= 64'h0;
    end else begin
      mhpmcounter_7 <= BrqCounter_4_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_8 <= 64'h0;
    end else begin
      mhpmcounter_8 <= BrqCounter_5_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_9 <= 64'h0;
    end else begin
      mhpmcounter_9 <= BrqCounter_6_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_10 <= 64'h0;
    end else begin
      mhpmcounter_10 <= BrqCounter_7_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_11 <= 64'h0;
    end else begin
      mhpmcounter_11 <= BrqCounter_8_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_12 <= 64'h0;
    end else begin
      mhpmcounter_12 <= BrqCounter_9_io_o_counter_val;
    end
    if (reset) begin
      mhpmcounter_13 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_14 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_15 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_16 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_17 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_18 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_19 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_20 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_21 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_22 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_23 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_24 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_25 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_26 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_27 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_28 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_29 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_30 <= 64'h0;
    end
    if (reset) begin
      mhpmcounter_31 <= 64'h0;
    end
    if (reset) begin
      mhpmevent_0 <= 32'h0;
    end else begin
      mhpmevent_0 <= 32'h1;
    end
    mhpmevent_1 <= 32'h0;
    if (reset) begin
      mhpmevent_2 <= 32'h0;
    end else begin
      mhpmevent_2 <= 32'h4;
    end
    if (reset) begin
      mhpmevent_3 <= 32'h0;
    end else begin
      mhpmevent_3 <= 32'h8;
    end
    if (reset) begin
      mhpmevent_4 <= 32'h0;
    end else begin
      mhpmevent_4 <= 32'h10;
    end
    if (reset) begin
      mhpmevent_5 <= 32'h0;
    end else begin
      mhpmevent_5 <= 32'h20;
    end
    if (reset) begin
      mhpmevent_6 <= 32'h0;
    end else begin
      mhpmevent_6 <= 32'h40;
    end
    if (reset) begin
      mhpmevent_7 <= 32'h0;
    end else begin
      mhpmevent_7 <= 32'h80;
    end
    if (reset) begin
      mhpmevent_8 <= 32'h0;
    end else begin
      mhpmevent_8 <= 32'h100;
    end
    if (reset) begin
      mhpmevent_9 <= 32'h0;
    end else begin
      mhpmevent_9 <= 32'h200;
    end
    if (reset) begin
      mhpmevent_10 <= 32'h0;
    end else begin
      mhpmevent_10 <= 32'h400;
    end
    if (reset) begin
      mhpmevent_11 <= 32'h0;
    end else begin
      mhpmevent_11 <= 32'h800;
    end
    if (reset) begin
      mhpmevent_12 <= 32'h0;
    end else begin
      mhpmevent_12 <= 32'h1000;
    end
    mhpmevent_13 <= 32'h0;
    mhpmevent_14 <= 32'h0;
    mhpmevent_15 <= 32'h0;
    mhpmevent_16 <= 32'h0;
    mhpmevent_17 <= 32'h0;
    mhpmevent_18 <= 32'h0;
    mhpmevent_19 <= 32'h0;
    mhpmevent_20 <= 32'h0;
    mhpmevent_21 <= 32'h0;
    mhpmevent_22 <= 32'h0;
    mhpmevent_23 <= 32'h0;
    mhpmevent_24 <= 32'h0;
    mhpmevent_25 <= 32'h0;
    mhpmevent_26 <= 32'h0;
    mhpmevent_27 <= 32'h0;
    mhpmevent_28 <= 32'h0;
    mhpmevent_29 <= 32'h0;
    mhpmevent_30 <= 32'h0;
    mhpmevent_31 <= 32'h0;
  end
endmodule
module CsrControlUnit(
  input        io_reg_wr_in_execute,
  input  [4:0] io_rd_sel_in_execute,
  input        io_csr_wr_in_execute,
  input        io_reg_wr_in_memory,
  input  [4:0] io_rd_sel_in_memory,
  input        io_csr_wr_in_memory,
  input        io_reg_wr_in_writeback,
  input  [4:0] io_rd_sel_in_writeback,
  input        io_csr_wr_in_writeback,
  input  [4:0] io_rs1_sel_in_decode,
  input        io_csr_inst_in_decode,
  input        io_csr_imm_inst_in_decode,
  input        io_load_inst_in_execute,
  input        io_load_inst_in_memory,
  input        io_dccm_rvalid_i,
  output [2:0] io_forward_rs1,
  output       io_csr_op_en_o
);
  wire  _T = io_reg_wr_in_execute & io_csr_inst_in_decode; // @[CsrControlUnit.scala 51:58]
  wire  _T_1 = ~io_csr_imm_inst_in_decode; // @[CsrControlUnit.scala 51:86]
  wire  _T_2 = _T & _T_1; // @[CsrControlUnit.scala 51:83]
  wire  _T_3 = io_rd_sel_in_execute != 5'h0; // @[CsrControlUnit.scala 51:137]
  wire  _T_4 = _T_2 & _T_3; // @[CsrControlUnit.scala 51:113]
  wire  _T_5 = ~io_csr_wr_in_execute; // @[CsrControlUnit.scala 51:148]
  wire  _T_6 = _T_4 & _T_5; // @[CsrControlUnit.scala 51:145]
  wire  _T_7 = io_rd_sel_in_execute == io_rs1_sel_in_decode; // @[CsrControlUnit.scala 51:195]
  wire  hazard_in_decode_execute = _T_6 & _T_7; // @[CsrControlUnit.scala 51:170]
  wire  _T_10 = io_reg_wr_in_memory & io_csr_inst_in_decode; // @[CsrControlUnit.scala 52:57]
  wire  _T_12 = _T_10 & _T_1; // @[CsrControlUnit.scala 52:82]
  wire  _T_13 = io_rd_sel_in_memory != 5'h0; // @[CsrControlUnit.scala 52:135]
  wire  _T_14 = _T_12 & _T_13; // @[CsrControlUnit.scala 52:112]
  wire  _T_15 = ~hazard_in_decode_execute; // @[CsrControlUnit.scala 52:147]
  wire  _T_16 = _T_14 & _T_15; // @[CsrControlUnit.scala 52:144]
  wire  _T_17 = ~io_csr_wr_in_memory; // @[CsrControlUnit.scala 52:176]
  wire  _T_18 = _T_16 & _T_17; // @[CsrControlUnit.scala 52:173]
  wire  _T_19 = io_rd_sel_in_memory == io_rs1_sel_in_decode; // @[CsrControlUnit.scala 52:221]
  wire  hazard_in_decode_memory = _T_18 & _T_19; // @[CsrControlUnit.scala 52:197]
  wire  _T_22 = io_reg_wr_in_writeback & io_csr_inst_in_decode; // @[CsrControlUnit.scala 53:60]
  wire  _T_24 = _T_22 & _T_1; // @[CsrControlUnit.scala 53:85]
  wire  _T_25 = io_rd_sel_in_writeback != 5'h0; // @[CsrControlUnit.scala 53:141]
  wire  _T_26 = _T_24 & _T_25; // @[CsrControlUnit.scala 53:115]
  wire  _T_28 = _T_26 & _T_15; // @[CsrControlUnit.scala 53:149]
  wire  _T_29 = ~hazard_in_decode_memory; // @[CsrControlUnit.scala 53:181]
  wire  _T_30 = _T_28 & _T_29; // @[CsrControlUnit.scala 53:178]
  wire  _T_31 = ~io_csr_wr_in_writeback; // @[CsrControlUnit.scala 53:209]
  wire  _T_32 = _T_30 & _T_31; // @[CsrControlUnit.scala 53:206]
  wire  _T_33 = io_rd_sel_in_writeback == io_rs1_sel_in_decode; // @[CsrControlUnit.scala 53:259]
  wire  hazard_in_decode_writeback = _T_32 & _T_33; // @[CsrControlUnit.scala 53:232]
  wire  _T_41 = _T_4 & io_csr_wr_in_execute; // @[CsrControlUnit.scala 55:147]
  wire  csr_hazard_in_decode_execute = _T_41 & _T_7; // @[CsrControlUnit.scala 55:171]
  wire  _T_50 = _T_14 & io_csr_wr_in_memory; // @[CsrControlUnit.scala 56:144]
  wire  _T_51 = ~csr_hazard_in_decode_execute; // @[CsrControlUnit.scala 56:170]
  wire  _T_52 = _T_50 & _T_51; // @[CsrControlUnit.scala 56:167]
  wire  csr_hazard_in_decode_memory = _T_52 & _T_19; // @[CsrControlUnit.scala 56:200]
  wire  _T_61 = _T_26 & io_csr_wr_in_writeback; // @[CsrControlUnit.scala 57:154]
  wire  _T_63 = _T_61 & _T_51; // @[CsrControlUnit.scala 57:180]
  wire  _T_64 = ~csr_hazard_in_decode_memory; // @[CsrControlUnit.scala 57:216]
  wire  _T_65 = _T_63 & _T_64; // @[CsrControlUnit.scala 57:213]
  wire  csr_hazard_in_decode_writeback = _T_65 & _T_33; // @[CsrControlUnit.scala 57:245]
  wire [1:0] _GEN_1 = hazard_in_decode_memory ? 2'h2 : {{1'd0}, hazard_in_decode_execute}; // @[CsrControlUnit.scala 64:33]
  wire [1:0] _GEN_2 = hazard_in_decode_writeback ? 2'h3 : _GEN_1; // @[CsrControlUnit.scala 69:36]
  wire [2:0] _GEN_3 = csr_hazard_in_decode_execute ? 3'h4 : {{1'd0}, _GEN_2}; // @[CsrControlUnit.scala 73:38]
  wire [2:0] _GEN_4 = csr_hazard_in_decode_memory ? 3'h5 : _GEN_3; // @[CsrControlUnit.scala 77:37]
  wire  _T_69 = io_load_inst_in_memory & io_dccm_rvalid_i; // @[CsrControlUnit.scala 86:33]
  wire  _T_70 = ~io_load_inst_in_execute; // @[CsrControlUnit.scala 88:17]
  wire  _T_71 = ~io_load_inst_in_memory; // @[CsrControlUnit.scala 88:45]
  wire  _T_72 = _T_70 & _T_71; // @[CsrControlUnit.scala 88:42]
  wire  _GEN_7 = _T_69 | _T_72; // @[CsrControlUnit.scala 86:54]
  assign io_forward_rs1 = csr_hazard_in_decode_writeback ? 3'h6 : _GEN_4; // @[CsrControlUnit.scala 40:18 CsrControlUnit.scala 60:20 CsrControlUnit.scala 65:20 CsrControlUnit.scala 70:20 CsrControlUnit.scala 74:20 CsrControlUnit.scala 78:20 CsrControlUnit.scala 82:20]
  assign io_csr_op_en_o = io_csr_inst_in_decode & _GEN_7; // @[CsrControlUnit.scala 41:18 CsrControlUnit.scala 87:22 CsrControlUnit.scala 89:22]
endmodule
module Decode(
  input         clock,
  input         reset,
  input         io_irq_external_i,
  input  [31:0] io_IF_ID_inst,
  input  [31:0] io_IF_ID_pc,
  input  [31:0] io_IF_ID_pc4,
  input         io_MEM_WB_ctrl_regWr,
  input         io_MEM_WB_ctrl_csrWen,
  input  [4:0]  io_MEM_WB_rd_sel,
  input         io_ID_EX_ctrl_MemRd,
  input         io_ID_EX_ctrl_regWr,
  input         io_ID_EX_ctrl_csrWen,
  input         io_EX_MEM_ctrl_csrWen,
  input  [4:0]  io_ID_EX_rd_sel,
  input  [4:0]  io_EX_MEM_rd_sel,
  input         io_EX_MEM_ctrl_MemRd,
  input         io_EX_MEM_ctrl_regWr,
  input         io_MEM_WB_ctrl_MemRd,
  input  [31:0] io_alu_output,
  input  [31:0] io_EX_MEM_alu_output,
  input  [31:0] io_dmem_memOut,
  input         io_dccm_rvalid_i,
  input  [31:0] io_writeback_write_data,
  input  [31:0] io_MEM_WB_csr_rdata_i,
  input  [31:0] io_EX_MEM_csr_rdata_i,
  input  [31:0] io_ID_EX_csr_rdata_i,
  input         io_fetch_csr_mtvec_init,
  input  [31:0] io_fetch_csr_if_pc,
  input         io_fetch_csr_save_if,
  input  [5:0]  io_fetch_exc_cause_i,
  input         io_fetch_csr_save_cause_i,
  input         io_execute_regwrite,
  input         io_mem_regwrite,
  input         io_wb_regwrite,
  output [31:0] io_pc_out,
  output [31:0] io_pc4_out,
  output [31:0] io_inst_op_out,
  output [2:0]  io_func3_out,
  output [6:0]  io_func7_out,
  output [4:0]  io_rd_sel_out,
  output [4:0]  io_rs1_sel_out,
  output [4:0]  io_rs2_sel_out,
  output [31:0] io_rs1_out,
  output [31:0] io_rs2_out,
  output [31:0] io_csr_rdata_o,
  output [31:0] io_imm_out,
  output [31:0] io_sb_imm,
  output [31:0] io_uj_imm,
  output [31:0] io_jalr_output,
  output        io_branchLogic_output,
  output [31:0] io_hazardDetection_pc_out,
  output [31:0] io_hazardDetection_inst_out,
  output [31:0] io_hazardDetection_current_pc_out,
  output        io_hazardDetection_pc_forward,
  output        io_hazardDetection_inst_forward,
  output        io_ctrl_MemWr_out,
  output        io_ctrl_MemRd_out,
  output        io_ctrl_Branch_out,
  output        io_ctrl_RegWr_out,
  output        io_ctrl_CsrWen_out,
  output        io_ctrl_MemToReg_out,
  output [3:0]  io_ctrl_AluOp_out,
  output [1:0]  io_ctrl_OpA_sel_out,
  output        io_ctrl_OpB_sel_out,
  output [1:0]  io_ctrl_next_pc_sel_out,
  output        io_fetch_irq_pending_o,
  output        io_fetch_csr_mstatus_mie_o,
  output [31:0] io_fetch_csr_mtvec_o,
  output [31:0] io_fetch_csr_mepc_o,
  output        io_fetch_mret_inst_o
);
  wire [31:0] hazardDetection_io_IF_ID_INST; // @[Decode.scala 95:31]
  wire  hazardDetection_io_ID_EX_MEMREAD; // @[Decode.scala 95:31]
  wire [4:0] hazardDetection_io_ID_EX_REGRD; // @[Decode.scala 95:31]
  wire [31:0] hazardDetection_io_pc_in; // @[Decode.scala 95:31]
  wire [31:0] hazardDetection_io_current_pc; // @[Decode.scala 95:31]
  wire  hazardDetection_io_IF_ID_MEMREAD; // @[Decode.scala 95:31]
  wire  hazardDetection_io_inst_forward; // @[Decode.scala 95:31]
  wire  hazardDetection_io_pc_forward; // @[Decode.scala 95:31]
  wire  hazardDetection_io_ctrl_forward; // @[Decode.scala 95:31]
  wire [31:0] hazardDetection_io_inst_out; // @[Decode.scala 95:31]
  wire [31:0] hazardDetection_io_pc_out; // @[Decode.scala 95:31]
  wire [31:0] hazardDetection_io_current_pc_out; // @[Decode.scala 95:31]
  wire [6:0] control_io_in_opcode; // @[Decode.scala 96:23]
  wire [6:0] control_io_func7; // @[Decode.scala 96:23]
  wire [2:0] control_io_func3; // @[Decode.scala 96:23]
  wire  control_io_out_memWrite; // @[Decode.scala 96:23]
  wire  control_io_out_branch; // @[Decode.scala 96:23]
  wire  control_io_out_memRead; // @[Decode.scala 96:23]
  wire  control_io_out_regWrite; // @[Decode.scala 96:23]
  wire  control_io_csr_we_o; // @[Decode.scala 96:23]
  wire  control_io_csr_imm_type; // @[Decode.scala 96:23]
  wire [1:0] control_io_csr_op_o; // @[Decode.scala 96:23]
  wire  control_io_out_memToReg; // @[Decode.scala 96:23]
  wire [3:0] control_io_out_aluOp; // @[Decode.scala 96:23]
  wire [1:0] control_io_out_operand_a_sel; // @[Decode.scala 96:23]
  wire  control_io_out_operand_b_sel; // @[Decode.scala 96:23]
  wire [1:0] control_io_out_extend_sel; // @[Decode.scala 96:23]
  wire [1:0] control_io_out_next_pc_sel; // @[Decode.scala 96:23]
  wire [4:0] decodeForwardUnit_io_ID_EX_REGRD; // @[Decode.scala 97:33]
  wire  decodeForwardUnit_io_ID_EX_MEMRD; // @[Decode.scala 97:33]
  wire [4:0] decodeForwardUnit_io_EX_MEM_REGRD; // @[Decode.scala 97:33]
  wire  decodeForwardUnit_io_EX_MEM_MEMRD; // @[Decode.scala 97:33]
  wire [4:0] decodeForwardUnit_io_MEM_WB_REGRD; // @[Decode.scala 97:33]
  wire  decodeForwardUnit_io_MEM_WB_MEMRD; // @[Decode.scala 97:33]
  wire  decodeForwardUnit_io_execute_regwrite; // @[Decode.scala 97:33]
  wire  decodeForwardUnit_io_mem_regwrite; // @[Decode.scala 97:33]
  wire  decodeForwardUnit_io_wb_regwrite; // @[Decode.scala 97:33]
  wire [4:0] decodeForwardUnit_io_rs1_sel; // @[Decode.scala 97:33]
  wire [4:0] decodeForwardUnit_io_rs2_sel; // @[Decode.scala 97:33]
  wire  decodeForwardUnit_io_ctrl_branch; // @[Decode.scala 97:33]
  wire [3:0] decodeForwardUnit_io_forward_rs1; // @[Decode.scala 97:33]
  wire [3:0] decodeForwardUnit_io_forward_rs2; // @[Decode.scala 97:33]
  wire [31:0] branchLogic_io_in_rs1; // @[Decode.scala 98:27]
  wire [31:0] branchLogic_io_in_rs2; // @[Decode.scala 98:27]
  wire [2:0] branchLogic_io_in_func3; // @[Decode.scala 98:27]
  wire  branchLogic_io_output; // @[Decode.scala 98:27]
  wire  reg_file_clock; // @[Decode.scala 99:24]
  wire  reg_file_reset; // @[Decode.scala 99:24]
  wire  reg_file_io_regWrite; // @[Decode.scala 99:24]
  wire [4:0] reg_file_io_rd_sel; // @[Decode.scala 99:24]
  wire [4:0] reg_file_io_rs1_sel; // @[Decode.scala 99:24]
  wire [4:0] reg_file_io_rs2_sel; // @[Decode.scala 99:24]
  wire [31:0] reg_file_io_writeData; // @[Decode.scala 99:24]
  wire [31:0] reg_file_io_rs1; // @[Decode.scala 99:24]
  wire [31:0] reg_file_io_rs2; // @[Decode.scala 99:24]
  wire [31:0] imm_generation_io_instruction; // @[Decode.scala 100:30]
  wire [31:0] imm_generation_io_pc; // @[Decode.scala 100:30]
  wire [31:0] imm_generation_io_s_imm; // @[Decode.scala 100:30]
  wire [31:0] imm_generation_io_sb_imm; // @[Decode.scala 100:30]
  wire [31:0] imm_generation_io_u_imm; // @[Decode.scala 100:30]
  wire [31:0] imm_generation_io_uj_imm; // @[Decode.scala 100:30]
  wire [31:0] imm_generation_io_i_imm; // @[Decode.scala 100:30]
  wire [4:0] structuralDetector_io_rs1_sel; // @[Decode.scala 101:34]
  wire [4:0] structuralDetector_io_rs2_sel; // @[Decode.scala 101:34]
  wire  structuralDetector_io_MEM_WB_regWr; // @[Decode.scala 101:34]
  wire [4:0] structuralDetector_io_MEM_WB_REGRD; // @[Decode.scala 101:34]
  wire [6:0] structuralDetector_io_inst_op_in; // @[Decode.scala 101:34]
  wire  structuralDetector_io_fwd_rs1; // @[Decode.scala 101:34]
  wire  structuralDetector_io_fwd_rs2; // @[Decode.scala 101:34]
  wire [31:0] jalr_io_input_a; // @[Decode.scala 102:20]
  wire [31:0] jalr_io_input_b; // @[Decode.scala 102:20]
  wire [31:0] jalr_io_output; // @[Decode.scala 102:20]
  wire  csrRegFile_clock; // @[Decode.scala 103:26]
  wire  csrRegFile_reset; // @[Decode.scala 103:26]
  wire [31:0] csrRegFile_io_o_csr_mtvec; // @[Decode.scala 103:26]
  wire  csrRegFile_io_i_csr_mtvec_init; // @[Decode.scala 103:26]
  wire  csrRegFile_io_i_csr_access; // @[Decode.scala 103:26]
  wire [11:0] csrRegFile_io_i_csr_addr; // @[Decode.scala 103:26]
  wire [31:0] csrRegFile_io_i_csr_wdata; // @[Decode.scala 103:26]
  wire [1:0] csrRegFile_io_i_csr_op; // @[Decode.scala 103:26]
  wire  csrRegFile_io_i_csr_op_en; // @[Decode.scala 103:26]
  wire [31:0] csrRegFile_io_o_csr_rdata; // @[Decode.scala 103:26]
  wire  csrRegFile_io_i_irq_external; // @[Decode.scala 103:26]
  wire  csrRegFile_io_o_irq_pending; // @[Decode.scala 103:26]
  wire [2:0] csrRegFile_io_o_irqs; // @[Decode.scala 103:26]
  wire  csrRegFile_io_o_csr_mstatus_mie; // @[Decode.scala 103:26]
  wire [31:0] csrRegFile_io_o_csr_mepc; // @[Decode.scala 103:26]
  wire [31:0] csrRegFile_io_i_pc_if; // @[Decode.scala 103:26]
  wire  csrRegFile_io_i_csr_save_if; // @[Decode.scala 103:26]
  wire  csrRegFile_io_i_csr_restore_mret; // @[Decode.scala 103:26]
  wire  csrRegFile_io_i_csr_save_cause; // @[Decode.scala 103:26]
  wire [5:0] csrRegFile_io_i_csr_mcause; // @[Decode.scala 103:26]
  wire  csrRegFile_io_o_illegal_csr_insn; // @[Decode.scala 103:26]
  wire  csrControlUnit_io_reg_wr_in_execute; // @[Decode.scala 104:30]
  wire [4:0] csrControlUnit_io_rd_sel_in_execute; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_csr_wr_in_execute; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_reg_wr_in_memory; // @[Decode.scala 104:30]
  wire [4:0] csrControlUnit_io_rd_sel_in_memory; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_csr_wr_in_memory; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_reg_wr_in_writeback; // @[Decode.scala 104:30]
  wire [4:0] csrControlUnit_io_rd_sel_in_writeback; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_csr_wr_in_writeback; // @[Decode.scala 104:30]
  wire [4:0] csrControlUnit_io_rs1_sel_in_decode; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_csr_inst_in_decode; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_csr_imm_inst_in_decode; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_load_inst_in_execute; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_load_inst_in_memory; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_dccm_rvalid_i; // @[Decode.scala 104:30]
  wire [2:0] csrControlUnit_io_forward_rs1; // @[Decode.scala 104:30]
  wire  csrControlUnit_io_csr_op_en_o; // @[Decode.scala 104:30]
  wire  _T_1 = io_IF_ID_inst[6:0] == 7'h73; // @[Decode.scala 111:40]
  wire  _T_3 = io_IF_ID_inst[14:12] == 3'h0; // @[Decode.scala 111:77]
  wire  _T_4 = _T_1 & _T_3; // @[Decode.scala 111:52]
  wire  _T_6 = io_IF_ID_inst[31:20] == 12'h302; // @[Decode.scala 111:115]
  wire  _T_17 = decodeForwardUnit_io_forward_rs1 == 4'h0; // @[Decode.scala 216:41]
  wire  _T_18 = decodeForwardUnit_io_forward_rs1 == 4'h1; // @[Decode.scala 220:47]
  wire  _T_19 = decodeForwardUnit_io_forward_rs1 == 4'h2; // @[Decode.scala 224:47]
  wire  _T_20 = decodeForwardUnit_io_forward_rs1 == 4'h3; // @[Decode.scala 228:47]
  wire  _T_21 = decodeForwardUnit_io_forward_rs1 == 4'h4; // @[Decode.scala 232:47]
  wire  _T_22 = decodeForwardUnit_io_forward_rs1 == 4'h5; // @[Decode.scala 236:47]
  wire  _T_23 = decodeForwardUnit_io_forward_rs1 == 4'h6; // @[Decode.scala 246:48]
  wire  _T_24 = decodeForwardUnit_io_forward_rs1 == 4'h7; // @[Decode.scala 250:49]
  wire  _T_25 = decodeForwardUnit_io_forward_rs1 == 4'h8; // @[Decode.scala 254:47]
  wire  _T_26 = decodeForwardUnit_io_forward_rs1 == 4'h9; // @[Decode.scala 258:47]
  wire  _T_27 = decodeForwardUnit_io_forward_rs1 == 4'ha; // @[Decode.scala 262:47]
  wire [31:0] _GEN_0 = _T_27 ? $signed(reg_file_io_writeData) : $signed(reg_file_io_rs1); // @[Decode.scala 262:62]
  wire [31:0] _GEN_1 = reg_file_io_rs1; // @[Decode.scala 262:62]
  wire [31:0] _GEN_2 = _T_26 ? $signed(io_dmem_memOut) : $signed(_GEN_0); // @[Decode.scala 258:62]
  wire [31:0] _GEN_3 = _T_26 ? $signed(reg_file_io_rs1) : $signed(_GEN_1); // @[Decode.scala 258:62]
  wire [31:0] _GEN_4 = _T_25 ? $signed(reg_file_io_writeData) : $signed(_GEN_2); // @[Decode.scala 254:62]
  wire [31:0] _GEN_5 = _T_25 ? $signed(reg_file_io_rs1) : $signed(_GEN_3); // @[Decode.scala 254:62]
  wire [31:0] _GEN_6 = _T_24 ? $signed(io_EX_MEM_alu_output) : $signed(_GEN_4); // @[Decode.scala 250:64]
  wire [31:0] _GEN_7 = _T_24 ? $signed(reg_file_io_rs1) : $signed(_GEN_5); // @[Decode.scala 250:64]
  wire [31:0] _GEN_8 = _T_23 ? $signed(io_alu_output) : $signed(_GEN_6); // @[Decode.scala 246:63]
  wire [31:0] _GEN_9 = _T_23 ? $signed(reg_file_io_rs1) : $signed(_GEN_7); // @[Decode.scala 246:63]
  wire [31:0] _GEN_10 = _T_22 ? $signed(reg_file_io_writeData) : $signed(_GEN_9); // @[Decode.scala 236:62]
  wire [31:0] _GEN_11 = _T_22 ? $signed(reg_file_io_rs1) : $signed(_GEN_8); // @[Decode.scala 236:62]
  wire [31:0] _GEN_12 = _T_21 ? $signed(io_dmem_memOut) : $signed(_GEN_10); // @[Decode.scala 232:62]
  wire [31:0] _GEN_13 = _T_21 ? $signed(reg_file_io_rs1) : $signed(_GEN_11); // @[Decode.scala 232:62]
  wire [31:0] _GEN_14 = _T_20 ? $signed(reg_file_io_writeData) : $signed(_GEN_12); // @[Decode.scala 228:62]
  wire [31:0] _GEN_15 = _T_20 ? $signed(reg_file_io_rs1) : $signed(_GEN_13); // @[Decode.scala 228:62]
  wire [31:0] _GEN_16 = _T_19 ? $signed(io_EX_MEM_alu_output) : $signed(_GEN_14); // @[Decode.scala 224:62]
  wire [31:0] _GEN_17 = _T_19 ? $signed(reg_file_io_rs1) : $signed(_GEN_15); // @[Decode.scala 224:62]
  wire [31:0] _GEN_18 = _T_18 ? $signed(io_alu_output) : $signed(_GEN_16); // @[Decode.scala 220:62]
  wire [31:0] _GEN_19 = _T_18 ? $signed(reg_file_io_rs1) : $signed(_GEN_17); // @[Decode.scala 220:62]
  wire  _T_28 = decodeForwardUnit_io_forward_rs2 == 4'h0; // @[Decode.scala 274:41]
  wire  _T_29 = decodeForwardUnit_io_forward_rs2 == 4'h1; // @[Decode.scala 277:47]
  wire  _T_30 = decodeForwardUnit_io_forward_rs2 == 4'h2; // @[Decode.scala 280:47]
  wire  _T_31 = decodeForwardUnit_io_forward_rs2 == 4'h3; // @[Decode.scala 283:47]
  wire  _T_32 = decodeForwardUnit_io_forward_rs2 == 4'h4; // @[Decode.scala 286:47]
  wire  _T_33 = decodeForwardUnit_io_forward_rs2 == 4'h5; // @[Decode.scala 289:47]
  wire [31:0] _GEN_22 = _T_33 ? $signed(reg_file_io_writeData) : $signed(reg_file_io_rs2); // @[Decode.scala 289:62]
  wire [31:0] _GEN_23 = _T_32 ? $signed(io_dmem_memOut) : $signed(_GEN_22); // @[Decode.scala 286:62]
  wire [31:0] _GEN_24 = _T_31 ? $signed(reg_file_io_writeData) : $signed(_GEN_23); // @[Decode.scala 283:62]
  wire [31:0] _GEN_25 = _T_30 ? $signed(io_EX_MEM_alu_output) : $signed(_GEN_24); // @[Decode.scala 280:62]
  wire [31:0] _GEN_26 = _T_29 ? $signed(io_alu_output) : $signed(_GEN_25); // @[Decode.scala 277:62]
  wire  _T_34 = hazardDetection_io_ctrl_forward; // @[Decode.scala 305:40]
  wire  _T_42 = structuralDetector_io_fwd_rs1; // @[Decode.scala 337:38]
  wire  _T_44 = io_IF_ID_inst[6:0] != 7'h37; // @[Decode.scala 341:43]
  wire [31:0] _T_45 = _T_44 ? $signed(reg_file_io_writeData) : $signed(32'sh0); // @[Decode.scala 341:22]
  wire [31:0] _T_48 = _T_44 ? $signed(reg_file_io_rs1) : $signed(32'sh0); // @[Decode.scala 343:22]
  wire  _T_49 = structuralDetector_io_fwd_rs2; // @[Decode.scala 347:38]
  wire [31:0] _T_55 = _T_44 ? $signed(reg_file_io_rs2) : $signed(32'sh0); // @[Decode.scala 353:22]
  wire  _T_56 = control_io_out_extend_sel == 2'h0; // @[Decode.scala 356:34]
  wire  _T_57 = control_io_out_extend_sel == 2'h1; // @[Decode.scala 359:40]
  wire  _T_58 = control_io_out_extend_sel == 2'h2; // @[Decode.scala 362:40]
  wire [31:0] _GEN_40 = _T_58 ? $signed(imm_generation_io_u_imm) : $signed(32'sh0); // @[Decode.scala 362:53]
  wire [31:0] _GEN_41 = _T_57 ? $signed(imm_generation_io_s_imm) : $signed(_GEN_40); // @[Decode.scala 359:53]
  wire  _T_65 = control_io_csr_imm_type; // @[Decode.scala 412:32]
  wire  _T_67 = csrControlUnit_io_forward_rs1 == 3'h1; // @[Decode.scala 415:40]
  wire  _T_69 = csrControlUnit_io_forward_rs1 == 3'h2; // @[Decode.scala 417:46]
  wire [31:0] _T_73 = io_EX_MEM_ctrl_MemRd ? io_dmem_memOut : io_EX_MEM_alu_output; // @[Decode.scala 420:23]
  wire  _T_74 = csrControlUnit_io_forward_rs1 == 3'h3; // @[Decode.scala 421:46]
  wire  _T_76 = csrControlUnit_io_forward_rs1 == 3'h4; // @[Decode.scala 423:46]
  wire  _T_77 = csrControlUnit_io_forward_rs1 == 3'h5; // @[Decode.scala 426:46]
  wire  _T_78 = csrControlUnit_io_forward_rs1 == 3'h6; // @[Decode.scala 429:46]
  wire [31:0] _GEN_43 = _T_78 ? io_MEM_WB_csr_rdata_i : reg_file_io_rs1; // @[Decode.scala 429:55]
  wire [31:0] _GEN_44 = _T_77 ? io_EX_MEM_csr_rdata_i : _GEN_43; // @[Decode.scala 426:55]
  wire [31:0] _GEN_45 = _T_76 ? io_ID_EX_csr_rdata_i : _GEN_44; // @[Decode.scala 423:55]
  wire [31:0] _GEN_46 = _T_74 ? io_writeback_write_data : _GEN_45; // @[Decode.scala 421:55]
  wire [31:0] _GEN_47 = _T_69 ? _T_73 : _GEN_46; // @[Decode.scala 417:55]
  wire [31:0] _GEN_48 = _T_67 ? io_alu_output : _GEN_47; // @[Decode.scala 415:49]
  HazardDetection hazardDetection ( // @[Decode.scala 95:31]
    .io_IF_ID_INST(hazardDetection_io_IF_ID_INST),
    .io_ID_EX_MEMREAD(hazardDetection_io_ID_EX_MEMREAD),
    .io_ID_EX_REGRD(hazardDetection_io_ID_EX_REGRD),
    .io_pc_in(hazardDetection_io_pc_in),
    .io_current_pc(hazardDetection_io_current_pc),
    .io_IF_ID_MEMREAD(hazardDetection_io_IF_ID_MEMREAD),
    .io_inst_forward(hazardDetection_io_inst_forward),
    .io_pc_forward(hazardDetection_io_pc_forward),
    .io_ctrl_forward(hazardDetection_io_ctrl_forward),
    .io_inst_out(hazardDetection_io_inst_out),
    .io_pc_out(hazardDetection_io_pc_out),
    .io_current_pc_out(hazardDetection_io_current_pc_out)
  );
  Control control ( // @[Decode.scala 96:23]
    .io_in_opcode(control_io_in_opcode),
    .io_func7(control_io_func7),
    .io_func3(control_io_func3),
    .io_out_memWrite(control_io_out_memWrite),
    .io_out_branch(control_io_out_branch),
    .io_out_memRead(control_io_out_memRead),
    .io_out_regWrite(control_io_out_regWrite),
    .io_csr_we_o(control_io_csr_we_o),
    .io_csr_imm_type(control_io_csr_imm_type),
    .io_csr_op_o(control_io_csr_op_o),
    .io_out_memToReg(control_io_out_memToReg),
    .io_out_aluOp(control_io_out_aluOp),
    .io_out_operand_a_sel(control_io_out_operand_a_sel),
    .io_out_operand_b_sel(control_io_out_operand_b_sel),
    .io_out_extend_sel(control_io_out_extend_sel),
    .io_out_next_pc_sel(control_io_out_next_pc_sel)
  );
  DecodeForwardUnit decodeForwardUnit ( // @[Decode.scala 97:33]
    .io_ID_EX_REGRD(decodeForwardUnit_io_ID_EX_REGRD),
    .io_ID_EX_MEMRD(decodeForwardUnit_io_ID_EX_MEMRD),
    .io_EX_MEM_REGRD(decodeForwardUnit_io_EX_MEM_REGRD),
    .io_EX_MEM_MEMRD(decodeForwardUnit_io_EX_MEM_MEMRD),
    .io_MEM_WB_REGRD(decodeForwardUnit_io_MEM_WB_REGRD),
    .io_MEM_WB_MEMRD(decodeForwardUnit_io_MEM_WB_MEMRD),
    .io_execute_regwrite(decodeForwardUnit_io_execute_regwrite),
    .io_mem_regwrite(decodeForwardUnit_io_mem_regwrite),
    .io_wb_regwrite(decodeForwardUnit_io_wb_regwrite),
    .io_rs1_sel(decodeForwardUnit_io_rs1_sel),
    .io_rs2_sel(decodeForwardUnit_io_rs2_sel),
    .io_ctrl_branch(decodeForwardUnit_io_ctrl_branch),
    .io_forward_rs1(decodeForwardUnit_io_forward_rs1),
    .io_forward_rs2(decodeForwardUnit_io_forward_rs2)
  );
  BranchLogic branchLogic ( // @[Decode.scala 98:27]
    .io_in_rs1(branchLogic_io_in_rs1),
    .io_in_rs2(branchLogic_io_in_rs2),
    .io_in_func3(branchLogic_io_in_func3),
    .io_output(branchLogic_io_output)
  );
  RegisterFile reg_file ( // @[Decode.scala 99:24]
    .clock(reg_file_clock),
    .reset(reg_file_reset),
    .io_regWrite(reg_file_io_regWrite),
    .io_rd_sel(reg_file_io_rd_sel),
    .io_rs1_sel(reg_file_io_rs1_sel),
    .io_rs2_sel(reg_file_io_rs2_sel),
    .io_writeData(reg_file_io_writeData),
    .io_rs1(reg_file_io_rs1),
    .io_rs2(reg_file_io_rs2)
  );
  ImmediateGeneration imm_generation ( // @[Decode.scala 100:30]
    .io_instruction(imm_generation_io_instruction),
    .io_pc(imm_generation_io_pc),
    .io_s_imm(imm_generation_io_s_imm),
    .io_sb_imm(imm_generation_io_sb_imm),
    .io_u_imm(imm_generation_io_u_imm),
    .io_uj_imm(imm_generation_io_uj_imm),
    .io_i_imm(imm_generation_io_i_imm)
  );
  StructuralDetector structuralDetector ( // @[Decode.scala 101:34]
    .io_rs1_sel(structuralDetector_io_rs1_sel),
    .io_rs2_sel(structuralDetector_io_rs2_sel),
    .io_MEM_WB_regWr(structuralDetector_io_MEM_WB_regWr),
    .io_MEM_WB_REGRD(structuralDetector_io_MEM_WB_REGRD),
    .io_inst_op_in(structuralDetector_io_inst_op_in),
    .io_fwd_rs1(structuralDetector_io_fwd_rs1),
    .io_fwd_rs2(structuralDetector_io_fwd_rs2)
  );
  Jalr jalr ( // @[Decode.scala 102:20]
    .io_input_a(jalr_io_input_a),
    .io_input_b(jalr_io_input_b),
    .io_output(jalr_io_output)
  );
  CsrRegisterFile csrRegFile ( // @[Decode.scala 103:26]
    .clock(csrRegFile_clock),
    .reset(csrRegFile_reset),
    .io_o_csr_mtvec(csrRegFile_io_o_csr_mtvec),
    .io_i_csr_mtvec_init(csrRegFile_io_i_csr_mtvec_init),
    .io_i_csr_access(csrRegFile_io_i_csr_access),
    .io_i_csr_addr(csrRegFile_io_i_csr_addr),
    .io_i_csr_wdata(csrRegFile_io_i_csr_wdata),
    .io_i_csr_op(csrRegFile_io_i_csr_op),
    .io_i_csr_op_en(csrRegFile_io_i_csr_op_en),
    .io_o_csr_rdata(csrRegFile_io_o_csr_rdata),
    .io_i_irq_external(csrRegFile_io_i_irq_external),
    .io_o_irq_pending(csrRegFile_io_o_irq_pending),
    .io_o_irqs(csrRegFile_io_o_irqs),
    .io_o_csr_mstatus_mie(csrRegFile_io_o_csr_mstatus_mie),
    .io_o_csr_mepc(csrRegFile_io_o_csr_mepc),
    .io_i_pc_if(csrRegFile_io_i_pc_if),
    .io_i_csr_save_if(csrRegFile_io_i_csr_save_if),
    .io_i_csr_restore_mret(csrRegFile_io_i_csr_restore_mret),
    .io_i_csr_save_cause(csrRegFile_io_i_csr_save_cause),
    .io_i_csr_mcause(csrRegFile_io_i_csr_mcause),
    .io_o_illegal_csr_insn(csrRegFile_io_o_illegal_csr_insn)
  );
  CsrControlUnit csrControlUnit ( // @[Decode.scala 104:30]
    .io_reg_wr_in_execute(csrControlUnit_io_reg_wr_in_execute),
    .io_rd_sel_in_execute(csrControlUnit_io_rd_sel_in_execute),
    .io_csr_wr_in_execute(csrControlUnit_io_csr_wr_in_execute),
    .io_reg_wr_in_memory(csrControlUnit_io_reg_wr_in_memory),
    .io_rd_sel_in_memory(csrControlUnit_io_rd_sel_in_memory),
    .io_csr_wr_in_memory(csrControlUnit_io_csr_wr_in_memory),
    .io_reg_wr_in_writeback(csrControlUnit_io_reg_wr_in_writeback),
    .io_rd_sel_in_writeback(csrControlUnit_io_rd_sel_in_writeback),
    .io_csr_wr_in_writeback(csrControlUnit_io_csr_wr_in_writeback),
    .io_rs1_sel_in_decode(csrControlUnit_io_rs1_sel_in_decode),
    .io_csr_inst_in_decode(csrControlUnit_io_csr_inst_in_decode),
    .io_csr_imm_inst_in_decode(csrControlUnit_io_csr_imm_inst_in_decode),
    .io_load_inst_in_execute(csrControlUnit_io_load_inst_in_execute),
    .io_load_inst_in_memory(csrControlUnit_io_load_inst_in_memory),
    .io_dccm_rvalid_i(csrControlUnit_io_dccm_rvalid_i),
    .io_forward_rs1(csrControlUnit_io_forward_rs1),
    .io_csr_op_en_o(csrControlUnit_io_csr_op_en_o)
  );
  assign io_pc_out = io_IF_ID_pc; // @[Decode.scala 369:13]
  assign io_pc4_out = io_IF_ID_pc4; // @[Decode.scala 370:14]
  assign io_inst_op_out = {{25'd0}, io_IF_ID_inst[6:0]}; // @[Decode.scala 371:18]
  assign io_func3_out = io_IF_ID_inst[14:12]; // @[Decode.scala 372:16]
  assign io_func7_out = io_IF_ID_inst[31:25]; // @[Decode.scala 373:16]
  assign io_rd_sel_out = io_IF_ID_inst[11:7]; // @[Decode.scala 374:17]
  assign io_rs1_sel_out = io_IF_ID_inst[19:15]; // @[Decode.scala 375:18]
  assign io_rs2_sel_out = io_IF_ID_inst[24:20]; // @[Decode.scala 376:18]
  assign io_rs1_out = _T_42 ? $signed(_T_45) : $signed(_T_48); // @[Decode.scala 341:16 Decode.scala 343:16]
  assign io_rs2_out = _T_49 ? $signed(_T_45) : $signed(_T_55); // @[Decode.scala 351:16 Decode.scala 353:16]
  assign io_csr_rdata_o = csrRegFile_io_o_csr_rdata; // @[Decode.scala 437:18]
  assign io_imm_out = _T_56 ? $signed(imm_generation_io_i_imm) : $signed(_GEN_41); // @[Decode.scala 410:14]
  assign io_sb_imm = imm_generation_io_sb_imm; // @[Decode.scala 325:13]
  assign io_uj_imm = imm_generation_io_uj_imm; // @[Decode.scala 326:13]
  assign io_jalr_output = jalr_io_output; // @[Decode.scala 327:18]
  assign io_branchLogic_output = branchLogic_io_output; // @[Decode.scala 300:25]
  assign io_hazardDetection_pc_out = hazardDetection_io_pc_out; // @[Decode.scala 182:29]
  assign io_hazardDetection_inst_out = hazardDetection_io_inst_out; // @[Decode.scala 185:31]
  assign io_hazardDetection_current_pc_out = hazardDetection_io_current_pc_out; // @[Decode.scala 183:37]
  assign io_hazardDetection_pc_forward = hazardDetection_io_pc_forward; // @[Decode.scala 184:33]
  assign io_hazardDetection_inst_forward = hazardDetection_io_inst_forward; // @[Decode.scala 186:35]
  assign io_ctrl_MemWr_out = _T_34 ? 1'h0 : control_io_out_memWrite; // @[Decode.scala 381:23 Decode.scala 395:23]
  assign io_ctrl_MemRd_out = _T_34 ? 1'h0 : control_io_out_memRead; // @[Decode.scala 382:23 Decode.scala 396:23]
  assign io_ctrl_Branch_out = _T_34 ? 1'h0 : control_io_out_branch; // @[Decode.scala 383:24 Decode.scala 397:24]
  assign io_ctrl_RegWr_out = _T_34 ? 1'h0 : control_io_out_regWrite; // @[Decode.scala 384:23 Decode.scala 398:23]
  assign io_ctrl_CsrWen_out = _T_34 ? 1'h0 : control_io_csr_we_o; // @[Decode.scala 385:24 Decode.scala 399:24]
  assign io_ctrl_MemToReg_out = _T_34 ? 1'h0 : control_io_out_memToReg; // @[Decode.scala 386:26 Decode.scala 400:26]
  assign io_ctrl_AluOp_out = _T_34 ? 4'h0 : control_io_out_aluOp; // @[Decode.scala 387:23 Decode.scala 401:23]
  assign io_ctrl_OpA_sel_out = _T_34 ? 2'h0 : control_io_out_operand_a_sel; // @[Decode.scala 388:25 Decode.scala 402:25]
  assign io_ctrl_OpB_sel_out = _T_34 ? 1'h0 : control_io_out_operand_b_sel; // @[Decode.scala 389:25 Decode.scala 403:25]
  assign io_ctrl_next_pc_sel_out = _T_34 ? 2'h0 : control_io_out_next_pc_sel; // @[Decode.scala 390:29 Decode.scala 404:29]
  assign io_fetch_irq_pending_o = csrRegFile_io_o_irq_pending; // @[Decode.scala 149:26]
  assign io_fetch_csr_mstatus_mie_o = csrRegFile_io_o_csr_mstatus_mie; // @[Decode.scala 150:30]
  assign io_fetch_csr_mtvec_o = csrRegFile_io_o_csr_mtvec; // @[Decode.scala 151:24]
  assign io_fetch_csr_mepc_o = csrRegFile_io_o_csr_mepc; // @[Decode.scala 152:23]
  assign io_fetch_mret_inst_o = _T_4 & _T_6; // @[Decode.scala 153:24]
  assign hazardDetection_io_IF_ID_INST = io_IF_ID_inst; // @[Decode.scala 174:33]
  assign hazardDetection_io_ID_EX_MEMREAD = io_ID_EX_ctrl_MemRd; // @[Decode.scala 175:36]
  assign hazardDetection_io_ID_EX_REGRD = io_ID_EX_rd_sel; // @[Decode.scala 176:34]
  assign hazardDetection_io_pc_in = io_IF_ID_pc4; // @[Decode.scala 177:28]
  assign hazardDetection_io_current_pc = io_IF_ID_pc; // @[Decode.scala 178:33]
  assign hazardDetection_io_IF_ID_MEMREAD = control_io_out_memRead; // @[Decode.scala 179:36]
  assign control_io_in_opcode = io_IF_ID_inst[6:0]; // @[Decode.scala 189:24]
  assign control_io_func7 = io_IF_ID_inst[31:25]; // @[Decode.scala 191:20]
  assign control_io_func3 = io_IF_ID_inst[14:12]; // @[Decode.scala 192:20]
  assign decodeForwardUnit_io_ID_EX_REGRD = io_ID_EX_rd_sel; // @[Decode.scala 195:36]
  assign decodeForwardUnit_io_ID_EX_MEMRD = io_ID_EX_ctrl_MemRd; // @[Decode.scala 196:36]
  assign decodeForwardUnit_io_EX_MEM_REGRD = io_EX_MEM_rd_sel; // @[Decode.scala 197:37]
  assign decodeForwardUnit_io_EX_MEM_MEMRD = io_EX_MEM_ctrl_MemRd; // @[Decode.scala 199:37]
  assign decodeForwardUnit_io_MEM_WB_REGRD = io_MEM_WB_rd_sel; // @[Decode.scala 198:37]
  assign decodeForwardUnit_io_MEM_WB_MEMRD = io_MEM_WB_ctrl_MemRd; // @[Decode.scala 200:37]
  assign decodeForwardUnit_io_execute_regwrite = io_execute_regwrite; // @[Decode.scala 205:41]
  assign decodeForwardUnit_io_mem_regwrite = io_mem_regwrite; // @[Decode.scala 206:37]
  assign decodeForwardUnit_io_wb_regwrite = io_wb_regwrite; // @[Decode.scala 207:36]
  assign decodeForwardUnit_io_rs1_sel = io_IF_ID_inst[19:15]; // @[Decode.scala 201:32]
  assign decodeForwardUnit_io_rs2_sel = io_IF_ID_inst[24:20]; // @[Decode.scala 202:32]
  assign decodeForwardUnit_io_ctrl_branch = control_io_out_branch; // @[Decode.scala 203:36]
  assign branchLogic_io_in_rs1 = _T_17 ? $signed(reg_file_io_rs1) : $signed(_GEN_18); // @[Decode.scala 218:27 Decode.scala 222:27 Decode.scala 226:27 Decode.scala 230:27 Decode.scala 234:27 Decode.scala 238:27 Decode.scala 249:29 Decode.scala 253:27 Decode.scala 257:27 Decode.scala 261:27 Decode.scala 265:27 Decode.scala 268:29]
  assign branchLogic_io_in_rs2 = _T_28 ? $signed(reg_file_io_rs2) : $signed(_GEN_26); // @[Decode.scala 276:27 Decode.scala 279:27 Decode.scala 282:27 Decode.scala 285:27 Decode.scala 288:27 Decode.scala 291:27 Decode.scala 294:29]
  assign branchLogic_io_in_func3 = io_IF_ID_inst[14:12]; // @[Decode.scala 209:27]
  assign reg_file_clock = clock;
  assign reg_file_reset = reset;
  assign reg_file_io_regWrite = io_MEM_WB_ctrl_regWr; // @[Decode.scala 315:24]
  assign reg_file_io_rd_sel = io_MEM_WB_rd_sel; // @[Decode.scala 316:22]
  assign reg_file_io_rs1_sel = io_IF_ID_inst[19:15]; // @[Decode.scala 313:23]
  assign reg_file_io_rs2_sel = io_IF_ID_inst[24:20]; // @[Decode.scala 314:23]
  assign reg_file_io_writeData = io_MEM_WB_ctrl_csrWen ? $signed(io_MEM_WB_csr_rdata_i) : $signed(io_writeback_write_data); // @[Decode.scala 317:25]
  assign imm_generation_io_instruction = io_IF_ID_inst; // @[Decode.scala 321:33]
  assign imm_generation_io_pc = io_IF_ID_pc; // @[Decode.scala 322:24]
  assign structuralDetector_io_rs1_sel = io_IF_ID_inst[19:15]; // @[Decode.scala 330:33]
  assign structuralDetector_io_rs2_sel = io_IF_ID_inst[24:20]; // @[Decode.scala 331:33]
  assign structuralDetector_io_MEM_WB_regWr = io_MEM_WB_ctrl_regWr; // @[Decode.scala 333:38]
  assign structuralDetector_io_MEM_WB_REGRD = io_MEM_WB_rd_sel; // @[Decode.scala 332:38]
  assign structuralDetector_io_inst_op_in = io_IF_ID_inst[6:0]; // @[Decode.scala 334:36]
  assign jalr_io_input_a = _T_17 ? $signed(reg_file_io_rs1) : $signed(_GEN_19); // @[Decode.scala 219:21 Decode.scala 223:21 Decode.scala 227:21 Decode.scala 231:21 Decode.scala 235:21 Decode.scala 239:21 Decode.scala 248:23 Decode.scala 252:21 Decode.scala 256:21 Decode.scala 260:21 Decode.scala 264:21 Decode.scala 269:23]
  assign jalr_io_input_b = imm_generation_io_i_imm; // @[Decode.scala 297:19]
  assign csrRegFile_clock = clock;
  assign csrRegFile_reset = reset;
  assign csrRegFile_io_i_csr_mtvec_init = io_fetch_csr_mtvec_init; // @[Decode.scala 116:34]
  assign csrRegFile_io_i_csr_access = control_io_csr_we_o; // @[Decode.scala 117:30]
  assign csrRegFile_io_i_csr_addr = io_IF_ID_inst[31:20]; // @[Decode.scala 121:28]
  assign csrRegFile_io_i_csr_wdata = _T_65 ? {{27'd0}, io_IF_ID_inst[19:15]} : _GEN_48; // @[Decode.scala 118:29]
  assign csrRegFile_io_i_csr_op = control_io_csr_op_o; // @[Decode.scala 119:26]
  assign csrRegFile_io_i_csr_op_en = csrControlUnit_io_csr_op_en_o; // @[Decode.scala 120:29]
  assign csrRegFile_io_i_irq_external = io_irq_external_i; // @[Decode.scala 124:32]
  assign csrRegFile_io_i_pc_if = io_fetch_csr_if_pc; // @[Decode.scala 126:25]
  assign csrRegFile_io_i_csr_save_if = io_fetch_csr_save_if; // @[Decode.scala 129:31]
  assign csrRegFile_io_i_csr_restore_mret = _T_4 & _T_6; // @[Decode.scala 132:36]
  assign csrRegFile_io_i_csr_save_cause = io_fetch_csr_save_cause_i; // @[Decode.scala 135:34]
  assign csrRegFile_io_i_csr_mcause = io_fetch_exc_cause_i; // @[Decode.scala 134:30]
  assign csrControlUnit_io_reg_wr_in_execute = io_ID_EX_ctrl_regWr; // @[Decode.scala 156:39]
  assign csrControlUnit_io_rd_sel_in_execute = io_ID_EX_rd_sel; // @[Decode.scala 157:39]
  assign csrControlUnit_io_csr_wr_in_execute = io_ID_EX_ctrl_csrWen; // @[Decode.scala 167:39]
  assign csrControlUnit_io_reg_wr_in_memory = io_EX_MEM_ctrl_regWr; // @[Decode.scala 158:38]
  assign csrControlUnit_io_rd_sel_in_memory = io_EX_MEM_rd_sel; // @[Decode.scala 159:38]
  assign csrControlUnit_io_csr_wr_in_memory = io_EX_MEM_ctrl_csrWen; // @[Decode.scala 168:38]
  assign csrControlUnit_io_reg_wr_in_writeback = io_MEM_WB_ctrl_regWr; // @[Decode.scala 160:41]
  assign csrControlUnit_io_rd_sel_in_writeback = io_MEM_WB_rd_sel; // @[Decode.scala 161:41]
  assign csrControlUnit_io_csr_wr_in_writeback = io_MEM_WB_ctrl_csrWen; // @[Decode.scala 169:41]
  assign csrControlUnit_io_rs1_sel_in_decode = io_IF_ID_inst[19:15]; // @[Decode.scala 162:39]
  assign csrControlUnit_io_csr_inst_in_decode = control_io_csr_we_o; // @[Decode.scala 163:40]
  assign csrControlUnit_io_csr_imm_inst_in_decode = control_io_csr_imm_type; // @[Decode.scala 170:44]
  assign csrControlUnit_io_load_inst_in_execute = io_ID_EX_ctrl_MemRd; // @[Decode.scala 164:42]
  assign csrControlUnit_io_load_inst_in_memory = io_EX_MEM_ctrl_MemRd; // @[Decode.scala 165:41]
  assign csrControlUnit_io_dccm_rvalid_i = io_dccm_rvalid_i; // @[Decode.scala 166:35]
endmodule
module ForwardUnit(
  input  [4:0] io_EX_MEM_REGRD,
  input  [4:0] io_MEM_WB_REGRD,
  input  [4:0] io_ID_EX_REGRS1,
  input  [4:0] io_ID_EX_REGRS2,
  input  [6:0] io_ID_EX_inst_op,
  input        io_EX_MEM_REGWR,
  input        io_MEM_WB_REGWR,
  output [1:0] io_forward_a,
  output [1:0] io_forward_b
);
  wire  _T_1 = io_EX_MEM_REGRD != 5'h0; // @[ForwardUnit.scala 23:56]
  wire  _T_2 = io_EX_MEM_REGWR & _T_1; // @[ForwardUnit.scala 23:37]
  wire  _T_3 = io_EX_MEM_REGRD == io_ID_EX_REGRS1; // @[ForwardUnit.scala 23:91]
  wire  _T_4 = _T_2 & _T_3; // @[ForwardUnit.scala 23:71]
  wire  _T_5 = io_EX_MEM_REGRD == io_ID_EX_REGRS2; // @[ForwardUnit.scala 23:132]
  wire  _T_6 = _T_4 & _T_5; // @[ForwardUnit.scala 23:112]
  wire  _T_7 = io_ID_EX_inst_op != 7'h37; // @[ForwardUnit.scala 23:173]
  wire  _T_8 = _T_6 & _T_7; // @[ForwardUnit.scala 23:153]
  wire  _T_13 = _T_2 & _T_5; // @[ForwardUnit.scala 31:78]
  wire  _T_15 = _T_13 & _T_7; // @[ForwardUnit.scala 31:119]
  wire  _T_22 = _T_4 & _T_7; // @[ForwardUnit.scala 34:119]
  wire  _GEN_2 = _T_15 ? 1'h0 : _T_22; // @[ForwardUnit.scala 31:157]
  wire  _GEN_3 = _T_8 | _GEN_2; // @[ForwardUnit.scala 23:191]
  wire  _GEN_4 = _T_8 | _T_15; // @[ForwardUnit.scala 23:191]
  wire  _T_24 = io_MEM_WB_REGRD != 5'h0; // @[ForwardUnit.scala 42:56]
  wire  _T_25 = io_MEM_WB_REGWR & _T_24; // @[ForwardUnit.scala 42:37]
  wire  _T_33 = ~_T_6; // @[ForwardUnit.scala 42:74]
  wire  _T_34 = _T_25 & _T_33; // @[ForwardUnit.scala 42:71]
  wire  _T_35 = io_MEM_WB_REGRD == io_ID_EX_REGRS1; // @[ForwardUnit.scala 42:244]
  wire  _T_36 = _T_34 & _T_35; // @[ForwardUnit.scala 42:224]
  wire  _T_37 = io_MEM_WB_REGRD == io_ID_EX_REGRS2; // @[ForwardUnit.scala 42:285]
  wire  _T_38 = _T_36 & _T_37; // @[ForwardUnit.scala 42:265]
  wire  _T_40 = _T_38 & _T_7; // @[ForwardUnit.scala 42:306]
  wire  _T_49 = ~_T_13; // @[ForwardUnit.scala 45:81]
  wire  _T_50 = _T_25 & _T_49; // @[ForwardUnit.scala 45:78]
  wire  _T_52 = _T_50 & _T_37; // @[ForwardUnit.scala 45:190]
  wire  _T_54 = _T_52 & _T_7; // @[ForwardUnit.scala 45:231]
  wire  _T_63 = ~_T_4; // @[ForwardUnit.scala 48:81]
  wire  _T_64 = _T_25 & _T_63; // @[ForwardUnit.scala 48:78]
  wire  _T_66 = _T_64 & _T_35; // @[ForwardUnit.scala 48:191]
  wire  _T_68 = _T_66 & _T_7; // @[ForwardUnit.scala 48:232]
  wire [1:0] _GEN_5 = _T_68 ? 2'h2 : {{1'd0}, _GEN_3}; // @[ForwardUnit.scala 48:270]
  wire [1:0] _GEN_6 = _T_54 ? 2'h2 : {{1'd0}, _GEN_4}; // @[ForwardUnit.scala 45:269]
  wire [1:0] _GEN_7 = _T_54 ? {{1'd0}, _GEN_3} : _GEN_5; // @[ForwardUnit.scala 45:269]
  assign io_forward_a = _T_40 ? 2'h2 : _GEN_7; // @[ForwardUnit.scala 17:18 ForwardUnit.scala 29:22 ForwardUnit.scala 35:22 ForwardUnit.scala 43:22 ForwardUnit.scala 49:22]
  assign io_forward_b = _T_40 ? 2'h2 : _GEN_6; // @[ForwardUnit.scala 18:18 ForwardUnit.scala 30:22 ForwardUnit.scala 32:22 ForwardUnit.scala 44:22 ForwardUnit.scala 46:22]
endmodule
module Alu(
  input  [31:0] io_oper_a,
  input  [31:0] io_oper_b,
  input  [4:0]  io_aluCtrl,
  output [31:0] io_output
);
  wire  _T = io_aluCtrl == 5'h0; // @[Alu.scala 17:21]
  wire [31:0] _T_3 = $signed(io_oper_a) + $signed(io_oper_b); // @[Alu.scala 19:32]
  wire  _T_4 = io_aluCtrl == 5'h1; // @[Alu.scala 20:28]
  wire [62:0] _GEN_31 = {{31{io_oper_a[31]}},io_oper_a}; // @[Alu.scala 23:32]
  wire [62:0] _T_6 = $signed(_GEN_31) << io_oper_b[4:0]; // @[Alu.scala 23:32]
  wire  _T_7 = io_aluCtrl == 5'h2; // @[Alu.scala 24:28]
  wire  _T_8 = $signed(io_oper_a) < $signed(io_oper_b); // @[Alu.scala 26:24]
  wire [1:0] _GEN_0 = _T_8 ? $signed(2'sh1) : $signed(2'sh0); // @[Alu.scala 26:37]
  wire  _T_9 = io_aluCtrl == 5'h3; // @[Alu.scala 31:28]
  wire  _T_10 = io_aluCtrl == 5'h16; // @[Alu.scala 31:57]
  wire  _T_11 = _T_9 | _T_10; // @[Alu.scala 31:43]
  wire  _T_14 = io_oper_a < io_oper_b; // @[Alu.scala 33:31]
  wire [1:0] _GEN_1 = _T_14 ? $signed(2'sh1) : $signed(2'sh0); // @[Alu.scala 33:51]
  wire  _T_15 = io_aluCtrl == 5'h4; // @[Alu.scala 38:28]
  wire [31:0] _T_17 = $signed(io_oper_a) ^ $signed(io_oper_b); // @[Alu.scala 40:32]
  wire  _T_18 = io_aluCtrl == 5'h5; // @[Alu.scala 41:28]
  wire  _T_19 = io_aluCtrl == 5'hd; // @[Alu.scala 41:57]
  wire  _T_20 = _T_18 | _T_19; // @[Alu.scala 41:43]
  wire [31:0] _T_22 = $signed(io_oper_a) >>> io_oper_b[4:0]; // @[Alu.scala 49:32]
  wire  _T_23 = io_aluCtrl == 5'h6; // @[Alu.scala 50:28]
  wire [31:0] _T_25 = $signed(io_oper_a) | $signed(io_oper_b); // @[Alu.scala 52:32]
  wire  _T_26 = io_aluCtrl == 5'h7; // @[Alu.scala 53:28]
  wire [31:0] _T_28 = $signed(io_oper_a) & $signed(io_oper_b); // @[Alu.scala 55:32]
  wire  _T_29 = io_aluCtrl == 5'h8; // @[Alu.scala 56:28]
  wire [31:0] _T_32 = $signed(io_oper_a) - $signed(io_oper_b); // @[Alu.scala 58:32]
  wire  _T_33 = io_aluCtrl == 5'h10; // @[Alu.scala 60:28]
  wire  _T_34 = $signed(io_oper_a) == $signed(io_oper_b); // @[Alu.scala 62:24]
  wire [1:0] _GEN_2 = _T_34 ? $signed(2'sh1) : $signed(2'sh0); // @[Alu.scala 62:39]
  wire  _T_35 = io_aluCtrl == 5'h11; // @[Alu.scala 67:28]
  wire  _T_37 = ~_T_34; // @[Alu.scala 69:14]
  wire [1:0] _GEN_3 = _T_37 ? $signed(2'sh1) : $signed(2'sh0); // @[Alu.scala 69:42]
  wire  _T_38 = io_aluCtrl == 5'h14; // @[Alu.scala 74:28]
  wire  _T_40 = io_aluCtrl == 5'h15; // @[Alu.scala 81:28]
  wire  _T_41 = $signed(io_oper_a) >= $signed(io_oper_b); // @[Alu.scala 83:24]
  wire [1:0] _GEN_5 = _T_41 ? $signed(2'sh1) : $signed(2'sh0); // @[Alu.scala 83:38]
  wire  _T_42 = io_aluCtrl == 5'h17; // @[Alu.scala 88:28]
  wire  _T_45 = io_oper_a >= io_oper_b; // @[Alu.scala 90:31]
  wire [1:0] _GEN_6 = _T_45 ? $signed(2'sh1) : $signed(2'sh0); // @[Alu.scala 90:52]
  wire  _T_46 = io_aluCtrl == 5'h1f; // @[Alu.scala 95:28]
  wire  _T_47 = io_aluCtrl == 5'hb; // @[Alu.scala 99:26]
  wire  _T_48 = io_aluCtrl == 5'h1e; // @[Alu.scala 104:26]
  wire [63:0] _T_49 = $signed(io_oper_a) * $signed(io_oper_b); // @[Alu.scala 106:32]
  wire  _T_50 = io_aluCtrl == 5'h1d; // @[Alu.scala 108:26]
  wire [32:0] _T_51 = $signed(io_oper_a) / $signed(io_oper_b); // @[Alu.scala 110:32]
  wire  _T_52 = io_aluCtrl == 5'h1b; // @[Alu.scala 112:26]
  wire [31:0] _T_56 = io_oper_a / io_oper_b; // @[Alu.scala 114:64]
  wire  _T_57 = io_aluCtrl == 5'h1a; // @[Alu.scala 116:26]
  wire [31:0] _GEN_4 = $signed(io_oper_a) % $signed(io_oper_b); // @[Alu.scala 118:32]
  wire [31:0] _T_58 = _GEN_4[31:0]; // @[Alu.scala 118:32]
  wire  _T_59 = io_aluCtrl == 5'h19; // @[Alu.scala 120:26]
  wire [31:0] _T_63 = io_oper_a % io_oper_b; // @[Alu.scala 122:64]
  wire  _T_64 = io_aluCtrl == 5'h18; // @[Alu.scala 124:26]
  wire [31:0] _T_67 = _T_49[63:32]; // @[Alu.scala 127:51]
  wire  _T_68 = io_aluCtrl == 5'h13; // @[Alu.scala 129:26]
  wire [32:0] _T_70 = {1'b0,$signed(io_oper_b)}; // @[Alu.scala 131:49]
  wire [32:0] _GEN_32 = {{1{io_oper_a[31]}},io_oper_a}; // @[Alu.scala 131:49]
  wire [64:0] _T_71 = $signed(_GEN_32) * $signed(_T_70); // @[Alu.scala 131:49]
  wire [63:0] _T_73 = _T_71[63:0]; // @[Alu.scala 131:49]
  wire [31:0] _T_75 = _T_73[63:32]; // @[Alu.scala 132:53]
  wire [63:0] _T_79 = io_oper_a * io_oper_b; // @[Alu.scala 136:55]
  wire [31:0] _T_81 = _T_79[63:32]; // @[Alu.scala 137:52]
  wire [31:0] _GEN_8 = _T_68 ? $signed(_T_75) : $signed(_T_81); // @[Alu.scala 130:5]
  wire [31:0] _GEN_9 = _T_64 ? $signed(_T_67) : $signed(_GEN_8); // @[Alu.scala 125:5]
  wire [31:0] _GEN_10 = _T_59 ? $signed(_T_63) : $signed(_GEN_9); // @[Alu.scala 121:5]
  wire [31:0] _GEN_11 = _T_57 ? $signed(_T_58) : $signed(_GEN_10); // @[Alu.scala 117:5]
  wire [31:0] _GEN_12 = _T_52 ? $signed(_T_56) : $signed(_GEN_11); // @[Alu.scala 113:5]
  wire [32:0] _GEN_13 = _T_50 ? $signed(_T_51) : $signed({{1{_GEN_12[31]}},_GEN_12}); // @[Alu.scala 109:5]
  wire [63:0] _GEN_14 = _T_48 ? $signed(_T_49) : $signed({{31{_GEN_13[32]}},_GEN_13}); // @[Alu.scala 105:5]
  wire [63:0] _GEN_15 = _T_47 ? $signed({{32{io_oper_b[31]}},io_oper_b}) : $signed(_GEN_14); // @[Alu.scala 100:5]
  wire [63:0] _GEN_16 = _T_46 ? $signed({{32{io_oper_a[31]}},io_oper_a}) : $signed(_GEN_15); // @[Alu.scala 95:44]
  wire [63:0] _GEN_17 = _T_42 ? $signed({{62{_GEN_6[1]}},_GEN_6}) : $signed(_GEN_16); // @[Alu.scala 88:44]
  wire [63:0] _GEN_18 = _T_40 ? $signed({{62{_GEN_5[1]}},_GEN_5}) : $signed(_GEN_17); // @[Alu.scala 81:44]
  wire [63:0] _GEN_19 = _T_38 ? $signed({{62{_GEN_0[1]}},_GEN_0}) : $signed(_GEN_18); // @[Alu.scala 74:44]
  wire [63:0] _GEN_20 = _T_35 ? $signed({{62{_GEN_3[1]}},_GEN_3}) : $signed(_GEN_19); // @[Alu.scala 67:44]
  wire [63:0] _GEN_21 = _T_33 ? $signed({{62{_GEN_2[1]}},_GEN_2}) : $signed(_GEN_20); // @[Alu.scala 60:44]
  wire [63:0] _GEN_22 = _T_29 ? $signed({{32{_T_32[31]}},_T_32}) : $signed(_GEN_21); // @[Alu.scala 56:44]
  wire [63:0] _GEN_23 = _T_26 ? $signed({{32{_T_28[31]}},_T_28}) : $signed(_GEN_22); // @[Alu.scala 53:44]
  wire [63:0] _GEN_24 = _T_23 ? $signed({{32{_T_25[31]}},_T_25}) : $signed(_GEN_23); // @[Alu.scala 50:44]
  wire [63:0] _GEN_25 = _T_20 ? $signed({{32{_T_22[31]}},_T_22}) : $signed(_GEN_24); // @[Alu.scala 41:73]
  wire [63:0] _GEN_26 = _T_15 ? $signed({{32{_T_17[31]}},_T_17}) : $signed(_GEN_25); // @[Alu.scala 38:44]
  wire [63:0] _GEN_27 = _T_11 ? $signed({{62{_GEN_1[1]}},_GEN_1}) : $signed(_GEN_26); // @[Alu.scala 31:73]
  wire [63:0] _GEN_28 = _T_7 ? $signed({{62{_GEN_0[1]}},_GEN_0}) : $signed(_GEN_27); // @[Alu.scala 24:44]
  wire [63:0] _GEN_29 = _T_4 ? $signed({{1{_T_6[62]}},_T_6}) : $signed(_GEN_28); // @[Alu.scala 20:44]
  wire [63:0] _GEN_30 = _T ? $signed({{32{_T_3[31]}},_T_3}) : $signed(_GEN_29); // @[Alu.scala 17:37]
  assign io_output = _GEN_30[31:0]; // @[Alu.scala 19:19 Alu.scala 23:19 Alu.scala 27:23 Alu.scala 29:23 Alu.scala 34:23 Alu.scala 36:23 Alu.scala 40:19 Alu.scala 49:19 Alu.scala 52:19 Alu.scala 55:19 Alu.scala 58:19 Alu.scala 63:23 Alu.scala 65:23 Alu.scala 70:23 Alu.scala 72:23 Alu.scala 77:23 Alu.scala 79:23 Alu.scala 84:23 Alu.scala 86:23 Alu.scala 91:23 Alu.scala 93:23 Alu.scala 97:19 Alu.scala 101:19 Alu.scala 106:19 Alu.scala 110:19 Alu.scala 114:19 Alu.scala 118:19 Alu.scala 122:19 Alu.scala 127:19 Alu.scala 132:19 Alu.scala 137:19]
endmodule
module AluControl(
  input  [3:0] io_aluOp,
  input  [6:0] io_func7,
  input  [2:0] io_func3,
  output [4:0] io_output
);
  wire  _T = io_func3 == 3'h0; // @[ALU_operations_Sel.scala 37:35]
  wire  _T_1 = io_aluOp == 4'h0; // @[ALU_operations_Sel.scala 37:57]
  wire  _T_2 = _T & _T_1; // @[ALU_operations_Sel.scala 37:49]
  wire  _T_3 = io_func7 == 7'h0; // @[ALU_operations_Sel.scala 37:80]
  wire  _T_4 = _T_2 & _T_3; // @[ALU_operations_Sel.scala 37:71]
  wire  _T_6 = io_aluOp == 4'h1; // @[ALU_operations_Sel.scala 12:57]
  wire  _T_7 = _T & _T_6; // @[ALU_operations_Sel.scala 12:49]
  wire  _T_8 = _T_4 | _T_7; // @[AluControl.scala 19:20]
  wire  _T_9 = io_func3 == 3'h2; // @[ALU_operations_Sel.scala 33:35]
  wire  _T_10 = io_aluOp == 4'h5; // @[ALU_operations_Sel.scala 33:57]
  wire  _T_11 = _T_9 & _T_10; // @[ALU_operations_Sel.scala 33:49]
  wire  _T_12 = _T_8 | _T_11; // @[AluControl.scala 19:34]
  wire  _T_15 = _T & _T_10; // @[ALU_operations_Sel.scala 31:49]
  wire  _T_16 = _T_12 | _T_15; // @[AluControl.scala 19:46]
  wire  _T_17 = io_func3 == 3'h1; // @[ALU_operations_Sel.scala 32:35]
  wire  _T_19 = _T_17 & _T_10; // @[ALU_operations_Sel.scala 32:49]
  wire  _T_20 = _T_16 | _T_19; // @[AluControl.scala 19:58]
  wire  _T_22 = io_aluOp == 4'h4; // @[ALU_operations_Sel.scala 27:57]
  wire  _T_23 = _T_9 & _T_22; // @[ALU_operations_Sel.scala 27:49]
  wire  _T_24 = _T_20 | _T_23; // @[AluControl.scala 19:70]
  wire  _T_27 = _T & _T_22; // @[ALU_operations_Sel.scala 25:49]
  wire  _T_28 = _T_24 | _T_27; // @[AluControl.scala 19:82]
  wire  _T_31 = _T_17 & _T_22; // @[ALU_operations_Sel.scala 26:49]
  wire  _T_32 = _T_28 | _T_31; // @[AluControl.scala 19:94]
  wire  _T_33 = io_func3 == 3'h4; // @[ALU_operations_Sel.scala 28:35]
  wire  _T_35 = _T_33 & _T_22; // @[ALU_operations_Sel.scala 28:49]
  wire  _T_36 = _T_32 | _T_35; // @[AluControl.scala 19:106]
  wire  _T_37 = io_func3 == 3'h5; // @[ALU_operations_Sel.scala 29:35]
  wire  _T_39 = _T_37 & _T_22; // @[ALU_operations_Sel.scala 29:49]
  wire  _T_40 = _T_36 | _T_39; // @[AluControl.scala 19:119]
  wire  _T_41 = io_func3 == 3'h6; // @[ALU_operations_Sel.scala 30:35]
  wire  _T_43 = _T_41 & _T_22; // @[ALU_operations_Sel.scala 30:49]
  wire  _T_44 = _T_40 | _T_43; // @[AluControl.scala 19:132]
  wire  _T_45 = io_aluOp == 4'h6; // @[ALU_operations_Sel.scala 10:35]
  wire  _T_46 = _T_44 | _T_45; // @[AluControl.scala 19:145]
  wire  _T_47 = io_aluOp == 4'h7; // @[ALU_operations_Sel.scala 11:35]
  wire  _T_48 = _T_46 | _T_47; // @[AluControl.scala 19:158]
  wire  _T_51 = _T_17 & _T_1; // @[ALU_operations_Sel.scala 39:49]
  wire  _T_53 = _T_51 & _T_3; // @[ALU_operations_Sel.scala 39:71]
  wire  _T_56 = _T_17 & _T_6; // @[ALU_operations_Sel.scala 34:49]
  wire  _T_58 = _T_56 & _T_3; // @[ALU_operations_Sel.scala 34:71]
  wire  _T_59 = _T_53 | _T_58; // @[AluControl.scala 21:25]
  wire  _T_62 = _T_9 & _T_1; // @[ALU_operations_Sel.scala 40:49]
  wire  _T_64 = _T_62 & _T_3; // @[ALU_operations_Sel.scala 40:71]
  wire  _T_67 = _T_9 & _T_6; // @[ALU_operations_Sel.scala 13:49]
  wire  _T_68 = _T_64 | _T_67; // @[AluControl.scala 22:25]
  wire  _T_69 = io_func3 == 3'h3; // @[ALU_operations_Sel.scala 41:35]
  wire  _T_71 = _T_69 & _T_1; // @[ALU_operations_Sel.scala 41:49]
  wire  _T_73 = _T_71 & _T_3; // @[ALU_operations_Sel.scala 41:71]
  wire  _T_76 = _T_69 & _T_6; // @[ALU_operations_Sel.scala 14:49]
  wire  _T_77 = _T_73 | _T_76; // @[AluControl.scala 23:25]
  wire  _T_79 = io_aluOp == 4'h2; // @[ALU_operations_Sel.scala 22:57]
  wire  _T_80 = _T_41 & _T_79; // @[ALU_operations_Sel.scala 22:49]
  wire  _T_81 = _T_77 | _T_80; // @[AluControl.scala 23:40]
  wire  _T_84 = _T_33 & _T_1; // @[ALU_operations_Sel.scala 42:49]
  wire  _T_86 = _T_84 & _T_3; // @[ALU_operations_Sel.scala 42:71]
  wire  _T_89 = _T_33 & _T_6; // @[ALU_operations_Sel.scala 15:49]
  wire  _T_90 = _T_86 | _T_89; // @[AluControl.scala 24:25]
  wire  _T_93 = _T_37 & _T_1; // @[ALU_operations_Sel.scala 43:49]
  wire  _T_95 = _T_93 & _T_3; // @[ALU_operations_Sel.scala 43:71]
  wire  _T_98 = _T_37 & _T_6; // @[ALU_operations_Sel.scala 35:49]
  wire  _T_100 = _T_98 & _T_3; // @[ALU_operations_Sel.scala 35:71]
  wire  _T_101 = _T_95 | _T_100; // @[AluControl.scala 25:25]
  wire  _T_105 = io_func7 == 7'h20; // @[ALU_operations_Sel.scala 44:80]
  wire  _T_106 = _T_93 & _T_105; // @[ALU_operations_Sel.scala 44:71]
  wire  _T_107 = _T_101 | _T_106; // @[AluControl.scala 25:39]
  wire  _T_112 = _T_98 & _T_105; // @[ALU_operations_Sel.scala 36:71]
  wire  _T_113 = _T_107 | _T_112; // @[AluControl.scala 25:52]
  wire  _T_116 = _T_41 & _T_1; // @[ALU_operations_Sel.scala 45:49]
  wire  _T_118 = _T_116 & _T_3; // @[ALU_operations_Sel.scala 45:71]
  wire  _T_121 = _T_41 & _T_6; // @[ALU_operations_Sel.scala 16:49]
  wire  _T_122 = _T_118 | _T_121; // @[AluControl.scala 26:25]
  wire  _T_123 = io_func3 == 3'h7; // @[ALU_operations_Sel.scala 46:35]
  wire  _T_125 = _T_123 & _T_1; // @[ALU_operations_Sel.scala 46:49]
  wire  _T_127 = _T_125 & _T_3; // @[ALU_operations_Sel.scala 46:71]
  wire  _T_130 = _T_123 & _T_6; // @[ALU_operations_Sel.scala 17:49]
  wire  _T_131 = _T_127 | _T_130; // @[AluControl.scala 27:25]
  wire  _T_136 = _T_2 & _T_105; // @[ALU_operations_Sel.scala 38:71]
  wire  _T_139 = _T & _T_79; // @[ALU_operations_Sel.scala 18:49]
  wire  _T_142 = _T_17 & _T_79; // @[ALU_operations_Sel.scala 19:49]
  wire  _T_145 = _T_33 & _T_79; // @[ALU_operations_Sel.scala 20:49]
  wire  _T_148 = _T_37 & _T_79; // @[ALU_operations_Sel.scala 21:49]
  wire  _T_151 = _T_123 & _T_79; // @[ALU_operations_Sel.scala 23:49]
  wire  _T_152 = io_aluOp == 4'h3; // @[ALU_operations_Sel.scala 9:35]
  wire  _T_155 = _T & _T_152; // @[ALU_operations_Sel.scala 24:49]
  wire  _T_156 = _T_152 | _T_155; // @[AluControl.scala 34:25]
  wire  _T_158 = io_aluOp == 4'h8; // @[ALU_operations_Sel.scala 55:57]
  wire  _T_159 = _T_17 & _T_158; // @[ALU_operations_Sel.scala 55:49]
  wire  _T_160 = _T_156 | _T_159; // @[AluControl.scala 34:39]
  wire  _T_163 = _T_9 & _T_158; // @[ALU_operations_Sel.scala 56:49]
  wire  _T_164 = _T_160 | _T_163; // @[AluControl.scala 34:54]
  wire  _T_167 = _T_69 & _T_158; // @[ALU_operations_Sel.scala 57:49]
  wire  _T_168 = _T_164 | _T_167; // @[AluControl.scala 34:69]
  wire  _T_171 = _T_37 & _T_158; // @[ALU_operations_Sel.scala 58:49]
  wire  _T_172 = _T_168 | _T_171; // @[AluControl.scala 34:84]
  wire  _T_175 = _T_41 & _T_158; // @[ALU_operations_Sel.scala 59:49]
  wire  _T_176 = _T_172 | _T_175; // @[AluControl.scala 34:100]
  wire  _T_179 = _T_123 & _T_158; // @[ALU_operations_Sel.scala 60:49]
  wire  _T_180 = _T_176 | _T_179; // @[AluControl.scala 34:116]
  wire  _T_182 = io_aluOp == 4'h9; // @[ALU_operations_Sel.scala 47:57]
  wire  _T_183 = _T & _T_182; // @[ALU_operations_Sel.scala 47:49]
  wire  _T_184 = io_func7 == 7'h1; // @[ALU_operations_Sel.scala 47:80]
  wire  _T_185 = _T_183 & _T_184; // @[ALU_operations_Sel.scala 47:71]
  wire  _T_188 = _T_33 & _T_182; // @[ALU_operations_Sel.scala 51:49]
  wire  _T_190 = _T_188 & _T_184; // @[ALU_operations_Sel.scala 51:71]
  wire  _T_193 = _T_37 & _T_182; // @[ALU_operations_Sel.scala 52:49]
  wire  _T_195 = _T_193 & _T_184; // @[ALU_operations_Sel.scala 52:71]
  wire  _T_198 = _T_41 & _T_182; // @[ALU_operations_Sel.scala 53:49]
  wire  _T_200 = _T_198 & _T_184; // @[ALU_operations_Sel.scala 53:71]
  wire  _T_203 = _T_123 & _T_182; // @[ALU_operations_Sel.scala 54:49]
  wire  _T_205 = _T_203 & _T_184; // @[ALU_operations_Sel.scala 54:71]
  wire  _T_208 = _T_17 & _T_182; // @[ALU_operations_Sel.scala 48:49]
  wire  _T_210 = _T_208 & _T_184; // @[ALU_operations_Sel.scala 48:71]
  wire  _T_213 = _T_9 & _T_182; // @[ALU_operations_Sel.scala 49:49]
  wire  _T_215 = _T_213 & _T_184; // @[ALU_operations_Sel.scala 49:71]
  wire [4:0] _GEN_1 = _T_215 ? 5'h13 : 5'h12; // @[AluControl.scala 41:29]
  wire [4:0] _GEN_2 = _T_210 ? 5'h18 : _GEN_1; // @[AluControl.scala 40:26]
  wire [4:0] _GEN_3 = _T_205 ? 5'h19 : _GEN_2; // @[AluControl.scala 39:26]
  wire [4:0] _GEN_4 = _T_200 ? 5'h1a : _GEN_3; // @[AluControl.scala 38:26]
  wire [4:0] _GEN_5 = _T_195 ? 5'h1b : _GEN_4; // @[AluControl.scala 37:26]
  wire [4:0] _GEN_6 = _T_190 ? 5'h1d : _GEN_5; // @[AluControl.scala 36:26]
  wire [4:0] _GEN_7 = _T_185 ? 5'h1e : _GEN_6; // @[AluControl.scala 35:26]
  wire [4:0] _GEN_8 = _T_180 ? 5'h1f : _GEN_7; // @[AluControl.scala 34:133]
  wire [4:0] _GEN_9 = _T_151 ? 5'h17 : _GEN_8; // @[AluControl.scala 33:26]
  wire [4:0] _GEN_10 = _T_148 ? 5'h15 : _GEN_9; // @[AluControl.scala 32:26]
  wire [4:0] _GEN_11 = _T_145 ? 5'h14 : _GEN_10; // @[AluControl.scala 31:26]
  wire [4:0] _GEN_12 = _T_142 ? 5'h11 : _GEN_11; // @[AluControl.scala 30:26]
  wire [4:0] _GEN_13 = _T_139 ? 5'h10 : _GEN_12; // @[AluControl.scala 29:26]
  wire [4:0] _GEN_14 = _T_136 ? 5'h8 : _GEN_13; // @[AluControl.scala 28:26]
  wire [4:0] _GEN_15 = _T_131 ? 5'h7 : _GEN_14; // @[AluControl.scala 27:40]
  wire [4:0] _GEN_16 = _T_122 ? 5'h6 : _GEN_15; // @[AluControl.scala 26:40]
  wire [4:0] _GEN_17 = _T_113 ? 5'h5 : _GEN_16; // @[AluControl.scala 25:67]
  wire [4:0] _GEN_18 = _T_90 ? 5'h4 : _GEN_17; // @[AluControl.scala 24:40]
  wire [4:0] _GEN_19 = _T_81 ? 5'h3 : _GEN_18; // @[AluControl.scala 23:55]
  wire [4:0] _GEN_20 = _T_68 ? 5'h2 : _GEN_19; // @[AluControl.scala 22:40]
  wire [4:0] _GEN_21 = _T_59 ? 5'h1 : _GEN_20; // @[AluControl.scala 21:40]
  assign io_output = _T_48 ? 5'h0 : _GEN_21; // @[AluControl.scala 20:17 AluControl.scala 21:52 AluControl.scala 22:52 AluControl.scala 23:67 AluControl.scala 24:52 AluControl.scala 25:79 AluControl.scala 26:52 AluControl.scala 27:52 AluControl.scala 28:38 AluControl.scala 29:38 AluControl.scala 30:38 AluControl.scala 31:38 AluControl.scala 32:38 AluControl.scala 33:38 AluControl.scala 34:145 AluControl.scala 35:38 AluControl.scala 36:38 AluControl.scala 37:38 AluControl.scala 38:38 AluControl.scala 39:38 AluControl.scala 40:38 AluControl.scala 41:41 AluControl.scala 42:40]
endmodule
module Execute(
  input  [4:0]  io_EX_MEM_rd_sel,
  input  [4:0]  io_MEM_WB_rd_sel,
  input  [4:0]  io_ID_EX_rs1_sel,
  input  [4:0]  io_ID_EX_rs2_sel,
  input         io_EX_MEM_ctrl_RegWr,
  input         io_EX_MEM_ctrl_csrWen,
  input         io_MEM_WB_ctrl_csrWen,
  input         io_MEM_WB_ctrl_RegWr,
  input  [1:0]  io_ID_EX_ctrl_OpA_sel,
  input         io_ID_EX_ctrl_OpB_sel,
  input  [31:0] io_ID_EX_pc4,
  input  [31:0] io_ID_EX_pc_out,
  input  [31:0] io_ID_EX_rs1,
  input  [31:0] io_ID_EX_rs2,
  input  [31:0] io_ID_EX_csr_data,
  input  [31:0] io_EX_MEM_alu_output,
  input  [31:0] io_EX_MEM_csr_rdata,
  input  [31:0] io_MEM_WB_csr_rdata,
  input  [31:0] io_writeback_write_data,
  input  [31:0] io_ID_EX_imm,
  input  [3:0]  io_ID_EX_ctrl_AluOp,
  input  [6:0]  io_ID_EX_func7,
  input  [6:0]  io_ID_EX_inst_op,
  input  [2:0]  io_ID_EX_func3,
  input  [4:0]  io_ID_EX_rd_sel,
  input         io_ID_EX_ctrl_MemWr,
  input         io_ID_EX_ctrl_MemRd,
  input         io_ID_EX_ctrl_RegWr,
  input         io_ID_EX_ctrl_CsrWen,
  input         io_ID_EX_ctrl_MemToReg,
  output [31:0] io_rs2_out,
  output [31:0] io_alu_output,
  output [4:0]  io_rd_sel_out,
  output        io_ctrl_MemWr_out,
  output        io_ctrl_MemRd_out,
  output        io_ctrl_RegWr_out,
  output        io_ctrl_CsrWe_out,
  output        io_ctrl_MemToReg_out,
  output [2:0]  io_func3_out,
  output [31:0] io_csr_data_o
);
  wire [4:0] forwardUnit_io_EX_MEM_REGRD; // @[Execute.scala 57:27]
  wire [4:0] forwardUnit_io_MEM_WB_REGRD; // @[Execute.scala 57:27]
  wire [4:0] forwardUnit_io_ID_EX_REGRS1; // @[Execute.scala 57:27]
  wire [4:0] forwardUnit_io_ID_EX_REGRS2; // @[Execute.scala 57:27]
  wire [6:0] forwardUnit_io_ID_EX_inst_op; // @[Execute.scala 57:27]
  wire  forwardUnit_io_EX_MEM_REGWR; // @[Execute.scala 57:27]
  wire  forwardUnit_io_MEM_WB_REGWR; // @[Execute.scala 57:27]
  wire [1:0] forwardUnit_io_forward_a; // @[Execute.scala 57:27]
  wire [1:0] forwardUnit_io_forward_b; // @[Execute.scala 57:27]
  wire [31:0] alu_io_oper_a; // @[Execute.scala 58:19]
  wire [31:0] alu_io_oper_b; // @[Execute.scala 58:19]
  wire [4:0] alu_io_aluCtrl; // @[Execute.scala 58:19]
  wire [31:0] alu_io_output; // @[Execute.scala 58:19]
  wire [3:0] alu_control_io_aluOp; // @[Execute.scala 59:27]
  wire [6:0] alu_control_io_func7; // @[Execute.scala 59:27]
  wire [2:0] alu_control_io_func3; // @[Execute.scala 59:27]
  wire [4:0] alu_control_io_output; // @[Execute.scala 59:27]
  wire  _T = io_ID_EX_ctrl_OpA_sel == 2'h2; // @[Execute.scala 71:31]
  wire  _T_1 = io_ID_EX_ctrl_OpA_sel == 2'h1; // @[Execute.scala 74:35]
  wire  _T_2 = forwardUnit_io_forward_a == 2'h0; // @[Execute.scala 79:35]
  wire  _T_3 = forwardUnit_io_forward_a == 2'h1; // @[Execute.scala 81:42]
  wire [31:0] _T_5 = io_EX_MEM_ctrl_csrWen ? $signed(io_EX_MEM_csr_rdata) : $signed(io_EX_MEM_alu_output); // @[Execute.scala 82:27]
  wire  _T_6 = forwardUnit_io_forward_a == 2'h2; // @[Execute.scala 83:42]
  wire [31:0] _T_8 = io_MEM_WB_ctrl_csrWen ? $signed(io_MEM_WB_csr_rdata) : $signed(io_writeback_write_data); // @[Execute.scala 84:27]
  wire [31:0] _GEN_0 = _T_6 ? $signed(_T_8) : $signed(io_ID_EX_rs1); // @[Execute.scala 83:55]
  wire [31:0] _GEN_1 = _T_3 ? $signed(_T_5) : $signed(_GEN_0); // @[Execute.scala 81:55]
  wire [31:0] _GEN_2 = _T_2 ? $signed(io_ID_EX_rs1) : $signed(_GEN_1); // @[Execute.scala 79:48]
  wire [31:0] _GEN_3 = _T_1 ? $signed(io_ID_EX_pc_out) : $signed(_GEN_2); // @[Execute.scala 75:4]
  wire  _T_10 = forwardUnit_io_forward_b == 2'h0; // @[Execute.scala 93:35]
  wire  _T_11 = forwardUnit_io_forward_b == 2'h1; // @[Execute.scala 95:42]
  wire  _T_14 = forwardUnit_io_forward_b == 2'h2; // @[Execute.scala 97:42]
  wire [31:0] _GEN_5 = _T_14 ? $signed(_T_8) : $signed(io_ID_EX_rs2); // @[Execute.scala 97:55]
  wire [31:0] _GEN_6 = _T_11 ? $signed(_T_5) : $signed(_GEN_5); // @[Execute.scala 95:55]
  wire [31:0] _GEN_7 = _T_10 ? $signed(io_ID_EX_rs2) : $signed(_GEN_6); // @[Execute.scala 93:48]
  ForwardUnit forwardUnit ( // @[Execute.scala 57:27]
    .io_EX_MEM_REGRD(forwardUnit_io_EX_MEM_REGRD),
    .io_MEM_WB_REGRD(forwardUnit_io_MEM_WB_REGRD),
    .io_ID_EX_REGRS1(forwardUnit_io_ID_EX_REGRS1),
    .io_ID_EX_REGRS2(forwardUnit_io_ID_EX_REGRS2),
    .io_ID_EX_inst_op(forwardUnit_io_ID_EX_inst_op),
    .io_EX_MEM_REGWR(forwardUnit_io_EX_MEM_REGWR),
    .io_MEM_WB_REGWR(forwardUnit_io_MEM_WB_REGWR),
    .io_forward_a(forwardUnit_io_forward_a),
    .io_forward_b(forwardUnit_io_forward_b)
  );
  Alu alu ( // @[Execute.scala 58:19]
    .io_oper_a(alu_io_oper_a),
    .io_oper_b(alu_io_oper_b),
    .io_aluCtrl(alu_io_aluCtrl),
    .io_output(alu_io_output)
  );
  AluControl alu_control ( // @[Execute.scala 59:27]
    .io_aluOp(alu_control_io_aluOp),
    .io_func7(alu_control_io_func7),
    .io_func3(alu_control_io_func3),
    .io_output(alu_control_io_output)
  );
  assign io_rs2_out = io_ID_EX_ctrl_OpB_sel ? $signed(_GEN_7) : $signed(_GEN_7); // @[Execute.scala 94:18 Execute.scala 96:18 Execute.scala 98:18 Execute.scala 100:18 Execute.scala 107:18 Execute.scala 110:18 Execute.scala 113:18 Execute.scala 116:18]
  assign io_alu_output = alu_io_output; // @[Execute.scala 130:17]
  assign io_rd_sel_out = io_ID_EX_rd_sel; // @[Execute.scala 133:17]
  assign io_ctrl_MemWr_out = io_ID_EX_ctrl_MemWr; // @[Execute.scala 137:21]
  assign io_ctrl_MemRd_out = io_ID_EX_ctrl_MemRd; // @[Execute.scala 138:21]
  assign io_ctrl_RegWr_out = io_ID_EX_ctrl_RegWr; // @[Execute.scala 139:21]
  assign io_ctrl_CsrWe_out = io_ID_EX_ctrl_CsrWen; // @[Execute.scala 140:21]
  assign io_ctrl_MemToReg_out = io_ID_EX_ctrl_MemToReg; // @[Execute.scala 141:24]
  assign io_func3_out = io_ID_EX_func3; // @[Execute.scala 135:16]
  assign io_csr_data_o = io_ID_EX_csr_data; // @[Execute.scala 144:17]
  assign forwardUnit_io_EX_MEM_REGRD = io_EX_MEM_rd_sel; // @[Execute.scala 63:31]
  assign forwardUnit_io_MEM_WB_REGRD = io_MEM_WB_rd_sel; // @[Execute.scala 64:31]
  assign forwardUnit_io_ID_EX_REGRS1 = io_ID_EX_rs1_sel; // @[Execute.scala 65:31]
  assign forwardUnit_io_ID_EX_REGRS2 = io_ID_EX_rs2_sel; // @[Execute.scala 66:31]
  assign forwardUnit_io_ID_EX_inst_op = io_ID_EX_inst_op; // @[Execute.scala 62:32]
  assign forwardUnit_io_EX_MEM_REGWR = io_EX_MEM_ctrl_RegWr; // @[Execute.scala 67:31]
  assign forwardUnit_io_MEM_WB_REGWR = io_MEM_WB_ctrl_RegWr; // @[Execute.scala 68:31]
  assign alu_io_oper_a = _T ? $signed(io_ID_EX_pc4) : $signed(_GEN_3); // @[Execute.scala 72:19 Execute.scala 76:21 Execute.scala 80:21 Execute.scala 82:21 Execute.scala 84:21 Execute.scala 86:21]
  assign alu_io_oper_b = io_ID_EX_ctrl_OpB_sel ? $signed(io_ID_EX_imm) : $signed(_GEN_7); // @[Execute.scala 92:19 Execute.scala 106:21 Execute.scala 109:21 Execute.scala 112:21 Execute.scala 115:21]
  assign alu_io_aluCtrl = alu_control_io_output; // @[Execute.scala 127:18]
  assign alu_control_io_aluOp = io_ID_EX_ctrl_AluOp; // @[Execute.scala 121:24]
  assign alu_control_io_func7 = io_ID_EX_func7; // @[Execute.scala 122:24]
  assign alu_control_io_func3 = io_ID_EX_func3; // @[Execute.scala 123:24]
endmodule
module Load_unit(
  input  [2:0]  io_func3,
  input  [1:0]  io_data_offset,
  input  [31:0] io_memData,
  output [31:0] io_LoadData
);
  wire [7:0] lb = io_memData[7:0]; // @[Load_unit.scala 13:24]
  wire [15:0] lh = io_memData[15:0]; // @[Load_unit.scala 14:24]
  wire  _T = io_func3 == 3'h0; // @[Load_unit.scala 26:23]
  wire  _T_1 = io_data_offset == 2'h0; // @[Load_unit.scala 28:33]
  wire [23:0] _T_4 = io_memData[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_7 = {_T_4,lb}; // @[Load_unit.scala 30:76]
  wire  _T_8 = io_data_offset == 2'h1; // @[Load_unit.scala 31:40]
  wire [23:0] _T_11 = io_memData[15] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_14 = {_T_11,io_memData[15:8]}; // @[Load_unit.scala 33:85]
  wire  _T_15 = io_data_offset == 2'h2; // @[Load_unit.scala 34:40]
  wire [23:0] _T_18 = io_memData[23] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_21 = {_T_18,io_memData[23:16]}; // @[Load_unit.scala 36:86]
  wire [23:0] _T_25 = io_memData[31] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_28 = {_T_25,io_memData[31:24]}; // @[Load_unit.scala 39:86]
  wire [31:0] _GEN_1 = _T_15 ? $signed(_T_21) : $signed(_T_28); // @[Load_unit.scala 34:53]
  wire [31:0] _GEN_2 = _T_8 ? $signed(_T_14) : $signed(_GEN_1); // @[Load_unit.scala 31:53]
  wire [31:0] _GEN_3 = _T_1 ? $signed(_T_7) : $signed(_GEN_2); // @[Load_unit.scala 28:46]
  wire  _T_29 = io_func3 == 3'h1; // @[Load_unit.scala 44:30]
  wire [15:0] _T_33 = io_memData[15] ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_36 = {_T_33,lh}; // @[Load_unit.scala 48:78]
  wire [15:0] _T_40 = io_memData[23] ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_43 = {_T_40,io_memData[23:8]}; // @[Load_unit.scala 51:85]
  wire [15:0] _T_47 = io_memData[31] ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_50 = {_T_47,io_memData[31:16]}; // @[Load_unit.scala 54:86]
  wire [31:0] _T_55 = {24'h0,io_memData[31:24]}; // @[Load_unit.scala 63:75]
  wire [31:0] _GEN_5 = _T_15 ? $signed(_T_50) : $signed(_T_55); // @[Load_unit.scala 52:53]
  wire [31:0] _GEN_6 = _T_8 ? $signed(_T_43) : $signed(_GEN_5); // @[Load_unit.scala 49:53]
  wire [31:0] _GEN_7 = _T_1 ? $signed(_T_36) : $signed(_GEN_6); // @[Load_unit.scala 46:46]
  wire  _T_56 = io_func3 == 3'h6; // @[Load_unit.scala 68:30]
  wire  _T_57 = io_func3 == 3'h4; // @[Load_unit.scala 74:30]
  wire [31:0] _T_62 = {24'h0,lb}; // @[Load_unit.scala 78:66]
  wire [31:0] _T_67 = {24'h0,io_memData[15:8]}; // @[Load_unit.scala 81:74]
  wire [31:0] _T_72 = {24'h0,io_memData[23:16]}; // @[Load_unit.scala 84:75]
  wire [31:0] _GEN_9 = _T_15 ? $signed(_T_72) : $signed(_T_55); // @[Load_unit.scala 82:53]
  wire [31:0] _GEN_10 = _T_8 ? $signed(_T_67) : $signed(_GEN_9); // @[Load_unit.scala 79:53]
  wire [31:0] _GEN_11 = _T_1 ? $signed(_T_62) : $signed(_GEN_10); // @[Load_unit.scala 76:46]
  wire  _T_78 = io_func3 == 3'h5; // @[Load_unit.scala 92:30]
  wire [31:0] _T_83 = {16'h0,lh}; // @[Load_unit.scala 96:68]
  wire [31:0] _T_88 = {16'h0,io_memData[23:8]}; // @[Load_unit.scala 99:74]
  wire [31:0] _T_93 = {16'h0,io_memData[31:16]}; // @[Load_unit.scala 102:75]
  wire [31:0] _GEN_13 = _T_15 ? $signed(_T_93) : $signed(_T_55); // @[Load_unit.scala 100:53]
  wire [31:0] _GEN_14 = _T_8 ? $signed(_T_88) : $signed(_GEN_13); // @[Load_unit.scala 97:53]
  wire [31:0] _GEN_15 = _T_1 ? $signed(_T_83) : $signed(_GEN_14); // @[Load_unit.scala 94:46]
  wire [31:0] _T_107 = {8'h0,io_memData[31:8]}; // @[Load_unit.scala 130:73]
  wire [31:0] _GEN_18 = _T_8 ? $signed(_T_107) : $signed(_GEN_13); // @[Load_unit.scala 121:53]
  wire [31:0] _GEN_19 = _T_1 ? $signed(io_memData) : $signed(_GEN_18); // @[Load_unit.scala 118:46]
  wire [31:0] _GEN_21 = _T_78 ? $signed(_GEN_15) : $signed(_GEN_19); // @[Load_unit.scala 92:44]
  wire [31:0] _GEN_22 = _T_57 ? $signed(_GEN_11) : $signed(_GEN_21); // @[Load_unit.scala 74:44]
  wire [31:0] _GEN_23 = _T_56 ? $signed(io_memData) : $signed(_GEN_22); // @[Load_unit.scala 68:44]
  wire [31:0] _GEN_24 = _T_29 ? $signed(_GEN_7) : $signed(_GEN_23); // @[Load_unit.scala 44:44]
  assign io_LoadData = _T ? $signed(_GEN_3) : $signed(_GEN_24); // @[Load_unit.scala 30:29 Load_unit.scala 33:29 Load_unit.scala 36:29 Load_unit.scala 39:29 Load_unit.scala 48:29 Load_unit.scala 51:29 Load_unit.scala 54:29 Load_unit.scala 63:29 Load_unit.scala 73:25 Load_unit.scala 78:29 Load_unit.scala 81:29 Load_unit.scala 84:29 Load_unit.scala 87:29 Load_unit.scala 96:29 Load_unit.scala 99:29 Load_unit.scala 102:29 Load_unit.scala 111:29 Load_unit.scala 120:29 Load_unit.scala 130:29 Load_unit.scala 137:29 Load_unit.scala 144:29]
endmodule
module MemoryStage(
  input  [31:0] io_EX_MEM_alu_output,
  input  [4:0]  io_EX_MEM_rd_sel,
  input         io_EX_MEM_RegWr,
  input         io_EX_MEM_CsrWe,
  input         io_EX_MEM_MemRd,
  input         io_EX_MEM_MemToReg,
  input         io_EX_MEM_MemWr,
  input  [31:0] io_EX_MEM_rs2,
  input  [2:0]  io_func3,
  input  [31:0] io_EX_MEM_csr_data,
  input         io_data_gnt_i,
  input         io_data_rvalid_i,
  input  [31:0] io_data_rdata_i,
  output        io_data_req_o,
  output        io_data_be_o_0,
  output        io_data_be_o_1,
  output        io_data_be_o_2,
  output        io_data_be_o_3,
  output        io_ctrl_MemWr_out,
  output [7:0]  io_data_wdata_o_0,
  output [7:0]  io_data_wdata_o_1,
  output [7:0]  io_data_wdata_o_2,
  output [7:0]  io_data_wdata_o_3,
  output [31:0] io_memAddress,
  output [31:0] io_data_out,
  output [31:0] io_alu_output,
  output [4:0]  io_rd_sel_out,
  output        io_ctrl_RegWr_out,
  output        io_ctrl_CsrWen_out,
  output        io_ctrl_MemRd_out,
  output        io_ctrl_MemToReg_out,
  output [31:0] io_csr_data_out,
  output        io_stall
);
  wire [2:0] load_unit_io_func3; // @[MemoryStage.scala 45:25]
  wire [1:0] load_unit_io_data_offset; // @[MemoryStage.scala 45:25]
  wire [31:0] load_unit_io_memData; // @[MemoryStage.scala 45:25]
  wire [31:0] load_unit_io_LoadData; // @[MemoryStage.scala 45:25]
  wire [1:0] data_offset = io_EX_MEM_alu_output[1:0]; // @[MemoryStage.scala 47:41]
  wire  _T_2 = io_EX_MEM_MemWr | io_EX_MEM_MemRd; // @[MemoryStage.scala 55:40]
  wire  _T_3 = ~io_data_rvalid_i; // @[MemoryStage.scala 55:71]
  wire  _T_5 = io_func3 == 3'h2; // @[MemoryStage.scala 81:17]
  wire  _T_7 = _T_5 & io_EX_MEM_MemWr; // @[MemoryStage.scala 81:30]
  wire  _T_8 = data_offset == 2'h0; // @[MemoryStage.scala 83:22]
  wire  _T_9 = data_offset == 2'h1; // @[MemoryStage.scala 89:29]
  wire  _T_10 = data_offset == 2'h2; // @[MemoryStage.scala 96:29]
  wire  _T_11 = data_offset == 2'h3; // @[MemoryStage.scala 105:29]
  wire  _GEN_0 = _T_11 ? 1'h0 : 1'h1; // @[MemoryStage.scala 105:42]
  wire  _GEN_2 = _T_10 ? 1'h0 : _GEN_0; // @[MemoryStage.scala 96:42]
  wire  _GEN_3 = _T_10 | _GEN_0; // @[MemoryStage.scala 96:42]
  wire  _GEN_5 = _T_9 ? 1'h0 : _GEN_2; // @[MemoryStage.scala 89:42]
  wire  _GEN_6 = _T_9 | _GEN_2; // @[MemoryStage.scala 89:42]
  wire  _GEN_7 = _T_9 | _GEN_3; // @[MemoryStage.scala 89:42]
  wire  _GEN_9 = _T_8 | _GEN_5; // @[MemoryStage.scala 83:35]
  wire  _GEN_10 = _T_8 | _GEN_6; // @[MemoryStage.scala 83:35]
  wire  _GEN_11 = _T_8 | _GEN_7; // @[MemoryStage.scala 83:35]
  wire  _T_12 = io_func3 == 3'h1; // @[MemoryStage.scala 118:24]
  wire  _T_14 = _T_12 & io_EX_MEM_MemWr; // @[MemoryStage.scala 118:37]
  wire  _GEN_21 = _T_9 ? 1'h0 : 1'h1; // @[MemoryStage.scala 129:42]
  wire  _GEN_24 = _T_8 ? 1'h0 : _GEN_7; // @[MemoryStage.scala 120:35]
  wire  _GEN_25 = _T_8 ? 1'h0 : _GEN_21; // @[MemoryStage.scala 120:35]
  wire  _GEN_30 = _T_10 ? 1'h0 : 1'h1; // @[MemoryStage.scala 175:42]
  wire  _GEN_33 = _T_9 ? 1'h0 : _GEN_3; // @[MemoryStage.scala 167:42]
  wire  _GEN_34 = _T_9 ? 1'h0 : _GEN_30; // @[MemoryStage.scala 167:42]
  wire  _GEN_36 = _T_8 ? 1'h0 : _GEN_6; // @[MemoryStage.scala 160:35]
  wire  _GEN_37 = _T_8 ? 1'h0 : _GEN_33; // @[MemoryStage.scala 160:35]
  wire  _GEN_38 = _T_8 ? 1'h0 : _GEN_34; // @[MemoryStage.scala 160:35]
  wire  _GEN_43 = _T_14 ? _GEN_9 : _GEN_9; // @[MemoryStage.scala 118:65]
  wire  _GEN_44 = _T_14 ? _GEN_10 : _GEN_36; // @[MemoryStage.scala 118:65]
  wire  _GEN_45 = _T_14 ? _GEN_24 : _GEN_37; // @[MemoryStage.scala 118:65]
  wire  _GEN_46 = _T_14 ? _GEN_25 : _GEN_38; // @[MemoryStage.scala 118:65]
  wire [7:0] _T_28 = io_EX_MEM_rs2[7:0]; // @[MemoryStage.scala 207:47]
  wire [7:0] _T_30 = io_EX_MEM_rs2[15:8]; // @[MemoryStage.scala 208:48]
  wire [7:0] _T_32 = io_EX_MEM_rs2[23:16]; // @[MemoryStage.scala 209:49]
  wire [7:0] _T_34 = io_EX_MEM_rs2[31:24]; // @[MemoryStage.scala 210:49]
  wire [7:0] _GEN_51 = _T_11 ? $signed(_T_34) : $signed(_T_28); // @[MemoryStage.scala 221:40]
  wire [7:0] _GEN_52 = _T_11 ? $signed(_T_32) : $signed(_T_30); // @[MemoryStage.scala 221:40]
  wire [7:0] _GEN_53 = _T_11 ? $signed(_T_30) : $signed(_T_32); // @[MemoryStage.scala 221:40]
  wire [7:0] _GEN_54 = _T_11 ? $signed(_T_28) : $signed(_T_34); // @[MemoryStage.scala 221:40]
  wire [7:0] _GEN_55 = _T_10 ? $signed(_T_34) : $signed(_GEN_51); // @[MemoryStage.scala 216:40]
  wire [7:0] _GEN_56 = _T_10 ? $signed(_T_32) : $signed(_GEN_52); // @[MemoryStage.scala 216:40]
  wire [7:0] _GEN_57 = _T_10 ? $signed(_T_28) : $signed(_GEN_53); // @[MemoryStage.scala 216:40]
  wire [7:0] _GEN_58 = _T_10 ? $signed(_T_30) : $signed(_GEN_54); // @[MemoryStage.scala 216:40]
  wire [7:0] _GEN_59 = _T_9 ? $signed(_T_34) : $signed(_GEN_55); // @[MemoryStage.scala 211:40]
  wire [7:0] _GEN_60 = _T_9 ? $signed(_T_28) : $signed(_GEN_56); // @[MemoryStage.scala 211:40]
  wire [7:0] _GEN_61 = _T_9 ? $signed(_T_30) : $signed(_GEN_57); // @[MemoryStage.scala 211:40]
  wire [7:0] _GEN_62 = _T_9 ? $signed(_T_32) : $signed(_GEN_58); // @[MemoryStage.scala 211:40]
  wire  _T_71 = io_data_gnt_i & io_EX_MEM_MemWr; // @[MemoryStage.scala 241:22]
  wire  _T_73 = io_data_gnt_i & io_EX_MEM_MemRd; // @[MemoryStage.scala 246:29]
  Load_unit load_unit ( // @[MemoryStage.scala 45:25]
    .io_func3(load_unit_io_func3),
    .io_data_offset(load_unit_io_data_offset),
    .io_memData(load_unit_io_memData),
    .io_LoadData(load_unit_io_LoadData)
  );
  assign io_data_req_o = _T_71 | _T_73; // @[MemoryStage.scala 243:19 MemoryStage.scala 247:19 MemoryStage.scala 252:21]
  assign io_data_be_o_0 = _T_7 ? _GEN_9 : _GEN_43; // @[MemoryStage.scala 86:25 MemoryStage.scala 91:23 MemoryStage.scala 99:25 MemoryStage.scala 108:25 MemoryStage.scala 114:25 MemoryStage.scala 123:25 MemoryStage.scala 131:23 MemoryStage.scala 140:25 MemoryStage.scala 149:25 MemoryStage.scala 155:25 MemoryStage.scala 162:23 MemoryStage.scala 169:23 MemoryStage.scala 178:25 MemoryStage.scala 186:25 MemoryStage.scala 192:25]
  assign io_data_be_o_1 = _T_7 ? _GEN_10 : _GEN_44; // @[MemoryStage.scala 86:25 MemoryStage.scala 93:25 MemoryStage.scala 99:25 MemoryStage.scala 108:25 MemoryStage.scala 114:25 MemoryStage.scala 123:25 MemoryStage.scala 133:25 MemoryStage.scala 140:25 MemoryStage.scala 149:25 MemoryStage.scala 155:25 MemoryStage.scala 164:25 MemoryStage.scala 170:23 MemoryStage.scala 178:25 MemoryStage.scala 186:25 MemoryStage.scala 192:25]
  assign io_data_be_o_2 = _T_7 ? _GEN_11 : _GEN_45; // @[MemoryStage.scala 86:25 MemoryStage.scala 93:25 MemoryStage.scala 102:25 MemoryStage.scala 108:25 MemoryStage.scala 114:25 MemoryStage.scala 126:25 MemoryStage.scala 133:25 MemoryStage.scala 143:25 MemoryStage.scala 149:25 MemoryStage.scala 155:25 MemoryStage.scala 164:25 MemoryStage.scala 172:25 MemoryStage.scala 180:23 MemoryStage.scala 186:25 MemoryStage.scala 192:25]
  assign io_data_be_o_3 = _T_7 | _GEN_46; // @[MemoryStage.scala 86:25 MemoryStage.scala 93:25 MemoryStage.scala 102:25 MemoryStage.scala 110:23 MemoryStage.scala 114:25 MemoryStage.scala 126:25 MemoryStage.scala 135:23 MemoryStage.scala 143:25 MemoryStage.scala 151:23 MemoryStage.scala 155:25 MemoryStage.scala 164:25 MemoryStage.scala 172:25 MemoryStage.scala 181:23 MemoryStage.scala 188:23 MemoryStage.scala 192:25]
  assign io_ctrl_MemWr_out = io_EX_MEM_MemWr; // @[MemoryStage.scala 284:21]
  assign io_data_wdata_o_0 = _T_8 ? $signed(_T_28) : $signed(_GEN_59); // @[MemoryStage.scala 245:21]
  assign io_data_wdata_o_1 = _T_8 ? $signed(_T_30) : $signed(_GEN_60); // @[MemoryStage.scala 245:21]
  assign io_data_wdata_o_2 = _T_8 ? $signed(_T_32) : $signed(_GEN_61); // @[MemoryStage.scala 245:21]
  assign io_data_wdata_o_3 = _T_8 ? $signed(_T_34) : $signed(_GEN_62); // @[MemoryStage.scala 245:21]
  assign io_memAddress = io_EX_MEM_alu_output; // @[MemoryStage.scala 240:17]
  assign io_data_out = load_unit_io_LoadData; // @[MemoryStage.scala 269:21]
  assign io_alu_output = io_EX_MEM_alu_output; // @[MemoryStage.scala 285:17]
  assign io_rd_sel_out = io_EX_MEM_rd_sel; // @[MemoryStage.scala 287:17]
  assign io_ctrl_RegWr_out = io_EX_MEM_RegWr; // @[MemoryStage.scala 288:21]
  assign io_ctrl_CsrWen_out = io_EX_MEM_CsrWe; // @[MemoryStage.scala 289:22]
  assign io_ctrl_MemRd_out = io_EX_MEM_MemRd; // @[MemoryStage.scala 290:21]
  assign io_ctrl_MemToReg_out = io_EX_MEM_MemToReg; // @[MemoryStage.scala 291:24]
  assign io_csr_data_out = io_EX_MEM_csr_data; // @[MemoryStage.scala 294:19]
  assign io_stall = _T_2 & _T_3; // @[MemoryStage.scala 55:12]
  assign load_unit_io_func3 = io_func3; // @[MemoryStage.scala 60:22]
  assign load_unit_io_data_offset = io_EX_MEM_alu_output[1:0]; // @[MemoryStage.scala 62:28]
  assign load_unit_io_memData = io_data_rdata_i; // @[MemoryStage.scala 61:24]
endmodule
module WriteBack(
  input         io_MEM_WB_MemToReg,
  input  [31:0] io_MEM_WB_dataMem_data,
  input  [31:0] io_MEM_WB_alu_output,
  output [31:0] io_write_data
);
  assign io_write_data = io_MEM_WB_MemToReg ? $signed(io_MEM_WB_dataMem_data) : $signed(io_MEM_WB_alu_output); // @[WriteBack.scala 14:23 WriteBack.scala 16:23]
endmodule
module Core(
  input         clock,
  input         reset,
  input         io_data_gnt_i,
  input         io_data_rvalid_i,
  input  [31:0] io_data_rdata_i,
  output        io_data_req_o,
  output        io_data_we_o,
  output        io_data_be_o_0,
  output        io_data_be_o_1,
  output        io_data_be_o_2,
  output        io_data_be_o_3,
  output [31:0] io_data_addr_o,
  output [7:0]  io_data_wdata_o_0,
  output [7:0]  io_data_wdata_o_1,
  output [7:0]  io_data_wdata_o_2,
  output [7:0]  io_data_wdata_o_3,
  input         io_instr_gnt_i,
  input         io_instr_rvalid_i,
  input  [31:0] io_instr_rdata_i,
  output        io_instr_req_o,
  output [31:0] io_instr_addr_o,
  input         io_stall_core_i,
  input         io_irq_external_i
);
  wire  ID_EX_clock; // @[Core.scala 69:37]
  wire  ID_EX_reset; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_pc_in; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_pc4_in; // @[Core.scala 69:37]
  wire [4:0] ID_EX_io_rs1_sel_in; // @[Core.scala 69:37]
  wire [4:0] ID_EX_io_rs2_sel_in; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_rs1_in; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_rs2_in; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_imm; // @[Core.scala 69:37]
  wire [4:0] ID_EX_io_rd_sel_in; // @[Core.scala 69:37]
  wire [2:0] ID_EX_io_func3_in; // @[Core.scala 69:37]
  wire [6:0] ID_EX_io_func7_in; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_MemWr_in; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_MemRd_in; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_CsrWen_in; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_RegWr_in; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_MemToReg_in; // @[Core.scala 69:37]
  wire [3:0] ID_EX_io_ctrl_AluOp_in; // @[Core.scala 69:37]
  wire [1:0] ID_EX_io_ctrl_OpA_sel_in; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_OpB_sel_in; // @[Core.scala 69:37]
  wire [6:0] ID_EX_io_inst_op_in; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_csr_data_i; // @[Core.scala 69:37]
  wire  ID_EX_io_stall; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_pc_out; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_pc4_out; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_rs1_out; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_rs2_out; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_imm_out; // @[Core.scala 69:37]
  wire [2:0] ID_EX_io_func3_out; // @[Core.scala 69:37]
  wire [6:0] ID_EX_io_func7_out; // @[Core.scala 69:37]
  wire [6:0] ID_EX_io_inst_op_out; // @[Core.scala 69:37]
  wire [4:0] ID_EX_io_rd_sel_out; // @[Core.scala 69:37]
  wire [4:0] ID_EX_io_rs1_sel_out; // @[Core.scala 69:37]
  wire [4:0] ID_EX_io_rs2_sel_out; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_MemWr_out; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_MemRd_out; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_RegWr_out; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_CsrWen_out; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_MemToReg_out; // @[Core.scala 69:37]
  wire [3:0] ID_EX_io_ctrl_AluOp_out; // @[Core.scala 69:37]
  wire [1:0] ID_EX_io_ctrl_OpA_sel_out; // @[Core.scala 69:37]
  wire  ID_EX_io_ctrl_OpB_sel_out; // @[Core.scala 69:37]
  wire [31:0] ID_EX_io_csr_data_o; // @[Core.scala 69:37]
  wire  EX_MEM_clock; // @[Core.scala 70:37]
  wire  EX_MEM_reset; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_MemWr_in; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_MemRd_in; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_RegWr_in; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_CsrWen_in; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_MemToReg_in; // @[Core.scala 70:37]
  wire [31:0] EX_MEM_io_rs2_in; // @[Core.scala 70:37]
  wire [4:0] EX_MEM_io_rd_sel_in; // @[Core.scala 70:37]
  wire [31:0] EX_MEM_io_alu_in; // @[Core.scala 70:37]
  wire [2:0] EX_MEM_io_EX_MEM_func3; // @[Core.scala 70:37]
  wire [31:0] EX_MEM_io_csr_data_i; // @[Core.scala 70:37]
  wire  EX_MEM_io_stall; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_MemWr_out; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_MemRd_out; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_RegWr_out; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_CsrWen_out; // @[Core.scala 70:37]
  wire  EX_MEM_io_ctrl_MemToReg_out; // @[Core.scala 70:37]
  wire [31:0] EX_MEM_io_rs2_out; // @[Core.scala 70:37]
  wire [4:0] EX_MEM_io_rd_sel_out; // @[Core.scala 70:37]
  wire [31:0] EX_MEM_io_alu_output; // @[Core.scala 70:37]
  wire [2:0] EX_MEM_io_EX_MEM_func3_out; // @[Core.scala 70:37]
  wire [31:0] EX_MEM_io_csr_data_o; // @[Core.scala 70:37]
  wire  MEM_WB_clock; // @[Core.scala 71:37]
  wire  MEM_WB_reset; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_RegWr_in; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_CsrWen_in; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_MemToReg_in; // @[Core.scala 71:37]
  wire [4:0] MEM_WB_io_rd_sel_in; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_MemRd_in; // @[Core.scala 71:37]
  wire [31:0] MEM_WB_io_dmem_data_in; // @[Core.scala 71:37]
  wire [31:0] MEM_WB_io_alu_in; // @[Core.scala 71:37]
  wire [31:0] MEM_WB_io_csr_data_in; // @[Core.scala 71:37]
  wire  MEM_WB_io_stall; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_RegWr_out; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_CsrWen_out; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_MemToReg_out; // @[Core.scala 71:37]
  wire  MEM_WB_io_ctrl_MemRd_out; // @[Core.scala 71:37]
  wire [4:0] MEM_WB_io_rd_sel_out; // @[Core.scala 71:37]
  wire [31:0] MEM_WB_io_dmem_data_out; // @[Core.scala 71:37]
  wire [31:0] MEM_WB_io_alu_output; // @[Core.scala 71:37]
  wire [31:0] MEM_WB_io_csr_data_out; // @[Core.scala 71:37]
  wire  fetch_clock; // @[Core.scala 72:37]
  wire  fetch_reset; // @[Core.scala 72:37]
  wire  fetch_io_core_instr_gnt_i; // @[Core.scala 72:37]
  wire  fetch_io_core_instr_rvalid_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_core_instr_rdata_i; // @[Core.scala 72:37]
  wire  fetch_io_csrRegFile_irq_pending_i; // @[Core.scala 72:37]
  wire  fetch_io_csrRegFile_csr_mstatus_mie_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_csrRegFile_csr_mtvec_i; // @[Core.scala 72:37]
  wire  fetch_io_csrRegFile_csr_mtvec_init_o; // @[Core.scala 72:37]
  wire  fetch_io_csrRegFile_csr_save_cause_o; // @[Core.scala 72:37]
  wire  fetch_io_csrRegFile_csr_save_if_o; // @[Core.scala 72:37]
  wire [31:0] fetch_io_csrRegFile_csr_if_pc_o; // @[Core.scala 72:37]
  wire [5:0] fetch_io_csrRegFile_exc_cause_o; // @[Core.scala 72:37]
  wire [31:0] fetch_io_csrRegFile_csr_mepc_i; // @[Core.scala 72:37]
  wire  fetch_io_core_init_mtvec_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_sb_imm_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_uj_imm_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_jalr_imm_i; // @[Core.scala 72:37]
  wire [1:0] fetch_io_decode_ctrl_next_pc_sel_i; // @[Core.scala 72:37]
  wire  fetch_io_decode_ctrl_out_branch_i; // @[Core.scala 72:37]
  wire  fetch_io_decode_branchLogic_output_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_hazardDetection_pc_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_hazardDetection_inst_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_hazardDetection_current_pc_i; // @[Core.scala 72:37]
  wire  fetch_io_decode_hazardDetection_pc_forward_i; // @[Core.scala 72:37]
  wire  fetch_io_decode_hazardDetection_inst_forward_i; // @[Core.scala 72:37]
  wire  fetch_io_decode_mret_inst_i; // @[Core.scala 72:37]
  wire  fetch_io_core_stall_i; // @[Core.scala 72:37]
  wire [31:0] fetch_io_core_instr_addr_o; // @[Core.scala 72:37]
  wire  fetch_io_core_instr_req_o; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_if_id_pc_o; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_if_id_pc4_o; // @[Core.scala 72:37]
  wire [31:0] fetch_io_decode_if_id_inst_o; // @[Core.scala 72:37]
  wire  decode_clock; // @[Core.scala 73:37]
  wire  decode_reset; // @[Core.scala 73:37]
  wire  decode_io_irq_external_i; // @[Core.scala 73:37]
  wire [31:0] decode_io_IF_ID_inst; // @[Core.scala 73:37]
  wire [31:0] decode_io_IF_ID_pc; // @[Core.scala 73:37]
  wire [31:0] decode_io_IF_ID_pc4; // @[Core.scala 73:37]
  wire  decode_io_MEM_WB_ctrl_regWr; // @[Core.scala 73:37]
  wire  decode_io_MEM_WB_ctrl_csrWen; // @[Core.scala 73:37]
  wire [4:0] decode_io_MEM_WB_rd_sel; // @[Core.scala 73:37]
  wire  decode_io_ID_EX_ctrl_MemRd; // @[Core.scala 73:37]
  wire  decode_io_ID_EX_ctrl_regWr; // @[Core.scala 73:37]
  wire  decode_io_ID_EX_ctrl_csrWen; // @[Core.scala 73:37]
  wire  decode_io_EX_MEM_ctrl_csrWen; // @[Core.scala 73:37]
  wire [4:0] decode_io_ID_EX_rd_sel; // @[Core.scala 73:37]
  wire [4:0] decode_io_EX_MEM_rd_sel; // @[Core.scala 73:37]
  wire  decode_io_EX_MEM_ctrl_MemRd; // @[Core.scala 73:37]
  wire  decode_io_EX_MEM_ctrl_regWr; // @[Core.scala 73:37]
  wire  decode_io_MEM_WB_ctrl_MemRd; // @[Core.scala 73:37]
  wire [31:0] decode_io_alu_output; // @[Core.scala 73:37]
  wire [31:0] decode_io_EX_MEM_alu_output; // @[Core.scala 73:37]
  wire [31:0] decode_io_dmem_memOut; // @[Core.scala 73:37]
  wire  decode_io_dccm_rvalid_i; // @[Core.scala 73:37]
  wire [31:0] decode_io_writeback_write_data; // @[Core.scala 73:37]
  wire [31:0] decode_io_MEM_WB_csr_rdata_i; // @[Core.scala 73:37]
  wire [31:0] decode_io_EX_MEM_csr_rdata_i; // @[Core.scala 73:37]
  wire [31:0] decode_io_ID_EX_csr_rdata_i; // @[Core.scala 73:37]
  wire  decode_io_fetch_csr_mtvec_init; // @[Core.scala 73:37]
  wire [31:0] decode_io_fetch_csr_if_pc; // @[Core.scala 73:37]
  wire  decode_io_fetch_csr_save_if; // @[Core.scala 73:37]
  wire [5:0] decode_io_fetch_exc_cause_i; // @[Core.scala 73:37]
  wire  decode_io_fetch_csr_save_cause_i; // @[Core.scala 73:37]
  wire  decode_io_execute_regwrite; // @[Core.scala 73:37]
  wire  decode_io_mem_regwrite; // @[Core.scala 73:37]
  wire  decode_io_wb_regwrite; // @[Core.scala 73:37]
  wire [31:0] decode_io_pc_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_pc4_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_inst_op_out; // @[Core.scala 73:37]
  wire [2:0] decode_io_func3_out; // @[Core.scala 73:37]
  wire [6:0] decode_io_func7_out; // @[Core.scala 73:37]
  wire [4:0] decode_io_rd_sel_out; // @[Core.scala 73:37]
  wire [4:0] decode_io_rs1_sel_out; // @[Core.scala 73:37]
  wire [4:0] decode_io_rs2_sel_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_rs1_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_rs2_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_csr_rdata_o; // @[Core.scala 73:37]
  wire [31:0] decode_io_imm_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_sb_imm; // @[Core.scala 73:37]
  wire [31:0] decode_io_uj_imm; // @[Core.scala 73:37]
  wire [31:0] decode_io_jalr_output; // @[Core.scala 73:37]
  wire  decode_io_branchLogic_output; // @[Core.scala 73:37]
  wire [31:0] decode_io_hazardDetection_pc_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_hazardDetection_inst_out; // @[Core.scala 73:37]
  wire [31:0] decode_io_hazardDetection_current_pc_out; // @[Core.scala 73:37]
  wire  decode_io_hazardDetection_pc_forward; // @[Core.scala 73:37]
  wire  decode_io_hazardDetection_inst_forward; // @[Core.scala 73:37]
  wire  decode_io_ctrl_MemWr_out; // @[Core.scala 73:37]
  wire  decode_io_ctrl_MemRd_out; // @[Core.scala 73:37]
  wire  decode_io_ctrl_Branch_out; // @[Core.scala 73:37]
  wire  decode_io_ctrl_RegWr_out; // @[Core.scala 73:37]
  wire  decode_io_ctrl_CsrWen_out; // @[Core.scala 73:37]
  wire  decode_io_ctrl_MemToReg_out; // @[Core.scala 73:37]
  wire [3:0] decode_io_ctrl_AluOp_out; // @[Core.scala 73:37]
  wire [1:0] decode_io_ctrl_OpA_sel_out; // @[Core.scala 73:37]
  wire  decode_io_ctrl_OpB_sel_out; // @[Core.scala 73:37]
  wire [1:0] decode_io_ctrl_next_pc_sel_out; // @[Core.scala 73:37]
  wire  decode_io_fetch_irq_pending_o; // @[Core.scala 73:37]
  wire  decode_io_fetch_csr_mstatus_mie_o; // @[Core.scala 73:37]
  wire [31:0] decode_io_fetch_csr_mtvec_o; // @[Core.scala 73:37]
  wire [31:0] decode_io_fetch_csr_mepc_o; // @[Core.scala 73:37]
  wire  decode_io_fetch_mret_inst_o; // @[Core.scala 73:37]
  wire [4:0] execute_io_EX_MEM_rd_sel; // @[Core.scala 74:37]
  wire [4:0] execute_io_MEM_WB_rd_sel; // @[Core.scala 74:37]
  wire [4:0] execute_io_ID_EX_rs1_sel; // @[Core.scala 74:37]
  wire [4:0] execute_io_ID_EX_rs2_sel; // @[Core.scala 74:37]
  wire  execute_io_EX_MEM_ctrl_RegWr; // @[Core.scala 74:37]
  wire  execute_io_EX_MEM_ctrl_csrWen; // @[Core.scala 74:37]
  wire  execute_io_MEM_WB_ctrl_csrWen; // @[Core.scala 74:37]
  wire  execute_io_MEM_WB_ctrl_RegWr; // @[Core.scala 74:37]
  wire [1:0] execute_io_ID_EX_ctrl_OpA_sel; // @[Core.scala 74:37]
  wire  execute_io_ID_EX_ctrl_OpB_sel; // @[Core.scala 74:37]
  wire [31:0] execute_io_ID_EX_pc4; // @[Core.scala 74:37]
  wire [31:0] execute_io_ID_EX_pc_out; // @[Core.scala 74:37]
  wire [31:0] execute_io_ID_EX_rs1; // @[Core.scala 74:37]
  wire [31:0] execute_io_ID_EX_rs2; // @[Core.scala 74:37]
  wire [31:0] execute_io_ID_EX_csr_data; // @[Core.scala 74:37]
  wire [31:0] execute_io_EX_MEM_alu_output; // @[Core.scala 74:37]
  wire [31:0] execute_io_EX_MEM_csr_rdata; // @[Core.scala 74:37]
  wire [31:0] execute_io_MEM_WB_csr_rdata; // @[Core.scala 74:37]
  wire [31:0] execute_io_writeback_write_data; // @[Core.scala 74:37]
  wire [31:0] execute_io_ID_EX_imm; // @[Core.scala 74:37]
  wire [3:0] execute_io_ID_EX_ctrl_AluOp; // @[Core.scala 74:37]
  wire [6:0] execute_io_ID_EX_func7; // @[Core.scala 74:37]
  wire [6:0] execute_io_ID_EX_inst_op; // @[Core.scala 74:37]
  wire [2:0] execute_io_ID_EX_func3; // @[Core.scala 74:37]
  wire [4:0] execute_io_ID_EX_rd_sel; // @[Core.scala 74:37]
  wire  execute_io_ID_EX_ctrl_MemWr; // @[Core.scala 74:37]
  wire  execute_io_ID_EX_ctrl_MemRd; // @[Core.scala 74:37]
  wire  execute_io_ID_EX_ctrl_RegWr; // @[Core.scala 74:37]
  wire  execute_io_ID_EX_ctrl_CsrWen; // @[Core.scala 74:37]
  wire  execute_io_ID_EX_ctrl_MemToReg; // @[Core.scala 74:37]
  wire [31:0] execute_io_rs2_out; // @[Core.scala 74:37]
  wire [31:0] execute_io_alu_output; // @[Core.scala 74:37]
  wire [4:0] execute_io_rd_sel_out; // @[Core.scala 74:37]
  wire  execute_io_ctrl_MemWr_out; // @[Core.scala 74:37]
  wire  execute_io_ctrl_MemRd_out; // @[Core.scala 74:37]
  wire  execute_io_ctrl_RegWr_out; // @[Core.scala 74:37]
  wire  execute_io_ctrl_CsrWe_out; // @[Core.scala 74:37]
  wire  execute_io_ctrl_MemToReg_out; // @[Core.scala 74:37]
  wire [2:0] execute_io_func3_out; // @[Core.scala 74:37]
  wire [31:0] execute_io_csr_data_o; // @[Core.scala 74:37]
  wire [31:0] memory_stage_io_EX_MEM_alu_output; // @[Core.scala 75:37]
  wire [4:0] memory_stage_io_EX_MEM_rd_sel; // @[Core.scala 75:37]
  wire  memory_stage_io_EX_MEM_RegWr; // @[Core.scala 75:37]
  wire  memory_stage_io_EX_MEM_CsrWe; // @[Core.scala 75:37]
  wire  memory_stage_io_EX_MEM_MemRd; // @[Core.scala 75:37]
  wire  memory_stage_io_EX_MEM_MemToReg; // @[Core.scala 75:37]
  wire  memory_stage_io_EX_MEM_MemWr; // @[Core.scala 75:37]
  wire [31:0] memory_stage_io_EX_MEM_rs2; // @[Core.scala 75:37]
  wire [2:0] memory_stage_io_func3; // @[Core.scala 75:37]
  wire [31:0] memory_stage_io_EX_MEM_csr_data; // @[Core.scala 75:37]
  wire  memory_stage_io_data_gnt_i; // @[Core.scala 75:37]
  wire  memory_stage_io_data_rvalid_i; // @[Core.scala 75:37]
  wire [31:0] memory_stage_io_data_rdata_i; // @[Core.scala 75:37]
  wire  memory_stage_io_data_req_o; // @[Core.scala 75:37]
  wire  memory_stage_io_data_be_o_0; // @[Core.scala 75:37]
  wire  memory_stage_io_data_be_o_1; // @[Core.scala 75:37]
  wire  memory_stage_io_data_be_o_2; // @[Core.scala 75:37]
  wire  memory_stage_io_data_be_o_3; // @[Core.scala 75:37]
  wire  memory_stage_io_ctrl_MemWr_out; // @[Core.scala 75:37]
  wire [7:0] memory_stage_io_data_wdata_o_0; // @[Core.scala 75:37]
  wire [7:0] memory_stage_io_data_wdata_o_1; // @[Core.scala 75:37]
  wire [7:0] memory_stage_io_data_wdata_o_2; // @[Core.scala 75:37]
  wire [7:0] memory_stage_io_data_wdata_o_3; // @[Core.scala 75:37]
  wire [31:0] memory_stage_io_memAddress; // @[Core.scala 75:37]
  wire [31:0] memory_stage_io_data_out; // @[Core.scala 75:37]
  wire [31:0] memory_stage_io_alu_output; // @[Core.scala 75:37]
  wire [4:0] memory_stage_io_rd_sel_out; // @[Core.scala 75:37]
  wire  memory_stage_io_ctrl_RegWr_out; // @[Core.scala 75:37]
  wire  memory_stage_io_ctrl_CsrWen_out; // @[Core.scala 75:37]
  wire  memory_stage_io_ctrl_MemRd_out; // @[Core.scala 75:37]
  wire  memory_stage_io_ctrl_MemToReg_out; // @[Core.scala 75:37]
  wire [31:0] memory_stage_io_csr_data_out; // @[Core.scala 75:37]
  wire  memory_stage_io_stall; // @[Core.scala 75:37]
  wire  writeback_io_MEM_WB_MemToReg; // @[Core.scala 76:37]
  wire [31:0] writeback_io_MEM_WB_dataMem_data; // @[Core.scala 76:37]
  wire [31:0] writeback_io_MEM_WB_alu_output; // @[Core.scala 76:37]
  wire [31:0] writeback_io_write_data; // @[Core.scala 76:37]
  ID_EX ID_EX ( // @[Core.scala 69:37]
    .clock(ID_EX_clock),
    .reset(ID_EX_reset),
    .io_pc_in(ID_EX_io_pc_in),
    .io_pc4_in(ID_EX_io_pc4_in),
    .io_rs1_sel_in(ID_EX_io_rs1_sel_in),
    .io_rs2_sel_in(ID_EX_io_rs2_sel_in),
    .io_rs1_in(ID_EX_io_rs1_in),
    .io_rs2_in(ID_EX_io_rs2_in),
    .io_imm(ID_EX_io_imm),
    .io_rd_sel_in(ID_EX_io_rd_sel_in),
    .io_func3_in(ID_EX_io_func3_in),
    .io_func7_in(ID_EX_io_func7_in),
    .io_ctrl_MemWr_in(ID_EX_io_ctrl_MemWr_in),
    .io_ctrl_MemRd_in(ID_EX_io_ctrl_MemRd_in),
    .io_ctrl_CsrWen_in(ID_EX_io_ctrl_CsrWen_in),
    .io_ctrl_RegWr_in(ID_EX_io_ctrl_RegWr_in),
    .io_ctrl_MemToReg_in(ID_EX_io_ctrl_MemToReg_in),
    .io_ctrl_AluOp_in(ID_EX_io_ctrl_AluOp_in),
    .io_ctrl_OpA_sel_in(ID_EX_io_ctrl_OpA_sel_in),
    .io_ctrl_OpB_sel_in(ID_EX_io_ctrl_OpB_sel_in),
    .io_inst_op_in(ID_EX_io_inst_op_in),
    .io_csr_data_i(ID_EX_io_csr_data_i),
    .io_stall(ID_EX_io_stall),
    .io_pc_out(ID_EX_io_pc_out),
    .io_pc4_out(ID_EX_io_pc4_out),
    .io_rs1_out(ID_EX_io_rs1_out),
    .io_rs2_out(ID_EX_io_rs2_out),
    .io_imm_out(ID_EX_io_imm_out),
    .io_func3_out(ID_EX_io_func3_out),
    .io_func7_out(ID_EX_io_func7_out),
    .io_inst_op_out(ID_EX_io_inst_op_out),
    .io_rd_sel_out(ID_EX_io_rd_sel_out),
    .io_rs1_sel_out(ID_EX_io_rs1_sel_out),
    .io_rs2_sel_out(ID_EX_io_rs2_sel_out),
    .io_ctrl_MemWr_out(ID_EX_io_ctrl_MemWr_out),
    .io_ctrl_MemRd_out(ID_EX_io_ctrl_MemRd_out),
    .io_ctrl_RegWr_out(ID_EX_io_ctrl_RegWr_out),
    .io_ctrl_CsrWen_out(ID_EX_io_ctrl_CsrWen_out),
    .io_ctrl_MemToReg_out(ID_EX_io_ctrl_MemToReg_out),
    .io_ctrl_AluOp_out(ID_EX_io_ctrl_AluOp_out),
    .io_ctrl_OpA_sel_out(ID_EX_io_ctrl_OpA_sel_out),
    .io_ctrl_OpB_sel_out(ID_EX_io_ctrl_OpB_sel_out),
    .io_csr_data_o(ID_EX_io_csr_data_o)
  );
  EX_MEM EX_MEM ( // @[Core.scala 70:37]
    .clock(EX_MEM_clock),
    .reset(EX_MEM_reset),
    .io_ctrl_MemWr_in(EX_MEM_io_ctrl_MemWr_in),
    .io_ctrl_MemRd_in(EX_MEM_io_ctrl_MemRd_in),
    .io_ctrl_RegWr_in(EX_MEM_io_ctrl_RegWr_in),
    .io_ctrl_CsrWen_in(EX_MEM_io_ctrl_CsrWen_in),
    .io_ctrl_MemToReg_in(EX_MEM_io_ctrl_MemToReg_in),
    .io_rs2_in(EX_MEM_io_rs2_in),
    .io_rd_sel_in(EX_MEM_io_rd_sel_in),
    .io_alu_in(EX_MEM_io_alu_in),
    .io_EX_MEM_func3(EX_MEM_io_EX_MEM_func3),
    .io_csr_data_i(EX_MEM_io_csr_data_i),
    .io_stall(EX_MEM_io_stall),
    .io_ctrl_MemWr_out(EX_MEM_io_ctrl_MemWr_out),
    .io_ctrl_MemRd_out(EX_MEM_io_ctrl_MemRd_out),
    .io_ctrl_RegWr_out(EX_MEM_io_ctrl_RegWr_out),
    .io_ctrl_CsrWen_out(EX_MEM_io_ctrl_CsrWen_out),
    .io_ctrl_MemToReg_out(EX_MEM_io_ctrl_MemToReg_out),
    .io_rs2_out(EX_MEM_io_rs2_out),
    .io_rd_sel_out(EX_MEM_io_rd_sel_out),
    .io_alu_output(EX_MEM_io_alu_output),
    .io_EX_MEM_func3_out(EX_MEM_io_EX_MEM_func3_out),
    .io_csr_data_o(EX_MEM_io_csr_data_o)
  );
  MEM_WB MEM_WB ( // @[Core.scala 71:37]
    .clock(MEM_WB_clock),
    .reset(MEM_WB_reset),
    .io_ctrl_RegWr_in(MEM_WB_io_ctrl_RegWr_in),
    .io_ctrl_CsrWen_in(MEM_WB_io_ctrl_CsrWen_in),
    .io_ctrl_MemToReg_in(MEM_WB_io_ctrl_MemToReg_in),
    .io_rd_sel_in(MEM_WB_io_rd_sel_in),
    .io_ctrl_MemRd_in(MEM_WB_io_ctrl_MemRd_in),
    .io_dmem_data_in(MEM_WB_io_dmem_data_in),
    .io_alu_in(MEM_WB_io_alu_in),
    .io_csr_data_in(MEM_WB_io_csr_data_in),
    .io_stall(MEM_WB_io_stall),
    .io_ctrl_RegWr_out(MEM_WB_io_ctrl_RegWr_out),
    .io_ctrl_CsrWen_out(MEM_WB_io_ctrl_CsrWen_out),
    .io_ctrl_MemToReg_out(MEM_WB_io_ctrl_MemToReg_out),
    .io_ctrl_MemRd_out(MEM_WB_io_ctrl_MemRd_out),
    .io_rd_sel_out(MEM_WB_io_rd_sel_out),
    .io_dmem_data_out(MEM_WB_io_dmem_data_out),
    .io_alu_output(MEM_WB_io_alu_output),
    .io_csr_data_out(MEM_WB_io_csr_data_out)
  );
  Fetch fetch ( // @[Core.scala 72:37]
    .clock(fetch_clock),
    .reset(fetch_reset),
    .io_core_instr_gnt_i(fetch_io_core_instr_gnt_i),
    .io_core_instr_rvalid_i(fetch_io_core_instr_rvalid_i),
    .io_core_instr_rdata_i(fetch_io_core_instr_rdata_i),
    .io_csrRegFile_irq_pending_i(fetch_io_csrRegFile_irq_pending_i),
    .io_csrRegFile_csr_mstatus_mie_i(fetch_io_csrRegFile_csr_mstatus_mie_i),
    .io_csrRegFile_csr_mtvec_i(fetch_io_csrRegFile_csr_mtvec_i),
    .io_csrRegFile_csr_mtvec_init_o(fetch_io_csrRegFile_csr_mtvec_init_o),
    .io_csrRegFile_csr_save_cause_o(fetch_io_csrRegFile_csr_save_cause_o),
    .io_csrRegFile_csr_save_if_o(fetch_io_csrRegFile_csr_save_if_o),
    .io_csrRegFile_csr_if_pc_o(fetch_io_csrRegFile_csr_if_pc_o),
    .io_csrRegFile_exc_cause_o(fetch_io_csrRegFile_exc_cause_o),
    .io_csrRegFile_csr_mepc_i(fetch_io_csrRegFile_csr_mepc_i),
    .io_core_init_mtvec_i(fetch_io_core_init_mtvec_i),
    .io_decode_sb_imm_i(fetch_io_decode_sb_imm_i),
    .io_decode_uj_imm_i(fetch_io_decode_uj_imm_i),
    .io_decode_jalr_imm_i(fetch_io_decode_jalr_imm_i),
    .io_decode_ctrl_next_pc_sel_i(fetch_io_decode_ctrl_next_pc_sel_i),
    .io_decode_ctrl_out_branch_i(fetch_io_decode_ctrl_out_branch_i),
    .io_decode_branchLogic_output_i(fetch_io_decode_branchLogic_output_i),
    .io_decode_hazardDetection_pc_i(fetch_io_decode_hazardDetection_pc_i),
    .io_decode_hazardDetection_inst_i(fetch_io_decode_hazardDetection_inst_i),
    .io_decode_hazardDetection_current_pc_i(fetch_io_decode_hazardDetection_current_pc_i),
    .io_decode_hazardDetection_pc_forward_i(fetch_io_decode_hazardDetection_pc_forward_i),
    .io_decode_hazardDetection_inst_forward_i(fetch_io_decode_hazardDetection_inst_forward_i),
    .io_decode_mret_inst_i(fetch_io_decode_mret_inst_i),
    .io_core_stall_i(fetch_io_core_stall_i),
    .io_core_instr_addr_o(fetch_io_core_instr_addr_o),
    .io_core_instr_req_o(fetch_io_core_instr_req_o),
    .io_decode_if_id_pc_o(fetch_io_decode_if_id_pc_o),
    .io_decode_if_id_pc4_o(fetch_io_decode_if_id_pc4_o),
    .io_decode_if_id_inst_o(fetch_io_decode_if_id_inst_o)
  );
  Decode decode ( // @[Core.scala 73:37]
    .clock(decode_clock),
    .reset(decode_reset),
    .io_irq_external_i(decode_io_irq_external_i),
    .io_IF_ID_inst(decode_io_IF_ID_inst),
    .io_IF_ID_pc(decode_io_IF_ID_pc),
    .io_IF_ID_pc4(decode_io_IF_ID_pc4),
    .io_MEM_WB_ctrl_regWr(decode_io_MEM_WB_ctrl_regWr),
    .io_MEM_WB_ctrl_csrWen(decode_io_MEM_WB_ctrl_csrWen),
    .io_MEM_WB_rd_sel(decode_io_MEM_WB_rd_sel),
    .io_ID_EX_ctrl_MemRd(decode_io_ID_EX_ctrl_MemRd),
    .io_ID_EX_ctrl_regWr(decode_io_ID_EX_ctrl_regWr),
    .io_ID_EX_ctrl_csrWen(decode_io_ID_EX_ctrl_csrWen),
    .io_EX_MEM_ctrl_csrWen(decode_io_EX_MEM_ctrl_csrWen),
    .io_ID_EX_rd_sel(decode_io_ID_EX_rd_sel),
    .io_EX_MEM_rd_sel(decode_io_EX_MEM_rd_sel),
    .io_EX_MEM_ctrl_MemRd(decode_io_EX_MEM_ctrl_MemRd),
    .io_EX_MEM_ctrl_regWr(decode_io_EX_MEM_ctrl_regWr),
    .io_MEM_WB_ctrl_MemRd(decode_io_MEM_WB_ctrl_MemRd),
    .io_alu_output(decode_io_alu_output),
    .io_EX_MEM_alu_output(decode_io_EX_MEM_alu_output),
    .io_dmem_memOut(decode_io_dmem_memOut),
    .io_dccm_rvalid_i(decode_io_dccm_rvalid_i),
    .io_writeback_write_data(decode_io_writeback_write_data),
    .io_MEM_WB_csr_rdata_i(decode_io_MEM_WB_csr_rdata_i),
    .io_EX_MEM_csr_rdata_i(decode_io_EX_MEM_csr_rdata_i),
    .io_ID_EX_csr_rdata_i(decode_io_ID_EX_csr_rdata_i),
    .io_fetch_csr_mtvec_init(decode_io_fetch_csr_mtvec_init),
    .io_fetch_csr_if_pc(decode_io_fetch_csr_if_pc),
    .io_fetch_csr_save_if(decode_io_fetch_csr_save_if),
    .io_fetch_exc_cause_i(decode_io_fetch_exc_cause_i),
    .io_fetch_csr_save_cause_i(decode_io_fetch_csr_save_cause_i),
    .io_execute_regwrite(decode_io_execute_regwrite),
    .io_mem_regwrite(decode_io_mem_regwrite),
    .io_wb_regwrite(decode_io_wb_regwrite),
    .io_pc_out(decode_io_pc_out),
    .io_pc4_out(decode_io_pc4_out),
    .io_inst_op_out(decode_io_inst_op_out),
    .io_func3_out(decode_io_func3_out),
    .io_func7_out(decode_io_func7_out),
    .io_rd_sel_out(decode_io_rd_sel_out),
    .io_rs1_sel_out(decode_io_rs1_sel_out),
    .io_rs2_sel_out(decode_io_rs2_sel_out),
    .io_rs1_out(decode_io_rs1_out),
    .io_rs2_out(decode_io_rs2_out),
    .io_csr_rdata_o(decode_io_csr_rdata_o),
    .io_imm_out(decode_io_imm_out),
    .io_sb_imm(decode_io_sb_imm),
    .io_uj_imm(decode_io_uj_imm),
    .io_jalr_output(decode_io_jalr_output),
    .io_branchLogic_output(decode_io_branchLogic_output),
    .io_hazardDetection_pc_out(decode_io_hazardDetection_pc_out),
    .io_hazardDetection_inst_out(decode_io_hazardDetection_inst_out),
    .io_hazardDetection_current_pc_out(decode_io_hazardDetection_current_pc_out),
    .io_hazardDetection_pc_forward(decode_io_hazardDetection_pc_forward),
    .io_hazardDetection_inst_forward(decode_io_hazardDetection_inst_forward),
    .io_ctrl_MemWr_out(decode_io_ctrl_MemWr_out),
    .io_ctrl_MemRd_out(decode_io_ctrl_MemRd_out),
    .io_ctrl_Branch_out(decode_io_ctrl_Branch_out),
    .io_ctrl_RegWr_out(decode_io_ctrl_RegWr_out),
    .io_ctrl_CsrWen_out(decode_io_ctrl_CsrWen_out),
    .io_ctrl_MemToReg_out(decode_io_ctrl_MemToReg_out),
    .io_ctrl_AluOp_out(decode_io_ctrl_AluOp_out),
    .io_ctrl_OpA_sel_out(decode_io_ctrl_OpA_sel_out),
    .io_ctrl_OpB_sel_out(decode_io_ctrl_OpB_sel_out),
    .io_ctrl_next_pc_sel_out(decode_io_ctrl_next_pc_sel_out),
    .io_fetch_irq_pending_o(decode_io_fetch_irq_pending_o),
    .io_fetch_csr_mstatus_mie_o(decode_io_fetch_csr_mstatus_mie_o),
    .io_fetch_csr_mtvec_o(decode_io_fetch_csr_mtvec_o),
    .io_fetch_csr_mepc_o(decode_io_fetch_csr_mepc_o),
    .io_fetch_mret_inst_o(decode_io_fetch_mret_inst_o)
  );
  Execute execute ( // @[Core.scala 74:37]
    .io_EX_MEM_rd_sel(execute_io_EX_MEM_rd_sel),
    .io_MEM_WB_rd_sel(execute_io_MEM_WB_rd_sel),
    .io_ID_EX_rs1_sel(execute_io_ID_EX_rs1_sel),
    .io_ID_EX_rs2_sel(execute_io_ID_EX_rs2_sel),
    .io_EX_MEM_ctrl_RegWr(execute_io_EX_MEM_ctrl_RegWr),
    .io_EX_MEM_ctrl_csrWen(execute_io_EX_MEM_ctrl_csrWen),
    .io_MEM_WB_ctrl_csrWen(execute_io_MEM_WB_ctrl_csrWen),
    .io_MEM_WB_ctrl_RegWr(execute_io_MEM_WB_ctrl_RegWr),
    .io_ID_EX_ctrl_OpA_sel(execute_io_ID_EX_ctrl_OpA_sel),
    .io_ID_EX_ctrl_OpB_sel(execute_io_ID_EX_ctrl_OpB_sel),
    .io_ID_EX_pc4(execute_io_ID_EX_pc4),
    .io_ID_EX_pc_out(execute_io_ID_EX_pc_out),
    .io_ID_EX_rs1(execute_io_ID_EX_rs1),
    .io_ID_EX_rs2(execute_io_ID_EX_rs2),
    .io_ID_EX_csr_data(execute_io_ID_EX_csr_data),
    .io_EX_MEM_alu_output(execute_io_EX_MEM_alu_output),
    .io_EX_MEM_csr_rdata(execute_io_EX_MEM_csr_rdata),
    .io_MEM_WB_csr_rdata(execute_io_MEM_WB_csr_rdata),
    .io_writeback_write_data(execute_io_writeback_write_data),
    .io_ID_EX_imm(execute_io_ID_EX_imm),
    .io_ID_EX_ctrl_AluOp(execute_io_ID_EX_ctrl_AluOp),
    .io_ID_EX_func7(execute_io_ID_EX_func7),
    .io_ID_EX_inst_op(execute_io_ID_EX_inst_op),
    .io_ID_EX_func3(execute_io_ID_EX_func3),
    .io_ID_EX_rd_sel(execute_io_ID_EX_rd_sel),
    .io_ID_EX_ctrl_MemWr(execute_io_ID_EX_ctrl_MemWr),
    .io_ID_EX_ctrl_MemRd(execute_io_ID_EX_ctrl_MemRd),
    .io_ID_EX_ctrl_RegWr(execute_io_ID_EX_ctrl_RegWr),
    .io_ID_EX_ctrl_CsrWen(execute_io_ID_EX_ctrl_CsrWen),
    .io_ID_EX_ctrl_MemToReg(execute_io_ID_EX_ctrl_MemToReg),
    .io_rs2_out(execute_io_rs2_out),
    .io_alu_output(execute_io_alu_output),
    .io_rd_sel_out(execute_io_rd_sel_out),
    .io_ctrl_MemWr_out(execute_io_ctrl_MemWr_out),
    .io_ctrl_MemRd_out(execute_io_ctrl_MemRd_out),
    .io_ctrl_RegWr_out(execute_io_ctrl_RegWr_out),
    .io_ctrl_CsrWe_out(execute_io_ctrl_CsrWe_out),
    .io_ctrl_MemToReg_out(execute_io_ctrl_MemToReg_out),
    .io_func3_out(execute_io_func3_out),
    .io_csr_data_o(execute_io_csr_data_o)
  );
  MemoryStage memory_stage ( // @[Core.scala 75:37]
    .io_EX_MEM_alu_output(memory_stage_io_EX_MEM_alu_output),
    .io_EX_MEM_rd_sel(memory_stage_io_EX_MEM_rd_sel),
    .io_EX_MEM_RegWr(memory_stage_io_EX_MEM_RegWr),
    .io_EX_MEM_CsrWe(memory_stage_io_EX_MEM_CsrWe),
    .io_EX_MEM_MemRd(memory_stage_io_EX_MEM_MemRd),
    .io_EX_MEM_MemToReg(memory_stage_io_EX_MEM_MemToReg),
    .io_EX_MEM_MemWr(memory_stage_io_EX_MEM_MemWr),
    .io_EX_MEM_rs2(memory_stage_io_EX_MEM_rs2),
    .io_func3(memory_stage_io_func3),
    .io_EX_MEM_csr_data(memory_stage_io_EX_MEM_csr_data),
    .io_data_gnt_i(memory_stage_io_data_gnt_i),
    .io_data_rvalid_i(memory_stage_io_data_rvalid_i),
    .io_data_rdata_i(memory_stage_io_data_rdata_i),
    .io_data_req_o(memory_stage_io_data_req_o),
    .io_data_be_o_0(memory_stage_io_data_be_o_0),
    .io_data_be_o_1(memory_stage_io_data_be_o_1),
    .io_data_be_o_2(memory_stage_io_data_be_o_2),
    .io_data_be_o_3(memory_stage_io_data_be_o_3),
    .io_ctrl_MemWr_out(memory_stage_io_ctrl_MemWr_out),
    .io_data_wdata_o_0(memory_stage_io_data_wdata_o_0),
    .io_data_wdata_o_1(memory_stage_io_data_wdata_o_1),
    .io_data_wdata_o_2(memory_stage_io_data_wdata_o_2),
    .io_data_wdata_o_3(memory_stage_io_data_wdata_o_3),
    .io_memAddress(memory_stage_io_memAddress),
    .io_data_out(memory_stage_io_data_out),
    .io_alu_output(memory_stage_io_alu_output),
    .io_rd_sel_out(memory_stage_io_rd_sel_out),
    .io_ctrl_RegWr_out(memory_stage_io_ctrl_RegWr_out),
    .io_ctrl_CsrWen_out(memory_stage_io_ctrl_CsrWen_out),
    .io_ctrl_MemRd_out(memory_stage_io_ctrl_MemRd_out),
    .io_ctrl_MemToReg_out(memory_stage_io_ctrl_MemToReg_out),
    .io_csr_data_out(memory_stage_io_csr_data_out),
    .io_stall(memory_stage_io_stall)
  );
  WriteBack writeback ( // @[Core.scala 76:37]
    .io_MEM_WB_MemToReg(writeback_io_MEM_WB_MemToReg),
    .io_MEM_WB_dataMem_data(writeback_io_MEM_WB_dataMem_data),
    .io_MEM_WB_alu_output(writeback_io_MEM_WB_alu_output),
    .io_write_data(writeback_io_write_data)
  );
  assign io_data_req_o = memory_stage_io_data_req_o; // @[Core.scala 292:49]
  assign io_data_we_o = memory_stage_io_ctrl_MemWr_out; // @[Core.scala 294:49]
  assign io_data_be_o_0 = memory_stage_io_data_be_o_0; // @[Core.scala 293:49]
  assign io_data_be_o_1 = memory_stage_io_data_be_o_1; // @[Core.scala 293:49]
  assign io_data_be_o_2 = memory_stage_io_data_be_o_2; // @[Core.scala 293:49]
  assign io_data_be_o_3 = memory_stage_io_data_be_o_3; // @[Core.scala 293:49]
  assign io_data_addr_o = memory_stage_io_memAddress; // @[Core.scala 296:49]
  assign io_data_wdata_o_0 = memory_stage_io_data_wdata_o_0; // @[Core.scala 295:49]
  assign io_data_wdata_o_1 = memory_stage_io_data_wdata_o_1; // @[Core.scala 295:49]
  assign io_data_wdata_o_2 = memory_stage_io_data_wdata_o_2; // @[Core.scala 295:49]
  assign io_data_wdata_o_3 = memory_stage_io_data_wdata_o_3; // @[Core.scala 295:49]
  assign io_instr_req_o = fetch_io_core_instr_req_o; // @[Core.scala 146:49]
  assign io_instr_addr_o = fetch_io_core_instr_addr_o; // @[Core.scala 147:49]
  assign ID_EX_clock = clock;
  assign ID_EX_reset = reset;
  assign ID_EX_io_pc_in = decode_io_pc_out; // @[Core.scala 204:49]
  assign ID_EX_io_pc4_in = decode_io_pc4_out; // @[Core.scala 205:49]
  assign ID_EX_io_rs1_sel_in = decode_io_rs1_sel_out; // @[Core.scala 210:49]
  assign ID_EX_io_rs2_sel_in = decode_io_rs2_sel_out; // @[Core.scala 211:49]
  assign ID_EX_io_rs1_in = decode_io_rs1_out; // @[Core.scala 198:49]
  assign ID_EX_io_rs2_in = decode_io_rs2_out; // @[Core.scala 199:49]
  assign ID_EX_io_imm = decode_io_imm_out; // @[Core.scala 200:49]
  assign ID_EX_io_rd_sel_in = decode_io_rd_sel_out; // @[Core.scala 209:49]
  assign ID_EX_io_func3_in = decode_io_func3_out; // @[Core.scala 206:49]
  assign ID_EX_io_func7_in = decode_io_func7_out; // @[Core.scala 207:49]
  assign ID_EX_io_ctrl_MemWr_in = decode_io_ctrl_MemWr_out; // @[Core.scala 187:49]
  assign ID_EX_io_ctrl_MemRd_in = decode_io_ctrl_MemRd_out; // @[Core.scala 188:49]
  assign ID_EX_io_ctrl_CsrWen_in = decode_io_ctrl_CsrWen_out; // @[Core.scala 191:49]
  assign ID_EX_io_ctrl_RegWr_in = decode_io_ctrl_RegWr_out; // @[Core.scala 190:49]
  assign ID_EX_io_ctrl_MemToReg_in = decode_io_ctrl_MemToReg_out; // @[Core.scala 192:49]
  assign ID_EX_io_ctrl_AluOp_in = decode_io_ctrl_AluOp_out; // @[Core.scala 193:49]
  assign ID_EX_io_ctrl_OpA_sel_in = decode_io_ctrl_OpA_sel_out; // @[Core.scala 194:49]
  assign ID_EX_io_ctrl_OpB_sel_in = decode_io_ctrl_OpB_sel_out; // @[Core.scala 195:49]
  assign ID_EX_io_inst_op_in = decode_io_inst_op_out[6:0]; // @[Core.scala 208:49]
  assign ID_EX_io_csr_data_i = decode_io_csr_rdata_o; // @[Core.scala 202:49]
  assign ID_EX_io_stall = memory_stage_io_stall | io_stall_core_i; // @[Core.scala 186:49]
  assign EX_MEM_clock = clock;
  assign EX_MEM_reset = reset;
  assign EX_MEM_io_ctrl_MemWr_in = execute_io_ctrl_MemWr_out; // @[Core.scala 267:49]
  assign EX_MEM_io_ctrl_MemRd_in = execute_io_ctrl_MemRd_out; // @[Core.scala 268:49]
  assign EX_MEM_io_ctrl_RegWr_in = execute_io_ctrl_RegWr_out; // @[Core.scala 269:49]
  assign EX_MEM_io_ctrl_CsrWen_in = execute_io_ctrl_CsrWe_out; // @[Core.scala 260:49]
  assign EX_MEM_io_ctrl_MemToReg_in = execute_io_ctrl_MemToReg_out; // @[Core.scala 270:49]
  assign EX_MEM_io_rs2_in = execute_io_rs2_out; // @[Core.scala 258:49]
  assign EX_MEM_io_rd_sel_in = execute_io_rd_sel_out; // @[Core.scala 256:49]
  assign EX_MEM_io_alu_in = execute_io_alu_output; // @[Core.scala 253:49]
  assign EX_MEM_io_EX_MEM_func3 = execute_io_func3_out; // @[Core.scala 259:49]
  assign EX_MEM_io_csr_data_i = execute_io_csr_data_o; // @[Core.scala 263:49]
  assign EX_MEM_io_stall = memory_stage_io_stall | io_stall_core_i; // @[Core.scala 251:49]
  assign MEM_WB_clock = clock;
  assign MEM_WB_reset = reset;
  assign MEM_WB_io_ctrl_RegWr_in = memory_stage_io_ctrl_RegWr_out; // @[Core.scala 305:49]
  assign MEM_WB_io_ctrl_CsrWen_in = memory_stage_io_ctrl_CsrWen_out; // @[Core.scala 306:49]
  assign MEM_WB_io_ctrl_MemToReg_in = memory_stage_io_ctrl_MemToReg_out; // @[Core.scala 308:49]
  assign MEM_WB_io_rd_sel_in = memory_stage_io_rd_sel_out; // @[Core.scala 303:49]
  assign MEM_WB_io_ctrl_MemRd_in = memory_stage_io_ctrl_MemRd_out; // @[Core.scala 307:49]
  assign MEM_WB_io_dmem_data_in = memory_stage_io_data_out; // @[Core.scala 302:49]
  assign MEM_WB_io_alu_in = memory_stage_io_alu_output; // @[Core.scala 300:49]
  assign MEM_WB_io_csr_data_in = memory_stage_io_csr_data_out; // @[Core.scala 311:49]
  assign MEM_WB_io_stall = memory_stage_io_stall | io_stall_core_i; // @[Core.scala 299:49]
  assign fetch_clock = clock;
  assign fetch_reset = reset;
  assign fetch_io_core_instr_gnt_i = io_instr_gnt_i; // @[Core.scala 121:49]
  assign fetch_io_core_instr_rvalid_i = io_instr_rvalid_i; // @[Core.scala 122:49]
  assign fetch_io_core_instr_rdata_i = io_instr_rdata_i; // @[Core.scala 123:49]
  assign fetch_io_csrRegFile_irq_pending_i = decode_io_fetch_irq_pending_o; // @[Core.scala 126:49]
  assign fetch_io_csrRegFile_csr_mstatus_mie_i = decode_io_fetch_csr_mstatus_mie_o; // @[Core.scala 127:49]
  assign fetch_io_csrRegFile_csr_mtvec_i = decode_io_fetch_csr_mtvec_o; // @[Core.scala 128:49]
  assign fetch_io_csrRegFile_csr_mepc_i = decode_io_fetch_csr_mepc_o; // @[Core.scala 129:49]
  assign fetch_io_core_init_mtvec_i = ~io_stall_core_i; // @[Core.scala 118:49]
  assign fetch_io_decode_sb_imm_i = decode_io_sb_imm; // @[Core.scala 132:49]
  assign fetch_io_decode_uj_imm_i = decode_io_uj_imm; // @[Core.scala 133:49]
  assign fetch_io_decode_jalr_imm_i = decode_io_jalr_output; // @[Core.scala 134:49]
  assign fetch_io_decode_ctrl_next_pc_sel_i = decode_io_ctrl_next_pc_sel_out; // @[Core.scala 135:49]
  assign fetch_io_decode_ctrl_out_branch_i = decode_io_ctrl_Branch_out; // @[Core.scala 136:49]
  assign fetch_io_decode_branchLogic_output_i = decode_io_branchLogic_output; // @[Core.scala 137:49]
  assign fetch_io_decode_hazardDetection_pc_i = decode_io_hazardDetection_pc_out; // @[Core.scala 138:49]
  assign fetch_io_decode_hazardDetection_inst_i = decode_io_hazardDetection_inst_out; // @[Core.scala 139:49]
  assign fetch_io_decode_hazardDetection_current_pc_i = decode_io_hazardDetection_current_pc_out; // @[Core.scala 140:49]
  assign fetch_io_decode_hazardDetection_pc_forward_i = decode_io_hazardDetection_pc_forward; // @[Core.scala 141:49]
  assign fetch_io_decode_hazardDetection_inst_forward_i = decode_io_hazardDetection_inst_forward; // @[Core.scala 142:49]
  assign fetch_io_decode_mret_inst_i = decode_io_fetch_mret_inst_o; // @[Core.scala 130:49]
  assign fetch_io_core_stall_i = memory_stage_io_stall | io_stall_core_i; // @[Core.scala 119:49]
  assign decode_clock = clock;
  assign decode_reset = reset;
  assign decode_io_irq_external_i = io_irq_external_i; // @[Core.scala 182:49]
  assign decode_io_IF_ID_inst = fetch_io_decode_if_id_inst_o; // @[Core.scala 150:49]
  assign decode_io_IF_ID_pc = fetch_io_decode_if_id_pc_o; // @[Core.scala 151:49]
  assign decode_io_IF_ID_pc4 = fetch_io_decode_if_id_pc4_o; // @[Core.scala 152:49]
  assign decode_io_MEM_WB_ctrl_regWr = MEM_WB_io_ctrl_RegWr_out; // @[Core.scala 153:49]
  assign decode_io_MEM_WB_ctrl_csrWen = MEM_WB_io_ctrl_CsrWen_out; // @[Core.scala 154:49]
  assign decode_io_MEM_WB_rd_sel = MEM_WB_io_rd_sel_out; // @[Core.scala 161:49]
  assign decode_io_ID_EX_ctrl_MemRd = ID_EX_io_ctrl_MemRd_out; // @[Core.scala 162:49]
  assign decode_io_ID_EX_ctrl_regWr = ID_EX_io_ctrl_RegWr_out; // @[Core.scala 183:49]
  assign decode_io_ID_EX_ctrl_csrWen = ID_EX_io_ctrl_CsrWen_out; // @[Core.scala 155:49]
  assign decode_io_EX_MEM_ctrl_csrWen = EX_MEM_io_ctrl_CsrWen_out; // @[Core.scala 156:49]
  assign decode_io_ID_EX_rd_sel = ID_EX_io_rd_sel_out; // @[Core.scala 163:49]
  assign decode_io_EX_MEM_rd_sel = EX_MEM_io_rd_sel_out; // @[Core.scala 164:49]
  assign decode_io_EX_MEM_ctrl_MemRd = EX_MEM_io_ctrl_MemRd_out; // @[Core.scala 165:49]
  assign decode_io_EX_MEM_ctrl_regWr = EX_MEM_io_ctrl_RegWr_out; // @[Core.scala 184:49]
  assign decode_io_MEM_WB_ctrl_MemRd = MEM_WB_io_ctrl_MemRd_out; // @[Core.scala 166:49]
  assign decode_io_alu_output = execute_io_alu_output; // @[Core.scala 171:49]
  assign decode_io_EX_MEM_alu_output = EX_MEM_io_alu_output; // @[Core.scala 172:49]
  assign decode_io_dmem_memOut = io_data_rdata_i; // @[Core.scala 174:49]
  assign decode_io_dccm_rvalid_i = io_data_rvalid_i; // @[Core.scala 175:49]
  assign decode_io_writeback_write_data = writeback_io_write_data; // @[Core.scala 167:49]
  assign decode_io_MEM_WB_csr_rdata_i = MEM_WB_io_csr_data_out; // @[Core.scala 168:51]
  assign decode_io_EX_MEM_csr_rdata_i = EX_MEM_io_csr_data_o; // @[Core.scala 169:49]
  assign decode_io_ID_EX_csr_rdata_i = ID_EX_io_csr_data_o; // @[Core.scala 170:49]
  assign decode_io_fetch_csr_mtvec_init = fetch_io_csrRegFile_csr_mtvec_init_o; // @[Core.scala 180:49]
  assign decode_io_fetch_csr_if_pc = fetch_io_csrRegFile_csr_if_pc_o; // @[Core.scala 179:49]
  assign decode_io_fetch_csr_save_if = fetch_io_csrRegFile_csr_save_if_o; // @[Core.scala 178:49]
  assign decode_io_fetch_exc_cause_i = fetch_io_csrRegFile_exc_cause_o; // @[Core.scala 177:49]
  assign decode_io_fetch_csr_save_cause_i = fetch_io_csrRegFile_csr_save_cause_o; // @[Core.scala 176:49]
  assign decode_io_execute_regwrite = ID_EX_io_ctrl_RegWr_out; // @[Core.scala 213:49]
  assign decode_io_mem_regwrite = EX_MEM_io_ctrl_RegWr_out; // @[Core.scala 214:49]
  assign decode_io_wb_regwrite = MEM_WB_io_ctrl_RegWr_out; // @[Core.scala 215:49]
  assign execute_io_EX_MEM_rd_sel = EX_MEM_io_rd_sel_out; // @[Core.scala 220:49]
  assign execute_io_MEM_WB_rd_sel = MEM_WB_io_rd_sel_out; // @[Core.scala 221:49]
  assign execute_io_ID_EX_rs1_sel = ID_EX_io_rs1_sel_out; // @[Core.scala 222:49]
  assign execute_io_ID_EX_rs2_sel = ID_EX_io_rs2_sel_out; // @[Core.scala 223:49]
  assign execute_io_EX_MEM_ctrl_RegWr = EX_MEM_io_ctrl_RegWr_out; // @[Core.scala 224:49]
  assign execute_io_EX_MEM_ctrl_csrWen = EX_MEM_io_ctrl_CsrWen_out; // @[Core.scala 225:49]
  assign execute_io_MEM_WB_ctrl_csrWen = MEM_WB_io_ctrl_CsrWen_out; // @[Core.scala 226:49]
  assign execute_io_MEM_WB_ctrl_RegWr = MEM_WB_io_ctrl_RegWr_out; // @[Core.scala 227:49]
  assign execute_io_ID_EX_ctrl_OpA_sel = ID_EX_io_ctrl_OpA_sel_out; // @[Core.scala 228:49]
  assign execute_io_ID_EX_ctrl_OpB_sel = ID_EX_io_ctrl_OpB_sel_out; // @[Core.scala 229:49]
  assign execute_io_ID_EX_pc4 = ID_EX_io_pc4_out; // @[Core.scala 230:49]
  assign execute_io_ID_EX_pc_out = ID_EX_io_pc_out; // @[Core.scala 219:49]
  assign execute_io_ID_EX_rs1 = ID_EX_io_rs1_out; // @[Core.scala 231:49]
  assign execute_io_ID_EX_rs2 = ID_EX_io_rs2_out; // @[Core.scala 232:49]
  assign execute_io_ID_EX_csr_data = ID_EX_io_csr_data_o; // @[Core.scala 249:49]
  assign execute_io_EX_MEM_alu_output = EX_MEM_io_alu_output; // @[Core.scala 233:49]
  assign execute_io_EX_MEM_csr_rdata = EX_MEM_io_csr_data_o; // @[Core.scala 234:49]
  assign execute_io_MEM_WB_csr_rdata = MEM_WB_io_csr_data_out; // @[Core.scala 235:49]
  assign execute_io_writeback_write_data = writeback_io_write_data; // @[Core.scala 236:49]
  assign execute_io_ID_EX_imm = ID_EX_io_imm_out; // @[Core.scala 237:49]
  assign execute_io_ID_EX_ctrl_AluOp = ID_EX_io_ctrl_AluOp_out; // @[Core.scala 238:49]
  assign execute_io_ID_EX_func7 = ID_EX_io_func7_out; // @[Core.scala 239:49]
  assign execute_io_ID_EX_inst_op = ID_EX_io_inst_op_out; // @[Core.scala 240:49]
  assign execute_io_ID_EX_func3 = ID_EX_io_func3_out; // @[Core.scala 241:49]
  assign execute_io_ID_EX_rd_sel = ID_EX_io_rd_sel_out; // @[Core.scala 242:49]
  assign execute_io_ID_EX_ctrl_MemWr = ID_EX_io_ctrl_MemWr_out; // @[Core.scala 243:49]
  assign execute_io_ID_EX_ctrl_MemRd = ID_EX_io_ctrl_MemRd_out; // @[Core.scala 244:49]
  assign execute_io_ID_EX_ctrl_RegWr = ID_EX_io_ctrl_RegWr_out; // @[Core.scala 245:49]
  assign execute_io_ID_EX_ctrl_CsrWen = ID_EX_io_ctrl_CsrWen_out; // @[Core.scala 246:49]
  assign execute_io_ID_EX_ctrl_MemToReg = ID_EX_io_ctrl_MemToReg_out; // @[Core.scala 247:49]
  assign memory_stage_io_EX_MEM_alu_output = EX_MEM_io_alu_output; // @[Core.scala 276:49]
  assign memory_stage_io_EX_MEM_rd_sel = EX_MEM_io_rd_sel_out; // @[Core.scala 277:49]
  assign memory_stage_io_EX_MEM_RegWr = EX_MEM_io_ctrl_RegWr_out; // @[Core.scala 278:49]
  assign memory_stage_io_EX_MEM_CsrWe = EX_MEM_io_ctrl_CsrWen_out; // @[Core.scala 279:49]
  assign memory_stage_io_EX_MEM_MemRd = EX_MEM_io_ctrl_MemRd_out; // @[Core.scala 280:49]
  assign memory_stage_io_EX_MEM_MemToReg = EX_MEM_io_ctrl_MemToReg_out; // @[Core.scala 281:49]
  assign memory_stage_io_EX_MEM_MemWr = EX_MEM_io_ctrl_MemWr_out; // @[Core.scala 282:49]
  assign memory_stage_io_EX_MEM_rs2 = EX_MEM_io_rs2_out; // @[Core.scala 283:49]
  assign memory_stage_io_func3 = EX_MEM_io_EX_MEM_func3_out; // @[Core.scala 284:49]
  assign memory_stage_io_EX_MEM_csr_data = EX_MEM_io_csr_data_o; // @[Core.scala 287:49]
  assign memory_stage_io_data_gnt_i = io_data_gnt_i; // @[Core.scala 289:49]
  assign memory_stage_io_data_rvalid_i = io_data_rvalid_i; // @[Core.scala 290:49]
  assign memory_stage_io_data_rdata_i = io_data_rdata_i; // @[Core.scala 291:49]
  assign writeback_io_MEM_WB_MemToReg = MEM_WB_io_ctrl_MemToReg_out; // @[Core.scala 316:49]
  assign writeback_io_MEM_WB_dataMem_data = MEM_WB_io_dmem_data_out; // @[Core.scala 320:49]
  assign writeback_io_MEM_WB_alu_output = MEM_WB_io_alu_output; // @[Core.scala 321:49]
endmodule
module TL_Err(
  input         io_tl_i_a_valid,
  input  [2:0]  io_tl_i_a_opcode,
  input  [31:0] io_tl_i_a_address,
  input  [3:0]  io_tl_i_a_mask,
  output        io_err_o
);
  wire  op_get = io_tl_i_a_opcode == 3'h4; // @[TL_Err.scala 19:30]
  wire  op_partial = io_tl_i_a_opcode == 3'h1; // @[TL_Err.scala 20:34]
  wire  _T_5 = op_get | op_partial; // @[TL_Err.scala 23:28]
  wire  op_full = io_tl_i_a_opcode == 3'h0; // @[TL_Err.scala 21:31]
  wire  opcode_allowed = _T_5 | op_full; // @[TL_Err.scala 23:42]
  wire  _T_35 = |io_tl_i_a_address[1:0]; // @[TL_Err.scala 48:61]
  wire  _T_36 = ~_T_35; // @[TL_Err.scala 48:24]
  wire  addr_size_chk = io_tl_i_a_valid & _T_36; // @[TL_Err.scala 38:25]
  wire  _T_39 = addr_size_chk & io_tl_i_a_valid; // @[TL_Err.scala 58:37]
  wire  _T_38 = &io_tl_i_a_mask; // @[TL_Err.scala 50:43]
  wire  fulldata_chk = io_tl_i_a_valid & _T_38; // @[TL_Err.scala 38:25]
  wire  _T_41 = _T_5 | fulldata_chk; // @[TL_Err.scala 58:74]
  wire  a_config_allowed = _T_39 & _T_41; // @[TL_Err.scala 58:49]
  wire  _T = opcode_allowed & a_config_allowed; // @[TL_Err.scala 17:32]
  assign io_err_o = ~_T; // @[TL_Err.scala 17:12 TL_Err.scala 60:12]
endmodule
module TL_RegAdapter(
  input         clock,
  input         reset,
  input         io_tl_i_a_valid,
  input  [2:0]  io_tl_i_a_opcode,
  input  [31:0] io_tl_i_a_address,
  input  [3:0]  io_tl_i_a_mask,
  input  [31:0] io_tl_i_a_data,
  output        io_tl_o_d_valid,
  output [31:0] io_tl_o_d_data,
  output        io_tl_o_a_ready,
  output        io_we_o,
  output [5:0]  io_addr_o,
  output [31:0] io_wdata_o,
  output [3:0]  io_be_o,
  input  [31:0] io_rdata_i
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  tlErr_io_tl_i_a_valid; // @[TL_RegAdapter.scala 90:21]
  wire [2:0] tlErr_io_tl_i_a_opcode; // @[TL_RegAdapter.scala 90:21]
  wire [31:0] tlErr_io_tl_i_a_address; // @[TL_RegAdapter.scala 90:21]
  wire [3:0] tlErr_io_tl_i_a_mask; // @[TL_RegAdapter.scala 90:21]
  wire  tlErr_io_err_o; // @[TL_RegAdapter.scala 90:21]
  reg [31:0] rdata_q; // @[TL_RegAdapter.scala 29:24]
  reg  outstanding; // @[TL_RegAdapter.scala 43:28]
  wire  a_ack = io_tl_i_a_valid & io_tl_o_a_ready; // @[TL_RegAdapter.scala 46:28]
  wire  _T_2 = io_tl_i_a_opcode == 3'h0; // @[TL_RegAdapter.scala 50:41]
  wire  _T_3 = io_tl_i_a_opcode == 3'h1; // @[TL_RegAdapter.scala 50:91]
  wire  _T_4 = _T_2 | _T_3; // @[TL_RegAdapter.scala 50:70]
  wire  wr_req = a_ack & _T_4; // @[TL_RegAdapter.scala 50:19]
  wire  _T_21 = |io_tl_i_a_address[1:0]; // @[TL_RegAdapter.scala 84:46]
  wire  addr_align_err = wr_req & _T_21; // @[TL_RegAdapter.scala 83:16]
  wire  tl_err = tlErr_io_err_o; // @[TL_RegAdapter.scala 34:20 TL_RegAdapter.scala 92:10]
  wire  err_internal = addr_align_err | tl_err; // @[TL_RegAdapter.scala 81:34]
  wire  _T_8 = ~err_internal; // @[TL_RegAdapter.scala 53:24]
  wire  _GEN_0 = io_tl_o_d_valid ? 1'h0 : outstanding; // @[TL_RegAdapter.scala 67:22]
  wire  _GEN_1 = a_ack | _GEN_0; // @[TL_RegAdapter.scala 60:15]
  TL_Err tlErr ( // @[TL_RegAdapter.scala 90:21]
    .io_tl_i_a_valid(tlErr_io_tl_i_a_valid),
    .io_tl_i_a_opcode(tlErr_io_tl_i_a_opcode),
    .io_tl_i_a_address(tlErr_io_tl_i_a_address),
    .io_tl_i_a_mask(tlErr_io_tl_i_a_mask),
    .io_err_o(tlErr_io_err_o)
  );
  assign io_tl_o_d_valid = outstanding; // @[TL_RegAdapter.scala 72:19]
  assign io_tl_o_d_data = rdata_q; // @[TL_RegAdapter.scala 78:18]
  assign io_tl_o_a_ready = ~outstanding; // @[TL_RegAdapter.scala 71:19]
  assign io_we_o = wr_req & _T_8; // @[TL_RegAdapter.scala 53:11]
  assign io_addr_o = {io_tl_i_a_address[5:2],2'h0}; // @[TL_RegAdapter.scala 55:13]
  assign io_wdata_o = io_tl_i_a_data; // @[TL_RegAdapter.scala 56:14]
  assign io_be_o = io_tl_i_a_mask; // @[TL_RegAdapter.scala 57:11]
  assign tlErr_io_tl_i_a_valid = io_tl_i_a_valid; // @[TL_RegAdapter.scala 91:17]
  assign tlErr_io_tl_i_a_opcode = io_tl_i_a_opcode; // @[TL_RegAdapter.scala 91:17]
  assign tlErr_io_tl_i_a_address = io_tl_i_a_address; // @[TL_RegAdapter.scala 91:17]
  assign tlErr_io_tl_i_a_mask = io_tl_i_a_mask; // @[TL_RegAdapter.scala 91:17]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rdata_q = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  outstanding = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rdata_q <= 32'h0;
    end else if (a_ack) begin
      if (err_internal) begin
        rdata_q <= 32'hffffffff;
      end else begin
        rdata_q <= io_rdata_i;
      end
    end
    if (reset) begin
      outstanding <= 1'h0;
    end else begin
      outstanding <= _GEN_1;
    end
  end
endmodule
module SubReg(
  input         clock,
  input         reset,
  input         io_we,
  input  [31:0] io_wd,
  input         io_de,
  input  [31:0] io_d,
  output [31:0] io_q,
  output [31:0] io_qs
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] q_reg; // @[SubReg.scala 24:22]
  wire  wr_en = io_we | io_de; // @[SubReg.scala 33:20]
  wire [31:0] _T_1 = io_de ? io_d : q_reg; // @[SubReg.scala 34:19]
  wire [31:0] _T_2 = ~io_wd; // @[SubReg.scala 34:53]
  wire [31:0] _T_4 = io_we ? _T_2 : 32'hffffffff; // @[SubReg.scala 34:45]
  wire [31:0] wr_data = _T_1 & _T_4; // @[SubReg.scala 34:40]
  assign io_q = q_reg; // @[SubReg.scala 52:8]
  assign io_qs = q_reg; // @[SubReg.scala 51:9]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  q_reg = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      q_reg <= 32'h0;
    end else if (wr_en) begin
      q_reg <= wr_data;
    end
  end
endmodule
module SubReg_1(
  input         clock,
  input         reset,
  input         io_we,
  input  [31:0] io_wd,
  output [31:0] io_q,
  output [31:0] io_qs
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] q_reg; // @[SubReg.scala 24:22]
  assign io_q = q_reg; // @[SubReg.scala 52:8]
  assign io_qs = q_reg; // @[SubReg.scala 51:9]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  q_reg = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      q_reg <= 32'h0;
    end else if (io_we) begin
      if (io_we) begin
        q_reg <= io_wd;
      end else begin
        q_reg <= 32'h0;
      end
    end
  end
endmodule
module SubRegExt(
  input         io_we,
  input  [31:0] io_wd,
  input  [31:0] io_d,
  output        io_qe,
  output [31:0] io_q,
  output [31:0] io_qs
);
  assign io_qe = io_we; // @[SubRegExt.scala 24:9]
  assign io_q = io_wd; // @[SubRegExt.scala 23:8]
  assign io_qs = io_d; // @[SubRegExt.scala 22:9]
endmodule
module SubReg_2(
  input         clock,
  input         reset,
  input  [31:0] io_d,
  output [31:0] io_qs
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] q_reg; // @[SubReg.scala 24:22]
  assign io_qs = q_reg; // @[SubReg.scala 51:9]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  q_reg = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      q_reg <= 32'h0;
    end else begin
      q_reg <= io_d;
    end
  end
endmodule
module SubRegExt_2(
  input         io_we,
  input  [15:0] io_wd,
  input  [15:0] io_d,
  output        io_qe,
  output [15:0] io_q,
  output [15:0] io_qs
);
  assign io_qe = io_we; // @[SubRegExt.scala 24:9]
  assign io_q = io_wd; // @[SubRegExt.scala 23:8]
  assign io_qs = io_d; // @[SubRegExt.scala 22:9]
endmodule
module GpioRegTop(
  input         clock,
  input         reset,
  input         io_tl_i_a_valid,
  input  [2:0]  io_tl_i_a_opcode,
  input  [31:0] io_tl_i_a_address,
  input  [3:0]  io_tl_i_a_mask,
  input  [31:0] io_tl_i_a_data,
  output        io_tl_o_d_valid,
  output [31:0] io_tl_o_d_data,
  output        io_tl_o_a_ready,
  output [31:0] io_reg2hw_intr_state_q,
  output [31:0] io_reg2hw_intr_enable_q,
  output [31:0] io_reg2hw_intr_test_q,
  output        io_reg2hw_intr_test_qe,
  output [31:0] io_reg2hw_direct_out_q,
  output        io_reg2hw_direct_out_qe,
  output [15:0] io_reg2hw_masked_out_lower_data_q,
  output        io_reg2hw_masked_out_lower_data_qe,
  output [15:0] io_reg2hw_masked_out_lower_mask_q,
  output [15:0] io_reg2hw_masked_out_upper_data_q,
  output        io_reg2hw_masked_out_upper_data_qe,
  output [15:0] io_reg2hw_masked_out_upper_mask_q,
  output [31:0] io_reg2hw_direct_oe_q,
  output        io_reg2hw_direct_oe_qe,
  output [15:0] io_reg2hw_masked_oe_lower_data_q,
  output        io_reg2hw_masked_oe_lower_data_qe,
  output [15:0] io_reg2hw_masked_oe_lower_mask_q,
  output [15:0] io_reg2hw_masked_oe_upper_data_q,
  output        io_reg2hw_masked_oe_upper_data_qe,
  output [15:0] io_reg2hw_masked_oe_upper_mask_q,
  output [31:0] io_reg2hw_intr_ctrl_en_rising_q,
  output [31:0] io_reg2hw_intr_ctrl_en_falling_q,
  output [31:0] io_reg2hw_intr_ctrl_en_lvlHigh_q,
  output [31:0] io_reg2hw_intr_ctrl_en_lvlLow_q,
  input  [31:0] io_hw2reg_intr_state_d,
  input         io_hw2reg_intr_state_de,
  input  [31:0] io_hw2reg_data_in_d,
  input  [31:0] io_hw2reg_direct_out_d,
  input  [15:0] io_hw2reg_masked_out_lower_data_d,
  input  [15:0] io_hw2reg_masked_out_upper_data_d,
  input  [31:0] io_hw2reg_direct_oe_d,
  input  [15:0] io_hw2reg_masked_oe_lower_data_d,
  input  [15:0] io_hw2reg_masked_oe_upper_data_d
);
  wire  tlul_regAdapter_clock; // @[GpioRegTop.scala 26:31]
  wire  tlul_regAdapter_reset; // @[GpioRegTop.scala 26:31]
  wire  tlul_regAdapter_io_tl_i_a_valid; // @[GpioRegTop.scala 26:31]
  wire [2:0] tlul_regAdapter_io_tl_i_a_opcode; // @[GpioRegTop.scala 26:31]
  wire [31:0] tlul_regAdapter_io_tl_i_a_address; // @[GpioRegTop.scala 26:31]
  wire [3:0] tlul_regAdapter_io_tl_i_a_mask; // @[GpioRegTop.scala 26:31]
  wire [31:0] tlul_regAdapter_io_tl_i_a_data; // @[GpioRegTop.scala 26:31]
  wire  tlul_regAdapter_io_tl_o_d_valid; // @[GpioRegTop.scala 26:31]
  wire [31:0] tlul_regAdapter_io_tl_o_d_data; // @[GpioRegTop.scala 26:31]
  wire  tlul_regAdapter_io_tl_o_a_ready; // @[GpioRegTop.scala 26:31]
  wire  tlul_regAdapter_io_we_o; // @[GpioRegTop.scala 26:31]
  wire [5:0] tlul_regAdapter_io_addr_o; // @[GpioRegTop.scala 26:31]
  wire [31:0] tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 26:31]
  wire [3:0] tlul_regAdapter_io_be_o; // @[GpioRegTop.scala 26:31]
  wire [31:0] tlul_regAdapter_io_rdata_i; // @[GpioRegTop.scala 26:31]
  wire  intr_state_reg_clock; // @[GpioRegTop.scala 87:30]
  wire  intr_state_reg_reset; // @[GpioRegTop.scala 87:30]
  wire  intr_state_reg_io_we; // @[GpioRegTop.scala 87:30]
  wire [31:0] intr_state_reg_io_wd; // @[GpioRegTop.scala 87:30]
  wire  intr_state_reg_io_de; // @[GpioRegTop.scala 87:30]
  wire [31:0] intr_state_reg_io_d; // @[GpioRegTop.scala 87:30]
  wire [31:0] intr_state_reg_io_q; // @[GpioRegTop.scala 87:30]
  wire [31:0] intr_state_reg_io_qs; // @[GpioRegTop.scala 87:30]
  wire  intr_enable_reg_clock; // @[GpioRegTop.scala 102:31]
  wire  intr_enable_reg_reset; // @[GpioRegTop.scala 102:31]
  wire  intr_enable_reg_io_we; // @[GpioRegTop.scala 102:31]
  wire [31:0] intr_enable_reg_io_wd; // @[GpioRegTop.scala 102:31]
  wire [31:0] intr_enable_reg_io_q; // @[GpioRegTop.scala 102:31]
  wire [31:0] intr_enable_reg_io_qs; // @[GpioRegTop.scala 102:31]
  wire  intr_test_reg_io_we; // @[GpioRegTop.scala 111:29]
  wire [31:0] intr_test_reg_io_wd; // @[GpioRegTop.scala 111:29]
  wire [31:0] intr_test_reg_io_d; // @[GpioRegTop.scala 111:29]
  wire  intr_test_reg_io_qe; // @[GpioRegTop.scala 111:29]
  wire [31:0] intr_test_reg_io_q; // @[GpioRegTop.scala 111:29]
  wire [31:0] intr_test_reg_io_qs; // @[GpioRegTop.scala 111:29]
  wire  data_in_reg_clock; // @[GpioRegTop.scala 120:27]
  wire  data_in_reg_reset; // @[GpioRegTop.scala 120:27]
  wire [31:0] data_in_reg_io_d; // @[GpioRegTop.scala 120:27]
  wire [31:0] data_in_reg_io_qs; // @[GpioRegTop.scala 120:27]
  wire  direct_out_reg_io_we; // @[GpioRegTop.scala 128:30]
  wire [31:0] direct_out_reg_io_wd; // @[GpioRegTop.scala 128:30]
  wire [31:0] direct_out_reg_io_d; // @[GpioRegTop.scala 128:30]
  wire  direct_out_reg_io_qe; // @[GpioRegTop.scala 128:30]
  wire [31:0] direct_out_reg_io_q; // @[GpioRegTop.scala 128:30]
  wire [31:0] direct_out_reg_io_qs; // @[GpioRegTop.scala 128:30]
  wire  masked_out_lower_data_reg_io_we; // @[GpioRegTop.scala 139:41]
  wire [15:0] masked_out_lower_data_reg_io_wd; // @[GpioRegTop.scala 139:41]
  wire [15:0] masked_out_lower_data_reg_io_d; // @[GpioRegTop.scala 139:41]
  wire  masked_out_lower_data_reg_io_qe; // @[GpioRegTop.scala 139:41]
  wire [15:0] masked_out_lower_data_reg_io_q; // @[GpioRegTop.scala 139:41]
  wire [15:0] masked_out_lower_data_reg_io_qs; // @[GpioRegTop.scala 139:41]
  wire  masked_out_lower_mask_reg_io_we; // @[GpioRegTop.scala 150:41]
  wire [15:0] masked_out_lower_mask_reg_io_wd; // @[GpioRegTop.scala 150:41]
  wire [15:0] masked_out_lower_mask_reg_io_d; // @[GpioRegTop.scala 150:41]
  wire  masked_out_lower_mask_reg_io_qe; // @[GpioRegTop.scala 150:41]
  wire [15:0] masked_out_lower_mask_reg_io_q; // @[GpioRegTop.scala 150:41]
  wire [15:0] masked_out_lower_mask_reg_io_qs; // @[GpioRegTop.scala 150:41]
  wire  masked_out_upper_data_reg_io_we; // @[GpioRegTop.scala 160:41]
  wire [15:0] masked_out_upper_data_reg_io_wd; // @[GpioRegTop.scala 160:41]
  wire [15:0] masked_out_upper_data_reg_io_d; // @[GpioRegTop.scala 160:41]
  wire  masked_out_upper_data_reg_io_qe; // @[GpioRegTop.scala 160:41]
  wire [15:0] masked_out_upper_data_reg_io_q; // @[GpioRegTop.scala 160:41]
  wire [15:0] masked_out_upper_data_reg_io_qs; // @[GpioRegTop.scala 160:41]
  wire  masked_out_upper_mask_reg_io_we; // @[GpioRegTop.scala 171:41]
  wire [15:0] masked_out_upper_mask_reg_io_wd; // @[GpioRegTop.scala 171:41]
  wire [15:0] masked_out_upper_mask_reg_io_d; // @[GpioRegTop.scala 171:41]
  wire  masked_out_upper_mask_reg_io_qe; // @[GpioRegTop.scala 171:41]
  wire [15:0] masked_out_upper_mask_reg_io_q; // @[GpioRegTop.scala 171:41]
  wire [15:0] masked_out_upper_mask_reg_io_qs; // @[GpioRegTop.scala 171:41]
  wire  direct_oe_reg_io_we; // @[GpioRegTop.scala 180:29]
  wire [31:0] direct_oe_reg_io_wd; // @[GpioRegTop.scala 180:29]
  wire [31:0] direct_oe_reg_io_d; // @[GpioRegTop.scala 180:29]
  wire  direct_oe_reg_io_qe; // @[GpioRegTop.scala 180:29]
  wire [31:0] direct_oe_reg_io_q; // @[GpioRegTop.scala 180:29]
  wire [31:0] direct_oe_reg_io_qs; // @[GpioRegTop.scala 180:29]
  wire  masked_oe_lower_data_reg_io_we; // @[GpioRegTop.scala 191:40]
  wire [15:0] masked_oe_lower_data_reg_io_wd; // @[GpioRegTop.scala 191:40]
  wire [15:0] masked_oe_lower_data_reg_io_d; // @[GpioRegTop.scala 191:40]
  wire  masked_oe_lower_data_reg_io_qe; // @[GpioRegTop.scala 191:40]
  wire [15:0] masked_oe_lower_data_reg_io_q; // @[GpioRegTop.scala 191:40]
  wire [15:0] masked_oe_lower_data_reg_io_qs; // @[GpioRegTop.scala 191:40]
  wire  masked_oe_lower_mask_reg_io_we; // @[GpioRegTop.scala 202:40]
  wire [15:0] masked_oe_lower_mask_reg_io_wd; // @[GpioRegTop.scala 202:40]
  wire [15:0] masked_oe_lower_mask_reg_io_d; // @[GpioRegTop.scala 202:40]
  wire  masked_oe_lower_mask_reg_io_qe; // @[GpioRegTop.scala 202:40]
  wire [15:0] masked_oe_lower_mask_reg_io_q; // @[GpioRegTop.scala 202:40]
  wire [15:0] masked_oe_lower_mask_reg_io_qs; // @[GpioRegTop.scala 202:40]
  wire  masked_oe_upper_data_reg_io_we; // @[GpioRegTop.scala 213:40]
  wire [15:0] masked_oe_upper_data_reg_io_wd; // @[GpioRegTop.scala 213:40]
  wire [15:0] masked_oe_upper_data_reg_io_d; // @[GpioRegTop.scala 213:40]
  wire  masked_oe_upper_data_reg_io_qe; // @[GpioRegTop.scala 213:40]
  wire [15:0] masked_oe_upper_data_reg_io_q; // @[GpioRegTop.scala 213:40]
  wire [15:0] masked_oe_upper_data_reg_io_qs; // @[GpioRegTop.scala 213:40]
  wire  masked_oe_upper_mask_reg_io_we; // @[GpioRegTop.scala 224:40]
  wire [15:0] masked_oe_upper_mask_reg_io_wd; // @[GpioRegTop.scala 224:40]
  wire [15:0] masked_oe_upper_mask_reg_io_d; // @[GpioRegTop.scala 224:40]
  wire  masked_oe_upper_mask_reg_io_qe; // @[GpioRegTop.scala 224:40]
  wire [15:0] masked_oe_upper_mask_reg_io_q; // @[GpioRegTop.scala 224:40]
  wire [15:0] masked_oe_upper_mask_reg_io_qs; // @[GpioRegTop.scala 224:40]
  wire  intr_ctrl_en_rising_reg_clock; // @[GpioRegTop.scala 234:39]
  wire  intr_ctrl_en_rising_reg_reset; // @[GpioRegTop.scala 234:39]
  wire  intr_ctrl_en_rising_reg_io_we; // @[GpioRegTop.scala 234:39]
  wire [31:0] intr_ctrl_en_rising_reg_io_wd; // @[GpioRegTop.scala 234:39]
  wire [31:0] intr_ctrl_en_rising_reg_io_q; // @[GpioRegTop.scala 234:39]
  wire [31:0] intr_ctrl_en_rising_reg_io_qs; // @[GpioRegTop.scala 234:39]
  wire  intr_ctrl_en_falling_reg_clock; // @[GpioRegTop.scala 243:40]
  wire  intr_ctrl_en_falling_reg_reset; // @[GpioRegTop.scala 243:40]
  wire  intr_ctrl_en_falling_reg_io_we; // @[GpioRegTop.scala 243:40]
  wire [31:0] intr_ctrl_en_falling_reg_io_wd; // @[GpioRegTop.scala 243:40]
  wire [31:0] intr_ctrl_en_falling_reg_io_q; // @[GpioRegTop.scala 243:40]
  wire [31:0] intr_ctrl_en_falling_reg_io_qs; // @[GpioRegTop.scala 243:40]
  wire  intr_ctrl_en_lvlhigh_reg_clock; // @[GpioRegTop.scala 252:40]
  wire  intr_ctrl_en_lvlhigh_reg_reset; // @[GpioRegTop.scala 252:40]
  wire  intr_ctrl_en_lvlhigh_reg_io_we; // @[GpioRegTop.scala 252:40]
  wire [31:0] intr_ctrl_en_lvlhigh_reg_io_wd; // @[GpioRegTop.scala 252:40]
  wire [31:0] intr_ctrl_en_lvlhigh_reg_io_q; // @[GpioRegTop.scala 252:40]
  wire [31:0] intr_ctrl_en_lvlhigh_reg_io_qs; // @[GpioRegTop.scala 252:40]
  wire  intr_ctrl_en_lvllow_reg_clock; // @[GpioRegTop.scala 261:39]
  wire  intr_ctrl_en_lvllow_reg_reset; // @[GpioRegTop.scala 261:39]
  wire  intr_ctrl_en_lvllow_reg_io_we; // @[GpioRegTop.scala 261:39]
  wire [31:0] intr_ctrl_en_lvllow_reg_io_wd; // @[GpioRegTop.scala 261:39]
  wire [31:0] intr_ctrl_en_lvllow_reg_io_q; // @[GpioRegTop.scala 261:39]
  wire [31:0] intr_ctrl_en_lvllow_reg_io_qs; // @[GpioRegTop.scala 261:39]
  wire  reg_we = tlul_regAdapter_io_we_o; // @[GpioRegTop.scala 18:39 GpioRegTop.scala 29:10]
  wire [5:0] reg_addr = tlul_regAdapter_io_addr_o; // @[GpioRegTop.scala 20:22 GpioRegTop.scala 32:12]
  wire  addr_hit_0 = reg_addr == 6'h0; // @[GpioRegTop.scala 271:28]
  wire  addr_hit_1 = reg_addr == 6'h4; // @[GpioRegTop.scala 272:28]
  wire  addr_hit_2 = reg_addr == 6'h8; // @[GpioRegTop.scala 273:28]
  wire  addr_hit_3 = reg_addr == 6'hc; // @[GpioRegTop.scala 274:28]
  wire  addr_hit_4 = reg_addr == 6'h10; // @[GpioRegTop.scala 275:28]
  wire  addr_hit_5 = reg_addr == 6'h14; // @[GpioRegTop.scala 276:28]
  wire  addr_hit_6 = reg_addr == 6'h18; // @[GpioRegTop.scala 277:28]
  wire  addr_hit_7 = reg_addr == 6'h1c; // @[GpioRegTop.scala 278:28]
  wire  addr_hit_8 = reg_addr == 6'h20; // @[GpioRegTop.scala 279:28]
  wire  addr_hit_9 = reg_addr == 6'h24; // @[GpioRegTop.scala 280:28]
  wire  addr_hit_10 = reg_addr == 6'h28; // @[GpioRegTop.scala 281:28]
  wire  addr_hit_11 = reg_addr == 6'h2c; // @[GpioRegTop.scala 282:28]
  wire  addr_hit_12 = reg_addr == 6'h30; // @[GpioRegTop.scala 283:28]
  wire  addr_hit_13 = reg_addr == 6'h34; // @[GpioRegTop.scala 284:28]
  wire  _T_111 = addr_hit_13 & reg_we; // @[GpioRegTop.scala 296:31]
  wire [3:0] reg_be = tlul_regAdapter_io_be_o; // @[GpioRegTop.scala 21:20 GpioRegTop.scala 33:10]
  wire  _T_113 = 4'hf != reg_be; // @[GpioRegTop.scala 296:60]
  wire  wr_err = _T_111 & _T_113; // @[GpioRegTop.scala 296:41]
  wire  _T_46 = addr_hit_0 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_51 = addr_hit_1 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_56 = addr_hit_2 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_66 = addr_hit_4 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_71 = addr_hit_5 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_76 = addr_hit_6 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_81 = addr_hit_7 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_86 = addr_hit_8 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_91 = addr_hit_9 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_96 = addr_hit_10 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_101 = addr_hit_11 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_106 = addr_hit_12 & reg_we; // @[GpioRegTop.scala 296:31]
  wire  _T_117 = ~wr_err; // @[GpioRegTop.scala 303:43]
  wire [31:0] reg_wdata = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 19:34 GpioRegTop.scala 31:13]
  wire [15:0] masked_out_lower_data_qs = masked_out_lower_data_reg_io_qs; // @[GpioRegTop.scala 56:90 GpioRegTop.scala 146:28]
  wire [31:0] _T_183 = {16'h0,masked_out_lower_data_qs}; // @[Cat.scala 29:58]
  wire [15:0] masked_out_upper_data_qs = masked_out_upper_data_reg_io_qs; // @[GpioRegTop.scala 59:90 GpioRegTop.scala 167:28]
  wire [31:0] _T_184 = {16'h0,masked_out_upper_data_qs}; // @[Cat.scala 29:58]
  wire [15:0] masked_oe_lower_mask_qs = masked_oe_lower_mask_reg_io_qs; // @[GpioRegTop.scala 66:112 GpioRegTop.scala 209:27]
  wire [15:0] masked_oe_lower_data_qs = masked_oe_lower_data_reg_io_qs; // @[GpioRegTop.scala 66:112 GpioRegTop.scala 198:27]
  wire [31:0] _T_185 = {masked_oe_lower_mask_qs,masked_oe_lower_data_qs}; // @[Cat.scala 29:58]
  wire [15:0] masked_oe_upper_mask_qs = masked_oe_upper_mask_reg_io_qs; // @[GpioRegTop.scala 69:112 GpioRegTop.scala 231:27]
  wire [15:0] masked_oe_upper_data_qs = masked_oe_upper_data_reg_io_qs; // @[GpioRegTop.scala 69:112 GpioRegTop.scala 220:27]
  wire [31:0] _T_186 = {masked_oe_upper_mask_qs,masked_oe_upper_data_qs}; // @[Cat.scala 29:58]
  wire [31:0] intr_ctrl_en_lvllow_qs = intr_ctrl_en_lvllow_reg_io_qs; // @[GpioRegTop.scala 81:60 GpioRegTop.scala 267:26]
  wire [31:0] _GEN_0 = addr_hit_13 ? intr_ctrl_en_lvllow_qs : 32'hffffffff; // @[GpioRegTop.scala 389:28]
  wire [31:0] intr_ctrl_en_lvlhigh_qs = intr_ctrl_en_lvlhigh_reg_io_qs; // @[GpioRegTop.scala 78:62 GpioRegTop.scala 258:27]
  wire [31:0] _GEN_1 = addr_hit_12 ? intr_ctrl_en_lvlhigh_qs : _GEN_0; // @[GpioRegTop.scala 387:28]
  wire [31:0] intr_ctrl_en_falling_qs = intr_ctrl_en_falling_reg_io_qs; // @[GpioRegTop.scala 75:62 GpioRegTop.scala 249:27]
  wire [31:0] _GEN_2 = addr_hit_11 ? intr_ctrl_en_falling_qs : _GEN_1; // @[GpioRegTop.scala 385:28]
  wire [31:0] intr_ctrl_en_rising_qs = intr_ctrl_en_rising_reg_io_qs; // @[GpioRegTop.scala 72:60 GpioRegTop.scala 240:26]
  wire [31:0] _GEN_3 = addr_hit_10 ? intr_ctrl_en_rising_qs : _GEN_2; // @[GpioRegTop.scala 383:28]
  wire [31:0] _GEN_4 = addr_hit_9 ? _T_186 : _GEN_3; // @[GpioRegTop.scala 381:27]
  wire [31:0] _GEN_5 = addr_hit_8 ? _T_185 : _GEN_4; // @[GpioRegTop.scala 379:27]
  wire [31:0] direct_oe_qs = direct_oe_reg_io_qs; // @[GpioRegTop.scala 62:26 GpioRegTop.scala 187:16]
  wire [31:0] _GEN_6 = addr_hit_7 ? direct_oe_qs : _GEN_5; // @[GpioRegTop.scala 377:27]
  wire [31:0] _GEN_7 = addr_hit_6 ? _T_184 : _GEN_6; // @[GpioRegTop.scala 375:27]
  wire [31:0] _GEN_8 = addr_hit_5 ? _T_183 : _GEN_7; // @[GpioRegTop.scala 373:27]
  wire [31:0] direct_out_qs = direct_out_reg_io_qs; // @[GpioRegTop.scala 53:42 GpioRegTop.scala 135:17]
  wire [31:0] _GEN_9 = addr_hit_4 ? direct_out_qs : _GEN_8; // @[GpioRegTop.scala 371:27]
  wire [31:0] data_in_qs = data_in_reg_io_qs; // @[GpioRegTop.scala 51:24 GpioRegTop.scala 125:14]
  wire [31:0] _GEN_10 = addr_hit_3 ? data_in_qs : _GEN_9; // @[GpioRegTop.scala 369:27]
  wire [31:0] _GEN_11 = addr_hit_2 ? 32'h0 : _GEN_10; // @[GpioRegTop.scala 367:27]
  wire [31:0] intr_enable_qs = intr_enable_reg_io_qs; // @[GpioRegTop.scala 45:44 GpioRegTop.scala 108:18]
  wire [31:0] _GEN_12 = addr_hit_1 ? intr_enable_qs : _GEN_11; // @[GpioRegTop.scala 365:27]
  wire [31:0] intr_state_qs = intr_state_reg_io_qs; // @[GpioRegTop.scala 42:42 GpioRegTop.scala 99:17]
  TL_RegAdapter tlul_regAdapter ( // @[GpioRegTop.scala 26:31]
    .clock(tlul_regAdapter_clock),
    .reset(tlul_regAdapter_reset),
    .io_tl_i_a_valid(tlul_regAdapter_io_tl_i_a_valid),
    .io_tl_i_a_opcode(tlul_regAdapter_io_tl_i_a_opcode),
    .io_tl_i_a_address(tlul_regAdapter_io_tl_i_a_address),
    .io_tl_i_a_mask(tlul_regAdapter_io_tl_i_a_mask),
    .io_tl_i_a_data(tlul_regAdapter_io_tl_i_a_data),
    .io_tl_o_d_valid(tlul_regAdapter_io_tl_o_d_valid),
    .io_tl_o_d_data(tlul_regAdapter_io_tl_o_d_data),
    .io_tl_o_a_ready(tlul_regAdapter_io_tl_o_a_ready),
    .io_we_o(tlul_regAdapter_io_we_o),
    .io_addr_o(tlul_regAdapter_io_addr_o),
    .io_wdata_o(tlul_regAdapter_io_wdata_o),
    .io_be_o(tlul_regAdapter_io_be_o),
    .io_rdata_i(tlul_regAdapter_io_rdata_i)
  );
  SubReg intr_state_reg ( // @[GpioRegTop.scala 87:30]
    .clock(intr_state_reg_clock),
    .reset(intr_state_reg_reset),
    .io_we(intr_state_reg_io_we),
    .io_wd(intr_state_reg_io_wd),
    .io_de(intr_state_reg_io_de),
    .io_d(intr_state_reg_io_d),
    .io_q(intr_state_reg_io_q),
    .io_qs(intr_state_reg_io_qs)
  );
  SubReg_1 intr_enable_reg ( // @[GpioRegTop.scala 102:31]
    .clock(intr_enable_reg_clock),
    .reset(intr_enable_reg_reset),
    .io_we(intr_enable_reg_io_we),
    .io_wd(intr_enable_reg_io_wd),
    .io_q(intr_enable_reg_io_q),
    .io_qs(intr_enable_reg_io_qs)
  );
  SubRegExt intr_test_reg ( // @[GpioRegTop.scala 111:29]
    .io_we(intr_test_reg_io_we),
    .io_wd(intr_test_reg_io_wd),
    .io_d(intr_test_reg_io_d),
    .io_qe(intr_test_reg_io_qe),
    .io_q(intr_test_reg_io_q),
    .io_qs(intr_test_reg_io_qs)
  );
  SubReg_2 data_in_reg ( // @[GpioRegTop.scala 120:27]
    .clock(data_in_reg_clock),
    .reset(data_in_reg_reset),
    .io_d(data_in_reg_io_d),
    .io_qs(data_in_reg_io_qs)
  );
  SubRegExt direct_out_reg ( // @[GpioRegTop.scala 128:30]
    .io_we(direct_out_reg_io_we),
    .io_wd(direct_out_reg_io_wd),
    .io_d(direct_out_reg_io_d),
    .io_qe(direct_out_reg_io_qe),
    .io_q(direct_out_reg_io_q),
    .io_qs(direct_out_reg_io_qs)
  );
  SubRegExt_2 masked_out_lower_data_reg ( // @[GpioRegTop.scala 139:41]
    .io_we(masked_out_lower_data_reg_io_we),
    .io_wd(masked_out_lower_data_reg_io_wd),
    .io_d(masked_out_lower_data_reg_io_d),
    .io_qe(masked_out_lower_data_reg_io_qe),
    .io_q(masked_out_lower_data_reg_io_q),
    .io_qs(masked_out_lower_data_reg_io_qs)
  );
  SubRegExt_2 masked_out_lower_mask_reg ( // @[GpioRegTop.scala 150:41]
    .io_we(masked_out_lower_mask_reg_io_we),
    .io_wd(masked_out_lower_mask_reg_io_wd),
    .io_d(masked_out_lower_mask_reg_io_d),
    .io_qe(masked_out_lower_mask_reg_io_qe),
    .io_q(masked_out_lower_mask_reg_io_q),
    .io_qs(masked_out_lower_mask_reg_io_qs)
  );
  SubRegExt_2 masked_out_upper_data_reg ( // @[GpioRegTop.scala 160:41]
    .io_we(masked_out_upper_data_reg_io_we),
    .io_wd(masked_out_upper_data_reg_io_wd),
    .io_d(masked_out_upper_data_reg_io_d),
    .io_qe(masked_out_upper_data_reg_io_qe),
    .io_q(masked_out_upper_data_reg_io_q),
    .io_qs(masked_out_upper_data_reg_io_qs)
  );
  SubRegExt_2 masked_out_upper_mask_reg ( // @[GpioRegTop.scala 171:41]
    .io_we(masked_out_upper_mask_reg_io_we),
    .io_wd(masked_out_upper_mask_reg_io_wd),
    .io_d(masked_out_upper_mask_reg_io_d),
    .io_qe(masked_out_upper_mask_reg_io_qe),
    .io_q(masked_out_upper_mask_reg_io_q),
    .io_qs(masked_out_upper_mask_reg_io_qs)
  );
  SubRegExt direct_oe_reg ( // @[GpioRegTop.scala 180:29]
    .io_we(direct_oe_reg_io_we),
    .io_wd(direct_oe_reg_io_wd),
    .io_d(direct_oe_reg_io_d),
    .io_qe(direct_oe_reg_io_qe),
    .io_q(direct_oe_reg_io_q),
    .io_qs(direct_oe_reg_io_qs)
  );
  SubRegExt_2 masked_oe_lower_data_reg ( // @[GpioRegTop.scala 191:40]
    .io_we(masked_oe_lower_data_reg_io_we),
    .io_wd(masked_oe_lower_data_reg_io_wd),
    .io_d(masked_oe_lower_data_reg_io_d),
    .io_qe(masked_oe_lower_data_reg_io_qe),
    .io_q(masked_oe_lower_data_reg_io_q),
    .io_qs(masked_oe_lower_data_reg_io_qs)
  );
  SubRegExt_2 masked_oe_lower_mask_reg ( // @[GpioRegTop.scala 202:40]
    .io_we(masked_oe_lower_mask_reg_io_we),
    .io_wd(masked_oe_lower_mask_reg_io_wd),
    .io_d(masked_oe_lower_mask_reg_io_d),
    .io_qe(masked_oe_lower_mask_reg_io_qe),
    .io_q(masked_oe_lower_mask_reg_io_q),
    .io_qs(masked_oe_lower_mask_reg_io_qs)
  );
  SubRegExt_2 masked_oe_upper_data_reg ( // @[GpioRegTop.scala 213:40]
    .io_we(masked_oe_upper_data_reg_io_we),
    .io_wd(masked_oe_upper_data_reg_io_wd),
    .io_d(masked_oe_upper_data_reg_io_d),
    .io_qe(masked_oe_upper_data_reg_io_qe),
    .io_q(masked_oe_upper_data_reg_io_q),
    .io_qs(masked_oe_upper_data_reg_io_qs)
  );
  SubRegExt_2 masked_oe_upper_mask_reg ( // @[GpioRegTop.scala 224:40]
    .io_we(masked_oe_upper_mask_reg_io_we),
    .io_wd(masked_oe_upper_mask_reg_io_wd),
    .io_d(masked_oe_upper_mask_reg_io_d),
    .io_qe(masked_oe_upper_mask_reg_io_qe),
    .io_q(masked_oe_upper_mask_reg_io_q),
    .io_qs(masked_oe_upper_mask_reg_io_qs)
  );
  SubReg_1 intr_ctrl_en_rising_reg ( // @[GpioRegTop.scala 234:39]
    .clock(intr_ctrl_en_rising_reg_clock),
    .reset(intr_ctrl_en_rising_reg_reset),
    .io_we(intr_ctrl_en_rising_reg_io_we),
    .io_wd(intr_ctrl_en_rising_reg_io_wd),
    .io_q(intr_ctrl_en_rising_reg_io_q),
    .io_qs(intr_ctrl_en_rising_reg_io_qs)
  );
  SubReg_1 intr_ctrl_en_falling_reg ( // @[GpioRegTop.scala 243:40]
    .clock(intr_ctrl_en_falling_reg_clock),
    .reset(intr_ctrl_en_falling_reg_reset),
    .io_we(intr_ctrl_en_falling_reg_io_we),
    .io_wd(intr_ctrl_en_falling_reg_io_wd),
    .io_q(intr_ctrl_en_falling_reg_io_q),
    .io_qs(intr_ctrl_en_falling_reg_io_qs)
  );
  SubReg_1 intr_ctrl_en_lvlhigh_reg ( // @[GpioRegTop.scala 252:40]
    .clock(intr_ctrl_en_lvlhigh_reg_clock),
    .reset(intr_ctrl_en_lvlhigh_reg_reset),
    .io_we(intr_ctrl_en_lvlhigh_reg_io_we),
    .io_wd(intr_ctrl_en_lvlhigh_reg_io_wd),
    .io_q(intr_ctrl_en_lvlhigh_reg_io_q),
    .io_qs(intr_ctrl_en_lvlhigh_reg_io_qs)
  );
  SubReg_1 intr_ctrl_en_lvllow_reg ( // @[GpioRegTop.scala 261:39]
    .clock(intr_ctrl_en_lvllow_reg_clock),
    .reset(intr_ctrl_en_lvllow_reg_reset),
    .io_we(intr_ctrl_en_lvllow_reg_io_we),
    .io_wd(intr_ctrl_en_lvllow_reg_io_wd),
    .io_q(intr_ctrl_en_lvllow_reg_io_q),
    .io_qs(intr_ctrl_en_lvllow_reg_io_qs)
  );
  assign io_tl_o_d_valid = tlul_regAdapter_io_tl_o_d_valid; // @[GpioRegTop.scala 28:11]
  assign io_tl_o_d_data = tlul_regAdapter_io_tl_o_d_data; // @[GpioRegTop.scala 28:11]
  assign io_tl_o_a_ready = tlul_regAdapter_io_tl_o_a_ready; // @[GpioRegTop.scala 28:11]
  assign io_reg2hw_intr_state_q = intr_state_reg_io_q; // @[GpioRegTop.scala 97:26]
  assign io_reg2hw_intr_enable_q = intr_enable_reg_io_q; // @[GpioRegTop.scala 107:27]
  assign io_reg2hw_intr_test_q = intr_test_reg_io_q; // @[GpioRegTop.scala 117:25]
  assign io_reg2hw_intr_test_qe = intr_test_reg_io_qe; // @[GpioRegTop.scala 116:26]
  assign io_reg2hw_direct_out_q = direct_out_reg_io_q; // @[GpioRegTop.scala 134:26]
  assign io_reg2hw_direct_out_qe = direct_out_reg_io_qe; // @[GpioRegTop.scala 133:27]
  assign io_reg2hw_masked_out_lower_data_q = masked_out_lower_data_reg_io_q; // @[GpioRegTop.scala 145:37]
  assign io_reg2hw_masked_out_lower_data_qe = masked_out_lower_data_reg_io_qe; // @[GpioRegTop.scala 144:38]
  assign io_reg2hw_masked_out_lower_mask_q = masked_out_lower_mask_reg_io_q; // @[GpioRegTop.scala 156:37]
  assign io_reg2hw_masked_out_upper_data_q = masked_out_upper_data_reg_io_q; // @[GpioRegTop.scala 166:37]
  assign io_reg2hw_masked_out_upper_data_qe = masked_out_upper_data_reg_io_qe; // @[GpioRegTop.scala 165:38]
  assign io_reg2hw_masked_out_upper_mask_q = masked_out_upper_mask_reg_io_q; // @[GpioRegTop.scala 177:37]
  assign io_reg2hw_direct_oe_q = direct_oe_reg_io_q; // @[GpioRegTop.scala 186:25]
  assign io_reg2hw_direct_oe_qe = direct_oe_reg_io_qe; // @[GpioRegTop.scala 185:26]
  assign io_reg2hw_masked_oe_lower_data_q = masked_oe_lower_data_reg_io_q; // @[GpioRegTop.scala 197:36]
  assign io_reg2hw_masked_oe_lower_data_qe = masked_oe_lower_data_reg_io_qe; // @[GpioRegTop.scala 196:37]
  assign io_reg2hw_masked_oe_lower_mask_q = masked_oe_lower_mask_reg_io_q; // @[GpioRegTop.scala 208:36]
  assign io_reg2hw_masked_oe_upper_data_q = masked_oe_upper_data_reg_io_q; // @[GpioRegTop.scala 219:36]
  assign io_reg2hw_masked_oe_upper_data_qe = masked_oe_upper_data_reg_io_qe; // @[GpioRegTop.scala 218:37]
  assign io_reg2hw_masked_oe_upper_mask_q = masked_oe_upper_mask_reg_io_q; // @[GpioRegTop.scala 230:36]
  assign io_reg2hw_intr_ctrl_en_rising_q = intr_ctrl_en_rising_reg_io_q; // @[GpioRegTop.scala 239:35]
  assign io_reg2hw_intr_ctrl_en_falling_q = intr_ctrl_en_falling_reg_io_q; // @[GpioRegTop.scala 248:36]
  assign io_reg2hw_intr_ctrl_en_lvlHigh_q = intr_ctrl_en_lvlhigh_reg_io_q; // @[GpioRegTop.scala 257:36]
  assign io_reg2hw_intr_ctrl_en_lvlLow_q = intr_ctrl_en_lvllow_reg_io_q; // @[GpioRegTop.scala 266:35]
  assign tlul_regAdapter_clock = clock;
  assign tlul_regAdapter_reset = reset;
  assign tlul_regAdapter_io_tl_i_a_valid = io_tl_i_a_valid; // @[GpioRegTop.scala 27:27]
  assign tlul_regAdapter_io_tl_i_a_opcode = io_tl_i_a_opcode; // @[GpioRegTop.scala 27:27]
  assign tlul_regAdapter_io_tl_i_a_address = io_tl_i_a_address; // @[GpioRegTop.scala 27:27]
  assign tlul_regAdapter_io_tl_i_a_mask = io_tl_i_a_mask; // @[GpioRegTop.scala 27:27]
  assign tlul_regAdapter_io_tl_i_a_data = io_tl_i_a_data; // @[GpioRegTop.scala 27:27]
  assign tlul_regAdapter_io_rdata_i = addr_hit_0 ? intr_state_qs : _GEN_12; // @[GpioRegTop.scala 34:30]
  assign intr_state_reg_clock = clock;
  assign intr_state_reg_reset = reset;
  assign intr_state_reg_io_we = _T_46 & _T_117; // @[GpioRegTop.scala 89:24]
  assign intr_state_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 91:24]
  assign intr_state_reg_io_de = io_hw2reg_intr_state_de; // @[GpioRegTop.scala 93:24]
  assign intr_state_reg_io_d = io_hw2reg_intr_state_d; // @[GpioRegTop.scala 95:23]
  assign intr_enable_reg_clock = clock;
  assign intr_enable_reg_reset = reset;
  assign intr_enable_reg_io_we = _T_51 & _T_117; // @[GpioRegTop.scala 103:25]
  assign intr_enable_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 104:25]
  assign intr_test_reg_io_we = _T_56 & _T_117; // @[GpioRegTop.scala 112:23]
  assign intr_test_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 114:23]
  assign intr_test_reg_io_d = 32'h0; // @[GpioRegTop.scala 115:22]
  assign data_in_reg_clock = clock;
  assign data_in_reg_reset = reset;
  assign data_in_reg_io_d = io_hw2reg_data_in_d; // @[GpioRegTop.scala 124:20]
  assign direct_out_reg_io_we = _T_66 & _T_117; // @[GpioRegTop.scala 130:24]
  assign direct_out_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 131:24]
  assign direct_out_reg_io_d = io_hw2reg_direct_out_d; // @[GpioRegTop.scala 132:23]
  assign masked_out_lower_data_reg_io_we = _T_71 & _T_117; // @[GpioRegTop.scala 141:35]
  assign masked_out_lower_data_reg_io_wd = reg_wdata[15:0]; // @[GpioRegTop.scala 142:35]
  assign masked_out_lower_data_reg_io_d = io_hw2reg_masked_out_lower_data_d; // @[GpioRegTop.scala 143:34]
  assign masked_out_lower_mask_reg_io_we = _T_71 & _T_117; // @[GpioRegTop.scala 152:35]
  assign masked_out_lower_mask_reg_io_wd = reg_wdata[31:16]; // @[GpioRegTop.scala 153:35]
  assign masked_out_lower_mask_reg_io_d = 16'h0; // @[GpioRegTop.scala 154:34]
  assign masked_out_upper_data_reg_io_we = _T_76 & _T_117; // @[GpioRegTop.scala 162:35]
  assign masked_out_upper_data_reg_io_wd = reg_wdata[15:0]; // @[GpioRegTop.scala 163:35]
  assign masked_out_upper_data_reg_io_d = io_hw2reg_masked_out_upper_data_d; // @[GpioRegTop.scala 164:34]
  assign masked_out_upper_mask_reg_io_we = _T_76 & _T_117; // @[GpioRegTop.scala 173:35]
  assign masked_out_upper_mask_reg_io_wd = reg_wdata[31:16]; // @[GpioRegTop.scala 174:35]
  assign masked_out_upper_mask_reg_io_d = 16'h0; // @[GpioRegTop.scala 175:34]
  assign direct_oe_reg_io_we = _T_81 & _T_117; // @[GpioRegTop.scala 182:23]
  assign direct_oe_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 183:23]
  assign direct_oe_reg_io_d = io_hw2reg_direct_oe_d; // @[GpioRegTop.scala 184:22]
  assign masked_oe_lower_data_reg_io_we = _T_86 & _T_117; // @[GpioRegTop.scala 193:34]
  assign masked_oe_lower_data_reg_io_wd = reg_wdata[15:0]; // @[GpioRegTop.scala 194:34]
  assign masked_oe_lower_data_reg_io_d = io_hw2reg_masked_oe_lower_data_d; // @[GpioRegTop.scala 195:33]
  assign masked_oe_lower_mask_reg_io_we = _T_86 & _T_117; // @[GpioRegTop.scala 204:34]
  assign masked_oe_lower_mask_reg_io_wd = reg_wdata[31:16]; // @[GpioRegTop.scala 205:34]
  assign masked_oe_lower_mask_reg_io_d = 16'h0; // @[GpioRegTop.scala 206:33]
  assign masked_oe_upper_data_reg_io_we = _T_91 & _T_117; // @[GpioRegTop.scala 215:34]
  assign masked_oe_upper_data_reg_io_wd = reg_wdata[15:0]; // @[GpioRegTop.scala 216:34]
  assign masked_oe_upper_data_reg_io_d = io_hw2reg_masked_oe_upper_data_d; // @[GpioRegTop.scala 217:33]
  assign masked_oe_upper_mask_reg_io_we = _T_91 & _T_117; // @[GpioRegTop.scala 226:34]
  assign masked_oe_upper_mask_reg_io_wd = reg_wdata[31:16]; // @[GpioRegTop.scala 227:34]
  assign masked_oe_upper_mask_reg_io_d = 16'h0; // @[GpioRegTop.scala 228:33]
  assign intr_ctrl_en_rising_reg_clock = clock;
  assign intr_ctrl_en_rising_reg_reset = reset;
  assign intr_ctrl_en_rising_reg_io_we = _T_96 & _T_117; // @[GpioRegTop.scala 235:33]
  assign intr_ctrl_en_rising_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 236:33]
  assign intr_ctrl_en_falling_reg_clock = clock;
  assign intr_ctrl_en_falling_reg_reset = reset;
  assign intr_ctrl_en_falling_reg_io_we = _T_101 & _T_117; // @[GpioRegTop.scala 244:34]
  assign intr_ctrl_en_falling_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 245:34]
  assign intr_ctrl_en_lvlhigh_reg_clock = clock;
  assign intr_ctrl_en_lvlhigh_reg_reset = reset;
  assign intr_ctrl_en_lvlhigh_reg_io_we = _T_106 & _T_117; // @[GpioRegTop.scala 253:34]
  assign intr_ctrl_en_lvlhigh_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 254:34]
  assign intr_ctrl_en_lvllow_reg_clock = clock;
  assign intr_ctrl_en_lvllow_reg_reset = reset;
  assign intr_ctrl_en_lvllow_reg_io_we = _T_111 & _T_117; // @[GpioRegTop.scala 262:33]
  assign intr_ctrl_en_lvllow_reg_io_wd = tlul_regAdapter_io_wdata_o; // @[GpioRegTop.scala 263:33]
endmodule
module IntrHardware(
  input         clock,
  input         reset,
  input  [31:0] io_event_intr_i,
  input  [31:0] io_reg2hw_intr_enable_q_i,
  input  [31:0] io_reg2hw_intr_test_q_i,
  input         io_reg2hw_intr_test_qe_i,
  input  [31:0] io_reg2hw_intr_state_q_i,
  output        io_hw2reg_intr_state_de_o,
  output [31:0] io_hw2reg_intr_state_d_o,
  output [31:0] io_intr_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] _T_1 = io_reg2hw_intr_test_qe_i ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _T_2 = _T_1 & io_reg2hw_intr_test_q_i; // @[IntrHardware.scala 24:54]
  wire [31:0] new_event = _T_2 | io_event_intr_i; // @[IntrHardware.scala 24:80]
  reg [31:0] _T_6; // @[IntrHardware.scala 29:22]
  wire [31:0] _T_7 = io_reg2hw_intr_state_q_i & io_reg2hw_intr_enable_q_i; // @[IntrHardware.scala 30:37]
  assign io_hw2reg_intr_state_de_o = |new_event; // @[IntrHardware.scala 25:29]
  assign io_hw2reg_intr_state_d_o = new_event | io_reg2hw_intr_state_q_i; // @[IntrHardware.scala 26:28]
  assign io_intr_o = _T_6; // @[IntrHardware.scala 31:15]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  _T_6 = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_6 <= 32'h0;
    end else begin
      _T_6 <= _T_7;
    end
  end
endmodule
module Gpio(
  input         clock,
  input         reset,
  input         io_tl_i_a_valid,
  input  [2:0]  io_tl_i_a_opcode,
  input  [31:0] io_tl_i_a_address,
  input  [3:0]  io_tl_i_a_mask,
  input  [31:0] io_tl_i_a_data,
  output        io_tl_o_d_valid,
  output [31:0] io_tl_o_d_data,
  output        io_tl_o_a_ready,
  input  [31:0] io_cio_gpio_i,
  output [31:0] io_cio_gpio_o,
  output [31:0] io_cio_gpio_en_o,
  output [31:0] io_intr_gpio_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  gpioRegTop_clock; // @[Gpio.scala 21:26]
  wire  gpioRegTop_reset; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_tl_i_a_valid; // @[Gpio.scala 21:26]
  wire [2:0] gpioRegTop_io_tl_i_a_opcode; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_tl_i_a_address; // @[Gpio.scala 21:26]
  wire [3:0] gpioRegTop_io_tl_i_a_mask; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_tl_i_a_data; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_tl_o_d_valid; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_tl_o_d_data; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_tl_o_a_ready; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_intr_state_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_intr_enable_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_intr_test_q; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_reg2hw_intr_test_qe; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_direct_out_q; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_reg2hw_direct_out_qe; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_out_lower_data_q; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_reg2hw_masked_out_lower_data_qe; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_out_lower_mask_q; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_out_upper_data_q; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_reg2hw_masked_out_upper_data_qe; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_out_upper_mask_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_direct_oe_q; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_reg2hw_direct_oe_qe; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_oe_lower_data_q; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_reg2hw_masked_oe_lower_data_qe; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_oe_lower_mask_q; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_oe_upper_data_q; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_reg2hw_masked_oe_upper_data_qe; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_reg2hw_masked_oe_upper_mask_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_intr_ctrl_en_rising_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_intr_ctrl_en_falling_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_intr_ctrl_en_lvlHigh_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_reg2hw_intr_ctrl_en_lvlLow_q; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_hw2reg_intr_state_d; // @[Gpio.scala 21:26]
  wire  gpioRegTop_io_hw2reg_intr_state_de; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_hw2reg_data_in_d; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_hw2reg_direct_out_d; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_hw2reg_masked_out_lower_data_d; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_hw2reg_masked_out_upper_data_d; // @[Gpio.scala 21:26]
  wire [31:0] gpioRegTop_io_hw2reg_direct_oe_d; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_hw2reg_masked_oe_lower_data_d; // @[Gpio.scala 21:26]
  wire [15:0] gpioRegTop_io_hw2reg_masked_oe_upper_data_d; // @[Gpio.scala 21:26]
  wire  intr_hw_clock; // @[Gpio.scala 111:23]
  wire  intr_hw_reset; // @[Gpio.scala 111:23]
  wire [31:0] intr_hw_io_event_intr_i; // @[Gpio.scala 111:23]
  wire [31:0] intr_hw_io_reg2hw_intr_enable_q_i; // @[Gpio.scala 111:23]
  wire [31:0] intr_hw_io_reg2hw_intr_test_q_i; // @[Gpio.scala 111:23]
  wire  intr_hw_io_reg2hw_intr_test_qe_i; // @[Gpio.scala 111:23]
  wire [31:0] intr_hw_io_reg2hw_intr_state_q_i; // @[Gpio.scala 111:23]
  wire  intr_hw_io_hw2reg_intr_state_de_o; // @[Gpio.scala 111:23]
  wire [31:0] intr_hw_io_hw2reg_intr_state_d_o; // @[Gpio.scala 111:23]
  wire [31:0] intr_hw_io_intr_o; // @[Gpio.scala 111:23]
  reg [31:0] cio_gpio_q; // @[Gpio.scala 27:27]
  reg [31:0] cio_gpio_en_q; // @[Gpio.scala 28:30]
  reg [31:0] data_in_q; // @[Gpio.scala 29:26]
  wire [15:0] hw2reg_masked_out_upper_data_d = cio_gpio_q[31:16]; // @[Gpio.scala 44:47]
  wire [15:0] hw2reg_masked_out_lower_data_d = cio_gpio_q[15:0]; // @[Gpio.scala 46:47]
  wire [15:0] reg2hw_masked_out_upper_data_q = gpioRegTop_io_reg2hw_masked_out_upper_data_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] reg2hw_masked_out_upper_mask_q = gpioRegTop_io_reg2hw_masked_out_upper_mask_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] _T_2 = reg2hw_masked_out_upper_data_q & reg2hw_masked_out_upper_mask_q; // @[Gpio.scala 53:39]
  wire [15:0] _T_3 = ~reg2hw_masked_out_upper_mask_q; // @[Gpio.scala 54:10]
  wire [15:0] _T_5 = _T_3 & hw2reg_masked_out_upper_data_d; // @[Gpio.scala 54:42]
  wire [15:0] _T_6 = _T_2 | _T_5; // @[Gpio.scala 53:73]
  wire [31:0] _T_7 = {_T_6,16'h0}; // @[Cat.scala 29:58]
  wire [15:0] reg2hw_masked_out_lower_data_q = gpioRegTop_io_reg2hw_masked_out_lower_data_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] reg2hw_masked_out_lower_mask_q = gpioRegTop_io_reg2hw_masked_out_lower_mask_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] _T_8 = reg2hw_masked_out_lower_data_q & reg2hw_masked_out_lower_mask_q; // @[Gpio.scala 63:66]
  wire [15:0] _T_9 = ~reg2hw_masked_out_lower_mask_q; // @[Gpio.scala 64:36]
  wire [15:0] _T_11 = _T_9 & hw2reg_masked_out_lower_data_d; // @[Gpio.scala 64:68]
  wire [15:0] _T_12 = _T_8 | _T_11; // @[Gpio.scala 63:100]
  wire [31:0] _T_13 = {16'h0,_T_12}; // @[Cat.scala 29:58]
  wire  reg2hw_masked_out_lower_data_qe = gpioRegTop_io_reg2hw_masked_out_lower_data_qe; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire  reg2hw_masked_out_upper_data_qe = gpioRegTop_io_reg2hw_masked_out_upper_data_qe; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire  reg2hw_direct_out_qe = gpioRegTop_io_reg2hw_direct_out_qe; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [31:0] reg2hw_direct_out_q = gpioRegTop_io_reg2hw_direct_out_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] hw2reg_masked_oe_upper_data_d = cio_gpio_en_q[31:16]; // @[Gpio.scala 69:49]
  wire [15:0] hw2reg_masked_oe_lower_data_d = cio_gpio_en_q[15:0]; // @[Gpio.scala 71:49]
  wire [15:0] reg2hw_masked_oe_upper_data_q = gpioRegTop_io_reg2hw_masked_oe_upper_data_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] reg2hw_masked_oe_upper_mask_q = gpioRegTop_io_reg2hw_masked_oe_upper_mask_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] _T_16 = reg2hw_masked_oe_upper_data_q & reg2hw_masked_oe_upper_mask_q; // @[Gpio.scala 77:57]
  wire [15:0] _T_17 = ~reg2hw_masked_oe_upper_mask_q; // @[Gpio.scala 78:28]
  wire [15:0] _T_19 = _T_17 & hw2reg_masked_oe_upper_data_d; // @[Gpio.scala 78:59]
  wire [15:0] _T_20 = _T_16 | _T_19; // @[Gpio.scala 77:90]
  wire [31:0] _T_21 = {_T_20,16'h0}; // @[Cat.scala 29:58]
  wire [15:0] reg2hw_masked_oe_lower_data_q = gpioRegTop_io_reg2hw_masked_oe_lower_data_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] reg2hw_masked_oe_lower_mask_q = gpioRegTop_io_reg2hw_masked_oe_lower_mask_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [15:0] _T_22 = reg2hw_masked_oe_lower_data_q & reg2hw_masked_oe_lower_mask_q; // @[Gpio.scala 80:68]
  wire [15:0] _T_23 = ~reg2hw_masked_oe_lower_mask_q; // @[Gpio.scala 81:38]
  wire [15:0] _T_25 = _T_23 & hw2reg_masked_oe_lower_data_d; // @[Gpio.scala 81:69]
  wire [15:0] _T_26 = _T_22 | _T_25; // @[Gpio.scala 80:101]
  wire [31:0] _T_27 = {16'h0,_T_26}; // @[Cat.scala 29:58]
  wire  reg2hw_masked_oe_lower_data_qe = gpioRegTop_io_reg2hw_masked_oe_lower_data_qe; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire  reg2hw_masked_oe_upper_data_qe = gpioRegTop_io_reg2hw_masked_oe_upper_data_qe; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire  reg2hw_direct_oe_qe = gpioRegTop_io_reg2hw_direct_oe_qe; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [31:0] reg2hw_direct_oe_q = gpioRegTop_io_reg2hw_direct_oe_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [31:0] _T_28 = ~data_in_q; // @[Gpio.scala 91:23]
  wire [31:0] _T_29 = _T_28 & io_cio_gpio_i; // @[Gpio.scala 91:34]
  wire [31:0] reg2hw_intr_ctrl_en_rising_q = gpioRegTop_io_reg2hw_intr_ctrl_en_rising_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [31:0] event_intr_rise = _T_29 & reg2hw_intr_ctrl_en_rising_q; // @[Gpio.scala 91:47]
  wire [31:0] _T_31 = ~io_cio_gpio_i; // @[Gpio.scala 95:35]
  wire [31:0] _T_32 = data_in_q & _T_31; // @[Gpio.scala 95:33]
  wire [31:0] reg2hw_intr_ctrl_en_falling_q = gpioRegTop_io_reg2hw_intr_ctrl_en_falling_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [31:0] event_intr_fall = _T_32 & reg2hw_intr_ctrl_en_falling_q; // @[Gpio.scala 95:47]
  wire [31:0] reg2hw_intr_ctrl_en_lvlHigh_q = gpioRegTop_io_reg2hw_intr_ctrl_en_lvlHigh_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [31:0] event_intr_acthigh = io_cio_gpio_i & reg2hw_intr_ctrl_en_lvlHigh_q; // @[Gpio.scala 101:35]
  wire [31:0] reg2hw_intr_ctrl_en_lvlLow_q = gpioRegTop_io_reg2hw_intr_ctrl_en_lvlLow_q; // @[Gpio.scala 18:20 Gpio.scala 24:10]
  wire [31:0] event_intr_actlow = _T_31 & reg2hw_intr_ctrl_en_lvlLow_q; // @[Gpio.scala 107:35]
  wire [31:0] _T_37 = event_intr_rise | event_intr_fall; // @[Gpio.scala 109:42]
  wire [31:0] _T_38 = _T_37 | event_intr_acthigh; // @[Gpio.scala 109:60]
  GpioRegTop gpioRegTop ( // @[Gpio.scala 21:26]
    .clock(gpioRegTop_clock),
    .reset(gpioRegTop_reset),
    .io_tl_i_a_valid(gpioRegTop_io_tl_i_a_valid),
    .io_tl_i_a_opcode(gpioRegTop_io_tl_i_a_opcode),
    .io_tl_i_a_address(gpioRegTop_io_tl_i_a_address),
    .io_tl_i_a_mask(gpioRegTop_io_tl_i_a_mask),
    .io_tl_i_a_data(gpioRegTop_io_tl_i_a_data),
    .io_tl_o_d_valid(gpioRegTop_io_tl_o_d_valid),
    .io_tl_o_d_data(gpioRegTop_io_tl_o_d_data),
    .io_tl_o_a_ready(gpioRegTop_io_tl_o_a_ready),
    .io_reg2hw_intr_state_q(gpioRegTop_io_reg2hw_intr_state_q),
    .io_reg2hw_intr_enable_q(gpioRegTop_io_reg2hw_intr_enable_q),
    .io_reg2hw_intr_test_q(gpioRegTop_io_reg2hw_intr_test_q),
    .io_reg2hw_intr_test_qe(gpioRegTop_io_reg2hw_intr_test_qe),
    .io_reg2hw_direct_out_q(gpioRegTop_io_reg2hw_direct_out_q),
    .io_reg2hw_direct_out_qe(gpioRegTop_io_reg2hw_direct_out_qe),
    .io_reg2hw_masked_out_lower_data_q(gpioRegTop_io_reg2hw_masked_out_lower_data_q),
    .io_reg2hw_masked_out_lower_data_qe(gpioRegTop_io_reg2hw_masked_out_lower_data_qe),
    .io_reg2hw_masked_out_lower_mask_q(gpioRegTop_io_reg2hw_masked_out_lower_mask_q),
    .io_reg2hw_masked_out_upper_data_q(gpioRegTop_io_reg2hw_masked_out_upper_data_q),
    .io_reg2hw_masked_out_upper_data_qe(gpioRegTop_io_reg2hw_masked_out_upper_data_qe),
    .io_reg2hw_masked_out_upper_mask_q(gpioRegTop_io_reg2hw_masked_out_upper_mask_q),
    .io_reg2hw_direct_oe_q(gpioRegTop_io_reg2hw_direct_oe_q),
    .io_reg2hw_direct_oe_qe(gpioRegTop_io_reg2hw_direct_oe_qe),
    .io_reg2hw_masked_oe_lower_data_q(gpioRegTop_io_reg2hw_masked_oe_lower_data_q),
    .io_reg2hw_masked_oe_lower_data_qe(gpioRegTop_io_reg2hw_masked_oe_lower_data_qe),
    .io_reg2hw_masked_oe_lower_mask_q(gpioRegTop_io_reg2hw_masked_oe_lower_mask_q),
    .io_reg2hw_masked_oe_upper_data_q(gpioRegTop_io_reg2hw_masked_oe_upper_data_q),
    .io_reg2hw_masked_oe_upper_data_qe(gpioRegTop_io_reg2hw_masked_oe_upper_data_qe),
    .io_reg2hw_masked_oe_upper_mask_q(gpioRegTop_io_reg2hw_masked_oe_upper_mask_q),
    .io_reg2hw_intr_ctrl_en_rising_q(gpioRegTop_io_reg2hw_intr_ctrl_en_rising_q),
    .io_reg2hw_intr_ctrl_en_falling_q(gpioRegTop_io_reg2hw_intr_ctrl_en_falling_q),
    .io_reg2hw_intr_ctrl_en_lvlHigh_q(gpioRegTop_io_reg2hw_intr_ctrl_en_lvlHigh_q),
    .io_reg2hw_intr_ctrl_en_lvlLow_q(gpioRegTop_io_reg2hw_intr_ctrl_en_lvlLow_q),
    .io_hw2reg_intr_state_d(gpioRegTop_io_hw2reg_intr_state_d),
    .io_hw2reg_intr_state_de(gpioRegTop_io_hw2reg_intr_state_de),
    .io_hw2reg_data_in_d(gpioRegTop_io_hw2reg_data_in_d),
    .io_hw2reg_direct_out_d(gpioRegTop_io_hw2reg_direct_out_d),
    .io_hw2reg_masked_out_lower_data_d(gpioRegTop_io_hw2reg_masked_out_lower_data_d),
    .io_hw2reg_masked_out_upper_data_d(gpioRegTop_io_hw2reg_masked_out_upper_data_d),
    .io_hw2reg_direct_oe_d(gpioRegTop_io_hw2reg_direct_oe_d),
    .io_hw2reg_masked_oe_lower_data_d(gpioRegTop_io_hw2reg_masked_oe_lower_data_d),
    .io_hw2reg_masked_oe_upper_data_d(gpioRegTop_io_hw2reg_masked_oe_upper_data_d)
  );
  IntrHardware intr_hw ( // @[Gpio.scala 111:23]
    .clock(intr_hw_clock),
    .reset(intr_hw_reset),
    .io_event_intr_i(intr_hw_io_event_intr_i),
    .io_reg2hw_intr_enable_q_i(intr_hw_io_reg2hw_intr_enable_q_i),
    .io_reg2hw_intr_test_q_i(intr_hw_io_reg2hw_intr_test_q_i),
    .io_reg2hw_intr_test_qe_i(intr_hw_io_reg2hw_intr_test_qe_i),
    .io_reg2hw_intr_state_q_i(intr_hw_io_reg2hw_intr_state_q_i),
    .io_hw2reg_intr_state_de_o(intr_hw_io_hw2reg_intr_state_de_o),
    .io_hw2reg_intr_state_d_o(intr_hw_io_hw2reg_intr_state_d_o),
    .io_intr_o(intr_hw_io_intr_o)
  );
  assign io_tl_o_d_valid = gpioRegTop_io_tl_o_d_valid; // @[Gpio.scala 23:11]
  assign io_tl_o_d_data = gpioRegTop_io_tl_o_d_data; // @[Gpio.scala 23:11]
  assign io_tl_o_a_ready = gpioRegTop_io_tl_o_a_ready; // @[Gpio.scala 23:11]
  assign io_cio_gpio_o = cio_gpio_q; // @[Gpio.scala 40:17]
  assign io_cio_gpio_en_o = cio_gpio_en_q; // @[Gpio.scala 41:20]
  assign io_intr_gpio_o = intr_hw_io_intr_o; // @[Gpio.scala 119:18]
  assign gpioRegTop_clock = clock;
  assign gpioRegTop_reset = reset;
  assign gpioRegTop_io_tl_i_a_valid = io_tl_i_a_valid; // @[Gpio.scala 22:22]
  assign gpioRegTop_io_tl_i_a_opcode = io_tl_i_a_opcode; // @[Gpio.scala 22:22]
  assign gpioRegTop_io_tl_i_a_address = io_tl_i_a_address; // @[Gpio.scala 22:22]
  assign gpioRegTop_io_tl_i_a_mask = io_tl_i_a_mask; // @[Gpio.scala 22:22]
  assign gpioRegTop_io_tl_i_a_data = io_tl_i_a_data; // @[Gpio.scala 22:22]
  assign gpioRegTop_io_hw2reg_intr_state_d = intr_hw_io_hw2reg_intr_state_d_o; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_intr_state_de = intr_hw_io_hw2reg_intr_state_de_o; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_data_in_d = io_cio_gpio_i; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_direct_out_d = cio_gpio_q; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_masked_out_lower_data_d = cio_gpio_q[15:0]; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_masked_out_upper_data_d = cio_gpio_q[31:16]; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_direct_oe_d = cio_gpio_en_q; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_masked_oe_lower_data_d = cio_gpio_en_q[15:0]; // @[Gpio.scala 25:24]
  assign gpioRegTop_io_hw2reg_masked_oe_upper_data_d = cio_gpio_en_q[31:16]; // @[Gpio.scala 25:24]
  assign intr_hw_clock = clock;
  assign intr_hw_reset = reset;
  assign intr_hw_io_event_intr_i = _T_38 | event_intr_actlow; // @[Gpio.scala 112:27]
  assign intr_hw_io_reg2hw_intr_enable_q_i = gpioRegTop_io_reg2hw_intr_enable_q; // @[Gpio.scala 113:37]
  assign intr_hw_io_reg2hw_intr_test_q_i = gpioRegTop_io_reg2hw_intr_test_q; // @[Gpio.scala 114:35]
  assign intr_hw_io_reg2hw_intr_test_qe_i = gpioRegTop_io_reg2hw_intr_test_qe; // @[Gpio.scala 115:36]
  assign intr_hw_io_reg2hw_intr_state_q_i = gpioRegTop_io_reg2hw_intr_state_q; // @[Gpio.scala 116:36]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  cio_gpio_q = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  cio_gpio_en_q = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  data_in_q = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cio_gpio_q <= 32'h0;
    end else if (reg2hw_direct_out_qe) begin
      cio_gpio_q <= reg2hw_direct_out_q;
    end else if (reg2hw_masked_out_upper_data_qe) begin
      cio_gpio_q <= _T_7;
    end else if (reg2hw_masked_out_lower_data_qe) begin
      cio_gpio_q <= _T_13;
    end
    if (reset) begin
      cio_gpio_en_q <= 32'h0;
    end else if (reg2hw_direct_oe_qe) begin
      cio_gpio_en_q <= reg2hw_direct_oe_q;
    end else if (reg2hw_masked_oe_upper_data_qe) begin
      cio_gpio_en_q <= _T_21;
    end else if (reg2hw_masked_oe_lower_data_qe) begin
      cio_gpio_en_q <= _T_27;
    end
    if (reset) begin
      data_in_q <= 32'h0;
    end else begin
      data_in_q <= io_cio_gpio_i;
    end
  end
endmodule
module TL_HostAdapter(
  input         io_req_i,
  output        io_gnt_o,
  input  [31:0] io_addr_i,
  input         io_we_i,
  input  [31:0] io_wdata_i,
  input  [3:0]  io_be_i,
  output        io_valid_o,
  output [31:0] io_rdata_o,
  output        io_tl_o_a_valid,
  output [2:0]  io_tl_o_a_opcode,
  output [31:0] io_tl_o_a_address,
  output [3:0]  io_tl_o_a_mask,
  output [31:0] io_tl_o_a_data,
  input         io_tl_i_d_valid,
  input  [31:0] io_tl_i_d_data,
  input         io_tl_i_a_ready
);
  wire  _T_3 = &io_be_i; // @[TL_HostAdapter.scala 35:48]
  wire [2:0] _T_4 = _T_3 ? 3'h0 : 3'h1; // @[TL_HostAdapter.scala 35:39]
  assign io_gnt_o = io_tl_i_a_ready; // @[TL_HostAdapter.scala 44:12]
  assign io_valid_o = io_tl_i_d_valid; // @[TL_HostAdapter.scala 45:14]
  assign io_rdata_o = io_tl_i_d_data; // @[TL_HostAdapter.scala 46:14]
  assign io_tl_o_a_valid = io_req_i; // @[TL_HostAdapter.scala 24:21 TL_HostAdapter.scala 34:19]
  assign io_tl_o_a_opcode = io_we_i ? _T_4 : 3'h4; // @[TL_HostAdapter.scala 35:20]
  assign io_tl_o_a_address = {io_addr_i[31:2],2'h0}; // @[TL_HostAdapter.scala 40:21]
  assign io_tl_o_a_mask = io_we_i ? io_be_i : 4'hf; // @[TL_HostAdapter.scala 38:18]
  assign io_tl_o_a_data = io_wdata_i; // @[TL_HostAdapter.scala 41:18]
endmodule
module TL_SramAdapter(
  input         clock,
  input         reset,
  input         io_tl_i_a_valid,
  input  [2:0]  io_tl_i_a_opcode,
  input  [31:0] io_tl_i_a_address,
  input  [3:0]  io_tl_i_a_mask,
  output        io_tl_o_d_valid,
  output [31:0] io_tl_o_d_data,
  output        io_tl_o_a_ready,
  output [5:0]  io_addr_o,
  input  [31:0] io_rdata_i
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  tlErr_io_tl_i_a_valid; // @[TL_SramAdapter.scala 102:21]
  wire [2:0] tlErr_io_tl_i_a_opcode; // @[TL_SramAdapter.scala 102:21]
  wire [31:0] tlErr_io_tl_i_a_address; // @[TL_SramAdapter.scala 102:21]
  wire [3:0] tlErr_io_tl_i_a_mask; // @[TL_SramAdapter.scala 102:21]
  wire  tlErr_io_err_o; // @[TL_SramAdapter.scala 102:21]
  reg  outstanding; // @[TL_SramAdapter.scala 42:28]
  wire  a_ack = io_tl_i_a_valid & io_tl_o_a_ready; // @[TL_SramAdapter.scala 45:28]
  wire  _GEN_4 = io_tl_o_d_valid ? 1'h0 : outstanding; // @[TL_SramAdapter.scala 73:22]
  wire  _GEN_5 = a_ack | _GEN_4; // @[TL_SramAdapter.scala 67:15]
  TL_Err tlErr ( // @[TL_SramAdapter.scala 102:21]
    .io_tl_i_a_valid(tlErr_io_tl_i_a_valid),
    .io_tl_i_a_opcode(tlErr_io_tl_i_a_opcode),
    .io_tl_i_a_address(tlErr_io_tl_i_a_address),
    .io_tl_i_a_mask(tlErr_io_tl_i_a_mask),
    .io_err_o(tlErr_io_err_o)
  );
  assign io_tl_o_d_valid = outstanding; // @[TL_SramAdapter.scala 84:19]
  assign io_tl_o_d_data = io_rdata_i; // @[TL_SramAdapter.scala 90:18]
  assign io_tl_o_a_ready = 1'h1; // @[TL_SramAdapter.scala 83:19]
  assign io_addr_o = io_tl_i_a_address[7:2]; // @[TL_SramAdapter.scala 53:13]
  assign tlErr_io_tl_i_a_valid = io_tl_i_a_valid; // @[TL_SramAdapter.scala 103:17]
  assign tlErr_io_tl_i_a_opcode = io_tl_i_a_opcode; // @[TL_SramAdapter.scala 103:17]
  assign tlErr_io_tl_i_a_address = io_tl_i_a_address; // @[TL_SramAdapter.scala 103:17]
  assign tlErr_io_tl_i_a_mask = io_tl_i_a_mask; // @[TL_SramAdapter.scala 103:17]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  outstanding = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      outstanding <= 1'h0;
    end else begin
      outstanding <= _GEN_5;
    end
  end
endmodule
module TL_SramAdapter_1(
  input         clock,
  input         reset,
  input         io_tl_i_a_valid,
  input  [2:0]  io_tl_i_a_opcode,
  input  [31:0] io_tl_i_a_address,
  input  [3:0]  io_tl_i_a_mask,
  input  [31:0] io_tl_i_a_data,
  output        io_tl_o_d_valid,
  output [31:0] io_tl_o_d_data,
  output        io_tl_o_a_ready,
  output        io_we_o_0,
  output        io_we_o_1,
  output        io_we_o_2,
  output        io_we_o_3,
  output [5:0]  io_addr_o,
  output [31:0] io_wdata_o,
  input  [31:0] io_rdata_i
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  tlErr_io_tl_i_a_valid; // @[TL_SramAdapter.scala 102:21]
  wire [2:0] tlErr_io_tl_i_a_opcode; // @[TL_SramAdapter.scala 102:21]
  wire [31:0] tlErr_io_tl_i_a_address; // @[TL_SramAdapter.scala 102:21]
  wire [3:0] tlErr_io_tl_i_a_mask; // @[TL_SramAdapter.scala 102:21]
  wire  tlErr_io_err_o; // @[TL_SramAdapter.scala 102:21]
  reg  error; // @[TL_SramAdapter.scala 29:22]
  reg  outstanding; // @[TL_SramAdapter.scala 42:28]
  wire  a_ack = io_tl_i_a_valid & io_tl_o_a_ready; // @[TL_SramAdapter.scala 45:28]
  wire  _T_2 = io_tl_i_a_opcode == 3'h0; // @[TL_SramAdapter.scala 48:41]
  wire  _T_3 = io_tl_i_a_opcode == 3'h1; // @[TL_SramAdapter.scala 48:91]
  wire  _T_4 = _T_2 | _T_3; // @[TL_SramAdapter.scala 48:70]
  wire  wr_req = a_ack & _T_4; // @[TL_SramAdapter.scala 48:19]
  wire  _T_29 = |io_tl_i_a_address[1:0]; // @[TL_SramAdapter.scala 96:46]
  wire  addr_align_err = wr_req & _T_29; // @[TL_SramAdapter.scala 95:16]
  wire  tl_err = tlErr_io_err_o; // @[TL_SramAdapter.scala 33:20 TL_SramAdapter.scala 104:10]
  wire  err_internal = addr_align_err | tl_err; // @[TL_SramAdapter.scala 93:34]
  wire  _T_9 = ~err_internal; // @[TL_SramAdapter.scala 57:18]
  wire  _T_10 = wr_req & _T_9; // @[TL_SramAdapter.scala 57:15]
  wire  _GEN_4 = io_tl_o_d_valid ? 1'h0 : outstanding; // @[TL_SramAdapter.scala 73:22]
  wire  _GEN_5 = a_ack | _GEN_4; // @[TL_SramAdapter.scala 67:15]
  wire [31:0] _T_23 = error ? 32'hffffffff : io_rdata_i; // @[TL_SramAdapter.scala 78:17]
  TL_Err tlErr ( // @[TL_SramAdapter.scala 102:21]
    .io_tl_i_a_valid(tlErr_io_tl_i_a_valid),
    .io_tl_i_a_opcode(tlErr_io_tl_i_a_opcode),
    .io_tl_i_a_address(tlErr_io_tl_i_a_address),
    .io_tl_i_a_mask(tlErr_io_tl_i_a_mask),
    .io_err_o(tlErr_io_err_o)
  );
  assign io_tl_o_d_valid = outstanding; // @[TL_SramAdapter.scala 84:19]
  assign io_tl_o_d_data = outstanding ? _T_23 : 32'h0; // @[TL_SramAdapter.scala 90:18]
  assign io_tl_o_a_ready = ~outstanding; // @[TL_SramAdapter.scala 83:19]
  assign io_we_o_0 = _T_10 & io_tl_i_a_mask[0]; // @[TL_SramAdapter.scala 59:18 TL_SramAdapter.scala 63:18]
  assign io_we_o_1 = _T_10 & io_tl_i_a_mask[1]; // @[TL_SramAdapter.scala 59:18 TL_SramAdapter.scala 63:18]
  assign io_we_o_2 = _T_10 & io_tl_i_a_mask[2]; // @[TL_SramAdapter.scala 59:18 TL_SramAdapter.scala 63:18]
  assign io_we_o_3 = _T_10 & io_tl_i_a_mask[3]; // @[TL_SramAdapter.scala 59:18 TL_SramAdapter.scala 63:18]
  assign io_addr_o = io_tl_i_a_address[7:2]; // @[TL_SramAdapter.scala 53:13]
  assign io_wdata_o = io_tl_i_a_data; // @[TL_SramAdapter.scala 54:14]
  assign tlErr_io_tl_i_a_valid = io_tl_i_a_valid; // @[TL_SramAdapter.scala 103:17]
  assign tlErr_io_tl_i_a_opcode = io_tl_i_a_opcode; // @[TL_SramAdapter.scala 103:17]
  assign tlErr_io_tl_i_a_address = io_tl_i_a_address; // @[TL_SramAdapter.scala 103:17]
  assign tlErr_io_tl_i_a_mask = io_tl_i_a_mask; // @[TL_SramAdapter.scala 103:17]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  error = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  outstanding = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      error <= 1'h0;
    end else if (a_ack) begin
      error <= err_internal;
    end
    if (reset) begin
      outstanding <= 1'h0;
    end else begin
      outstanding <= _GEN_5;
    end
  end
endmodule
module TL_ErrResp(
  input   clock,
  input   reset,
  input   io_tl_h_i_a_valid,
  output  io_tl_d_o_d_valid,
  output  io_tl_d_o_a_ready
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  err_reqPending; // @[TL_ErrResp.scala 15:31]
  wire  _T = io_tl_h_i_a_valid & io_tl_d_o_a_ready; // @[TL_ErrResp.scala 18:26]
  assign io_tl_d_o_d_valid = err_reqPending; // @[TL_ErrResp.scala 39:21]
  assign io_tl_d_o_a_ready = 1'h1; // @[TL_ErrResp.scala 38:21]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  err_reqPending = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      err_reqPending <= 1'h0;
    end else begin
      err_reqPending <= _T;
    end
  end
endmodule
module TLSocket1_N(
  input         clock,
  input         reset,
  input         io_tl_h_i_a_valid,
  input  [2:0]  io_tl_h_i_a_opcode,
  input  [31:0] io_tl_h_i_a_address,
  input  [3:0]  io_tl_h_i_a_mask,
  input  [31:0] io_tl_h_i_a_data,
  output        io_tl_h_o_d_valid,
  output [31:0] io_tl_h_o_d_data,
  output        io_tl_h_o_a_ready,
  output        io_tl_d_o_0_a_valid,
  output [2:0]  io_tl_d_o_0_a_opcode,
  output [31:0] io_tl_d_o_0_a_address,
  output [3:0]  io_tl_d_o_0_a_mask,
  output [31:0] io_tl_d_o_0_a_data,
  output        io_tl_d_o_1_a_valid,
  output [2:0]  io_tl_d_o_1_a_opcode,
  output [31:0] io_tl_d_o_1_a_address,
  output [3:0]  io_tl_d_o_1_a_mask,
  output [31:0] io_tl_d_o_1_a_data,
  input         io_tl_d_i_0_d_valid,
  input  [31:0] io_tl_d_i_0_d_data,
  input         io_tl_d_i_0_a_ready,
  input         io_tl_d_i_1_d_valid,
  input  [31:0] io_tl_d_i_1_d_data,
  input         io_tl_d_i_1_a_ready,
  input  [1:0]  io_dev_sel
);
  wire  tl_errResp_clock; // @[TLSocket1_N.scala 72:26]
  wire  tl_errResp_reset; // @[TLSocket1_N.scala 72:26]
  wire  tl_errResp_io_tl_h_i_a_valid; // @[TLSocket1_N.scala 72:26]
  wire  tl_errResp_io_tl_d_o_d_valid; // @[TLSocket1_N.scala 72:26]
  wire  tl_errResp_io_tl_d_o_a_ready; // @[TLSocket1_N.scala 72:26]
  wire  _T = io_dev_sel == 2'h0; // @[TLSocket1_N.scala 29:62]
  wire  _T_2 = io_dev_sel == 2'h1; // @[TLSocket1_N.scala 29:62]
  wire  _GEN_0 = _T ? io_tl_d_i_0_a_ready : 1'h1; // @[TLSocket1_N.scala 46:36]
  wire  tl_err_d_i_d_valid = tl_errResp_io_tl_d_o_d_valid; // @[TLSocket1_N.scala 21:24 TLSocket1_N.scala 74:14]
  wire  _GEN_1 = _T ? io_tl_d_i_0_d_valid : tl_err_d_i_d_valid; // @[TLSocket1_N.scala 46:36]
  wire [31:0] _GEN_7 = _T ? io_tl_d_i_0_d_data : 32'hffffffff; // @[TLSocket1_N.scala 46:36]
  wire  _T_6 = io_dev_sel == 2'h2; // @[TLSocket1_N.scala 62:58]
  TL_ErrResp tl_errResp ( // @[TLSocket1_N.scala 72:26]
    .clock(tl_errResp_clock),
    .reset(tl_errResp_reset),
    .io_tl_h_i_a_valid(tl_errResp_io_tl_h_i_a_valid),
    .io_tl_d_o_d_valid(tl_errResp_io_tl_d_o_d_valid),
    .io_tl_d_o_a_ready(tl_errResp_io_tl_d_o_a_ready)
  );
  assign io_tl_h_o_d_valid = _T_2 ? io_tl_d_i_1_d_valid : _GEN_1; // @[TLSocket1_N.scala 26:13 TLSocket1_N.scala 49:25 TLSocket1_N.scala 49:25]
  assign io_tl_h_o_d_data = _T_2 ? io_tl_d_i_1_d_data : _GEN_7; // @[TLSocket1_N.scala 26:13 TLSocket1_N.scala 55:24 TLSocket1_N.scala 55:24]
  assign io_tl_h_o_a_ready = _T_2 ? io_tl_d_i_1_a_ready : _GEN_0; // @[TLSocket1_N.scala 26:13 TLSocket1_N.scala 48:25 TLSocket1_N.scala 48:25]
  assign io_tl_d_o_0_a_valid = io_tl_h_i_a_valid & _T; // @[TLSocket1_N.scala 29:26]
  assign io_tl_d_o_0_a_opcode = io_tl_h_i_a_opcode; // @[TLSocket1_N.scala 30:27]
  assign io_tl_d_o_0_a_address = io_tl_h_i_a_address; // @[TLSocket1_N.scala 34:28]
  assign io_tl_d_o_0_a_mask = io_tl_h_i_a_mask; // @[TLSocket1_N.scala 35:25]
  assign io_tl_d_o_0_a_data = io_tl_h_i_a_data; // @[TLSocket1_N.scala 36:25]
  assign io_tl_d_o_1_a_valid = io_tl_h_i_a_valid & _T_2; // @[TLSocket1_N.scala 29:26]
  assign io_tl_d_o_1_a_opcode = io_tl_h_i_a_opcode; // @[TLSocket1_N.scala 30:27]
  assign io_tl_d_o_1_a_address = io_tl_h_i_a_address; // @[TLSocket1_N.scala 34:28]
  assign io_tl_d_o_1_a_mask = io_tl_h_i_a_mask; // @[TLSocket1_N.scala 35:25]
  assign io_tl_d_o_1_a_data = io_tl_h_i_a_data; // @[TLSocket1_N.scala 36:25]
  assign tl_errResp_clock = clock;
  assign tl_errResp_reset = reset;
  assign tl_errResp_io_tl_h_i_a_valid = io_tl_h_i_a_valid & _T_6; // @[TLSocket1_N.scala 73:24]
endmodule
module Ibtida_top(
  input         clock,
  input         reset,
  input         io_rx_i,
  input  [15:0] io_CLK_PER_BIT,
  input  [31:0] io_gpio_i,
  output [31:0] io_gpio_o,
  output [31:0] io_gpio_en_o,
  output        io_iccm_we_o_0,
  output        io_iccm_we_o_1,
  output        io_iccm_we_o_2,
  output        io_iccm_we_o_3,
  output [31:0] io_iccm_wdata_o,
  output [7:0]  io_iccm_addr_o,
  input  [31:0] io_iccm_rdata_i,
  output        io_dccm_we_o_0,
  output        io_dccm_we_o_1,
  output        io_dccm_we_o_2,
  output        io_dccm_we_o_3,
  output [31:0] io_dccm_wdata_o,
  output [7:0]  io_dccm_addr_o,
  input  [31:0] io_dccm_rdata_i
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  uart_ctrl_clock; // @[Ibtida_top.scala 30:25]
  wire  uart_ctrl_reset; // @[Ibtida_top.scala 30:25]
  wire  uart_ctrl_io_isStalled; // @[Ibtida_top.scala 30:25]
  wire [31:0] uart_ctrl_io_rx_data_o; // @[Ibtida_top.scala 30:25]
  wire [7:0] uart_ctrl_io_addr_o; // @[Ibtida_top.scala 30:25]
  wire [15:0] uart_ctrl_io_CLK_PER_BIT; // @[Ibtida_top.scala 30:25]
  wire  uart_ctrl_io_rxd; // @[Ibtida_top.scala 30:25]
  wire  uart_ctrl_io_valid; // @[Ibtida_top.scala 30:25]
  wire  uart_ctrl_io_done; // @[Ibtida_top.scala 30:25]
  wire  core_clock; // @[Ibtida_top.scala 33:51]
  wire  core_reset; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_gnt_i; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_rvalid_i; // @[Ibtida_top.scala 33:51]
  wire [31:0] core_io_data_rdata_i; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_req_o; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_we_o; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_be_o_0; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_be_o_1; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_be_o_2; // @[Ibtida_top.scala 33:51]
  wire  core_io_data_be_o_3; // @[Ibtida_top.scala 33:51]
  wire [31:0] core_io_data_addr_o; // @[Ibtida_top.scala 33:51]
  wire [7:0] core_io_data_wdata_o_0; // @[Ibtida_top.scala 33:51]
  wire [7:0] core_io_data_wdata_o_1; // @[Ibtida_top.scala 33:51]
  wire [7:0] core_io_data_wdata_o_2; // @[Ibtida_top.scala 33:51]
  wire [7:0] core_io_data_wdata_o_3; // @[Ibtida_top.scala 33:51]
  wire  core_io_instr_gnt_i; // @[Ibtida_top.scala 33:51]
  wire  core_io_instr_rvalid_i; // @[Ibtida_top.scala 33:51]
  wire [31:0] core_io_instr_rdata_i; // @[Ibtida_top.scala 33:51]
  wire  core_io_instr_req_o; // @[Ibtida_top.scala 33:51]
  wire [31:0] core_io_instr_addr_o; // @[Ibtida_top.scala 33:51]
  wire  core_io_stall_core_i; // @[Ibtida_top.scala 33:51]
  wire  core_io_irq_external_i; // @[Ibtida_top.scala 33:51]
  wire  gpio_clock; // @[Ibtida_top.scala 36:51]
  wire  gpio_reset; // @[Ibtida_top.scala 36:51]
  wire  gpio_io_tl_i_a_valid; // @[Ibtida_top.scala 36:51]
  wire [2:0] gpio_io_tl_i_a_opcode; // @[Ibtida_top.scala 36:51]
  wire [31:0] gpio_io_tl_i_a_address; // @[Ibtida_top.scala 36:51]
  wire [3:0] gpio_io_tl_i_a_mask; // @[Ibtida_top.scala 36:51]
  wire [31:0] gpio_io_tl_i_a_data; // @[Ibtida_top.scala 36:51]
  wire  gpio_io_tl_o_d_valid; // @[Ibtida_top.scala 36:51]
  wire [31:0] gpio_io_tl_o_d_data; // @[Ibtida_top.scala 36:51]
  wire  gpio_io_tl_o_a_ready; // @[Ibtida_top.scala 36:51]
  wire [31:0] gpio_io_cio_gpio_i; // @[Ibtida_top.scala 36:51]
  wire [31:0] gpio_io_cio_gpio_o; // @[Ibtida_top.scala 36:51]
  wire [31:0] gpio_io_cio_gpio_en_o; // @[Ibtida_top.scala 36:51]
  wire [31:0] gpio_io_intr_gpio_o; // @[Ibtida_top.scala 36:51]
  wire  core_iccm_tl_host_io_req_i; // @[Ibtida_top.scala 37:51]
  wire  core_iccm_tl_host_io_gnt_o; // @[Ibtida_top.scala 37:51]
  wire [31:0] core_iccm_tl_host_io_addr_i; // @[Ibtida_top.scala 37:51]
  wire  core_iccm_tl_host_io_we_i; // @[Ibtida_top.scala 37:51]
  wire [31:0] core_iccm_tl_host_io_wdata_i; // @[Ibtida_top.scala 37:51]
  wire [3:0] core_iccm_tl_host_io_be_i; // @[Ibtida_top.scala 37:51]
  wire  core_iccm_tl_host_io_valid_o; // @[Ibtida_top.scala 37:51]
  wire [31:0] core_iccm_tl_host_io_rdata_o; // @[Ibtida_top.scala 37:51]
  wire  core_iccm_tl_host_io_tl_o_a_valid; // @[Ibtida_top.scala 37:51]
  wire [2:0] core_iccm_tl_host_io_tl_o_a_opcode; // @[Ibtida_top.scala 37:51]
  wire [31:0] core_iccm_tl_host_io_tl_o_a_address; // @[Ibtida_top.scala 37:51]
  wire [3:0] core_iccm_tl_host_io_tl_o_a_mask; // @[Ibtida_top.scala 37:51]
  wire [31:0] core_iccm_tl_host_io_tl_o_a_data; // @[Ibtida_top.scala 37:51]
  wire  core_iccm_tl_host_io_tl_i_d_valid; // @[Ibtida_top.scala 37:51]
  wire [31:0] core_iccm_tl_host_io_tl_i_d_data; // @[Ibtida_top.scala 37:51]
  wire  core_iccm_tl_host_io_tl_i_a_ready; // @[Ibtida_top.scala 37:51]
  wire  core_loadStore_tl_host_io_req_i; // @[Ibtida_top.scala 38:51]
  wire  core_loadStore_tl_host_io_gnt_o; // @[Ibtida_top.scala 38:51]
  wire [31:0] core_loadStore_tl_host_io_addr_i; // @[Ibtida_top.scala 38:51]
  wire  core_loadStore_tl_host_io_we_i; // @[Ibtida_top.scala 38:51]
  wire [31:0] core_loadStore_tl_host_io_wdata_i; // @[Ibtida_top.scala 38:51]
  wire [3:0] core_loadStore_tl_host_io_be_i; // @[Ibtida_top.scala 38:51]
  wire  core_loadStore_tl_host_io_valid_o; // @[Ibtida_top.scala 38:51]
  wire [31:0] core_loadStore_tl_host_io_rdata_o; // @[Ibtida_top.scala 38:51]
  wire  core_loadStore_tl_host_io_tl_o_a_valid; // @[Ibtida_top.scala 38:51]
  wire [2:0] core_loadStore_tl_host_io_tl_o_a_opcode; // @[Ibtida_top.scala 38:51]
  wire [31:0] core_loadStore_tl_host_io_tl_o_a_address; // @[Ibtida_top.scala 38:51]
  wire [3:0] core_loadStore_tl_host_io_tl_o_a_mask; // @[Ibtida_top.scala 38:51]
  wire [31:0] core_loadStore_tl_host_io_tl_o_a_data; // @[Ibtida_top.scala 38:51]
  wire  core_loadStore_tl_host_io_tl_i_d_valid; // @[Ibtida_top.scala 38:51]
  wire [31:0] core_loadStore_tl_host_io_tl_i_d_data; // @[Ibtida_top.scala 38:51]
  wire  core_loadStore_tl_host_io_tl_i_a_ready; // @[Ibtida_top.scala 38:51]
  wire  iccm_tl_device_clock; // @[Ibtida_top.scala 39:51]
  wire  iccm_tl_device_reset; // @[Ibtida_top.scala 39:51]
  wire  iccm_tl_device_io_tl_i_a_valid; // @[Ibtida_top.scala 39:51]
  wire [2:0] iccm_tl_device_io_tl_i_a_opcode; // @[Ibtida_top.scala 39:51]
  wire [31:0] iccm_tl_device_io_tl_i_a_address; // @[Ibtida_top.scala 39:51]
  wire [3:0] iccm_tl_device_io_tl_i_a_mask; // @[Ibtida_top.scala 39:51]
  wire  iccm_tl_device_io_tl_o_d_valid; // @[Ibtida_top.scala 39:51]
  wire [31:0] iccm_tl_device_io_tl_o_d_data; // @[Ibtida_top.scala 39:51]
  wire  iccm_tl_device_io_tl_o_a_ready; // @[Ibtida_top.scala 39:51]
  wire [5:0] iccm_tl_device_io_addr_o; // @[Ibtida_top.scala 39:51]
  wire [31:0] iccm_tl_device_io_rdata_i; // @[Ibtida_top.scala 39:51]
  wire  dccm_tl_device_clock; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_reset; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_io_tl_i_a_valid; // @[Ibtida_top.scala 40:51]
  wire [2:0] dccm_tl_device_io_tl_i_a_opcode; // @[Ibtida_top.scala 40:51]
  wire [31:0] dccm_tl_device_io_tl_i_a_address; // @[Ibtida_top.scala 40:51]
  wire [3:0] dccm_tl_device_io_tl_i_a_mask; // @[Ibtida_top.scala 40:51]
  wire [31:0] dccm_tl_device_io_tl_i_a_data; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_io_tl_o_d_valid; // @[Ibtida_top.scala 40:51]
  wire [31:0] dccm_tl_device_io_tl_o_d_data; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_io_tl_o_a_ready; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_io_we_o_0; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_io_we_o_1; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_io_we_o_2; // @[Ibtida_top.scala 40:51]
  wire  dccm_tl_device_io_we_o_3; // @[Ibtida_top.scala 40:51]
  wire [5:0] dccm_tl_device_io_addr_o; // @[Ibtida_top.scala 40:51]
  wire [31:0] dccm_tl_device_io_wdata_o; // @[Ibtida_top.scala 40:51]
  wire [31:0] dccm_tl_device_io_rdata_i; // @[Ibtida_top.scala 40:51]
  wire  tl_switch_1to2_clock; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_reset; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_h_i_a_valid; // @[Ibtida_top.scala 41:51]
  wire [2:0] tl_switch_1to2_io_tl_h_i_a_opcode; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_h_i_a_address; // @[Ibtida_top.scala 41:51]
  wire [3:0] tl_switch_1to2_io_tl_h_i_a_mask; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_h_i_a_data; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_h_o_d_valid; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_h_o_d_data; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_h_o_a_ready; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_d_o_0_a_valid; // @[Ibtida_top.scala 41:51]
  wire [2:0] tl_switch_1to2_io_tl_d_o_0_a_opcode; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_d_o_0_a_address; // @[Ibtida_top.scala 41:51]
  wire [3:0] tl_switch_1to2_io_tl_d_o_0_a_mask; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_d_o_0_a_data; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_d_o_1_a_valid; // @[Ibtida_top.scala 41:51]
  wire [2:0] tl_switch_1to2_io_tl_d_o_1_a_opcode; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_d_o_1_a_address; // @[Ibtida_top.scala 41:51]
  wire [3:0] tl_switch_1to2_io_tl_d_o_1_a_mask; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_d_o_1_a_data; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_d_i_0_d_valid; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_d_i_0_d_data; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_d_i_0_a_ready; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_d_i_1_d_valid; // @[Ibtida_top.scala 41:51]
  wire [31:0] tl_switch_1to2_io_tl_d_i_1_d_data; // @[Ibtida_top.scala 41:51]
  wire  tl_switch_1to2_io_tl_d_i_1_a_ready; // @[Ibtida_top.scala 41:51]
  wire [1:0] tl_switch_1to2_io_dev_sel; // @[Ibtida_top.scala 41:51]
  reg [31:0] rx_data_reg; // @[Ibtida_top.scala 49:52]
  reg [31:0] rx_addr_reg; // @[Ibtida_top.scala 50:52]
  reg  reset_reg; // @[Ibtida_top.scala 51:52]
  reg [1:0] state_reg; // @[Ibtida_top.scala 55:52]
  wire  _T_1 = state_reg == 2'h0; // @[Ibtida_top.scala 59:18]
  wire  _T_4 = ~reset; // @[Ibtida_top.scala 61:49]
  wire  _T_5 = reset_reg & _T_4; // @[Ibtida_top.scala 61:31]
  wire  _T_6 = state_reg == 2'h1; // @[Ibtida_top.scala 78:25]
  wire [7:0] _T_8 = uart_ctrl_io_valid ? uart_ctrl_io_addr_o : 8'h0; // @[Ibtida_top.scala 112:48]
  wire  _T_9 = state_reg == 2'h2; // @[Ibtida_top.scala 114:25]
  wire  _T_10 = state_reg == 2'h3; // @[Ibtida_top.scala 138:25]
  wire [5:0] _GEN_4 = iccm_tl_device_io_addr_o; // @[Ibtida_top.scala 138:42]
  wire [31:0] _GEN_10 = _T_9 ? rx_addr_reg : {{26'd0}, _GEN_4}; // @[Ibtida_top.scala 114:41]
  wire  _GEN_13 = _T_6 ? 1'h0 : _T_9; // @[Ibtida_top.scala 78:40]
  wire  _GEN_16 = _T_6 | _T_9; // @[Ibtida_top.scala 78:40]
  wire [31:0] instr_addr = _T_1 ? {{26'd0}, iccm_tl_device_io_addr_o} : _GEN_10; // @[Ibtida_top.scala 59:28]
  wire [31:0] _T_12 = core_loadStore_tl_host_io_tl_o_a_address & 32'hfffff000; // @[Ibtida_top.scala 172:14]
  wire  _T_13 = _T_12 == 32'h40010000; // @[Ibtida_top.scala 172:44]
  wire [31:0] _T_15 = core_loadStore_tl_host_io_tl_o_a_address & 32'hffffff03; // @[Ibtida_top.scala 176:20]
  wire  _T_16 = _T_15 == 32'h10000000; // @[Ibtida_top.scala 176:50]
  wire [1:0] _GEN_26 = _T_16 ? 2'h0 : 2'h2; // @[Ibtida_top.scala 176:82]
  wire [15:0] _T_22 = {core_io_data_wdata_o_1,core_io_data_wdata_o_0}; // @[Ibtida_top.scala 253:72]
  wire [15:0] _T_23 = {core_io_data_wdata_o_3,core_io_data_wdata_o_2}; // @[Ibtida_top.scala 253:72]
  wire [1:0] _T_25 = {core_io_data_be_o_1,core_io_data_be_o_0}; // @[Cat.scala 29:58]
  wire [1:0] _T_26 = {core_io_data_be_o_3,core_io_data_be_o_2}; // @[Cat.scala 29:58]
  wire [3:0] _T_34 = {io_dccm_rdata_i[3],io_dccm_rdata_i[2],io_dccm_rdata_i[1],io_dccm_rdata_i[0]}; // @[Cat.scala 29:58]
  UartController uart_ctrl ( // @[Ibtida_top.scala 30:25]
    .clock(uart_ctrl_clock),
    .reset(uart_ctrl_reset),
    .io_isStalled(uart_ctrl_io_isStalled),
    .io_rx_data_o(uart_ctrl_io_rx_data_o),
    .io_addr_o(uart_ctrl_io_addr_o),
    .io_CLK_PER_BIT(uart_ctrl_io_CLK_PER_BIT),
    .io_rxd(uart_ctrl_io_rxd),
    .io_valid(uart_ctrl_io_valid),
    .io_done(uart_ctrl_io_done)
  );
  Core core ( // @[Ibtida_top.scala 33:51]
    .clock(core_clock),
    .reset(core_reset),
    .io_data_gnt_i(core_io_data_gnt_i),
    .io_data_rvalid_i(core_io_data_rvalid_i),
    .io_data_rdata_i(core_io_data_rdata_i),
    .io_data_req_o(core_io_data_req_o),
    .io_data_we_o(core_io_data_we_o),
    .io_data_be_o_0(core_io_data_be_o_0),
    .io_data_be_o_1(core_io_data_be_o_1),
    .io_data_be_o_2(core_io_data_be_o_2),
    .io_data_be_o_3(core_io_data_be_o_3),
    .io_data_addr_o(core_io_data_addr_o),
    .io_data_wdata_o_0(core_io_data_wdata_o_0),
    .io_data_wdata_o_1(core_io_data_wdata_o_1),
    .io_data_wdata_o_2(core_io_data_wdata_o_2),
    .io_data_wdata_o_3(core_io_data_wdata_o_3),
    .io_instr_gnt_i(core_io_instr_gnt_i),
    .io_instr_rvalid_i(core_io_instr_rvalid_i),
    .io_instr_rdata_i(core_io_instr_rdata_i),
    .io_instr_req_o(core_io_instr_req_o),
    .io_instr_addr_o(core_io_instr_addr_o),
    .io_stall_core_i(core_io_stall_core_i),
    .io_irq_external_i(core_io_irq_external_i)
  );
  Gpio gpio ( // @[Ibtida_top.scala 36:51]
    .clock(gpio_clock),
    .reset(gpio_reset),
    .io_tl_i_a_valid(gpio_io_tl_i_a_valid),
    .io_tl_i_a_opcode(gpio_io_tl_i_a_opcode),
    .io_tl_i_a_address(gpio_io_tl_i_a_address),
    .io_tl_i_a_mask(gpio_io_tl_i_a_mask),
    .io_tl_i_a_data(gpio_io_tl_i_a_data),
    .io_tl_o_d_valid(gpio_io_tl_o_d_valid),
    .io_tl_o_d_data(gpio_io_tl_o_d_data),
    .io_tl_o_a_ready(gpio_io_tl_o_a_ready),
    .io_cio_gpio_i(gpio_io_cio_gpio_i),
    .io_cio_gpio_o(gpio_io_cio_gpio_o),
    .io_cio_gpio_en_o(gpio_io_cio_gpio_en_o),
    .io_intr_gpio_o(gpio_io_intr_gpio_o)
  );
  TL_HostAdapter core_iccm_tl_host ( // @[Ibtida_top.scala 37:51]
    .io_req_i(core_iccm_tl_host_io_req_i),
    .io_gnt_o(core_iccm_tl_host_io_gnt_o),
    .io_addr_i(core_iccm_tl_host_io_addr_i),
    .io_we_i(core_iccm_tl_host_io_we_i),
    .io_wdata_i(core_iccm_tl_host_io_wdata_i),
    .io_be_i(core_iccm_tl_host_io_be_i),
    .io_valid_o(core_iccm_tl_host_io_valid_o),
    .io_rdata_o(core_iccm_tl_host_io_rdata_o),
    .io_tl_o_a_valid(core_iccm_tl_host_io_tl_o_a_valid),
    .io_tl_o_a_opcode(core_iccm_tl_host_io_tl_o_a_opcode),
    .io_tl_o_a_address(core_iccm_tl_host_io_tl_o_a_address),
    .io_tl_o_a_mask(core_iccm_tl_host_io_tl_o_a_mask),
    .io_tl_o_a_data(core_iccm_tl_host_io_tl_o_a_data),
    .io_tl_i_d_valid(core_iccm_tl_host_io_tl_i_d_valid),
    .io_tl_i_d_data(core_iccm_tl_host_io_tl_i_d_data),
    .io_tl_i_a_ready(core_iccm_tl_host_io_tl_i_a_ready)
  );
  TL_HostAdapter core_loadStore_tl_host ( // @[Ibtida_top.scala 38:51]
    .io_req_i(core_loadStore_tl_host_io_req_i),
    .io_gnt_o(core_loadStore_tl_host_io_gnt_o),
    .io_addr_i(core_loadStore_tl_host_io_addr_i),
    .io_we_i(core_loadStore_tl_host_io_we_i),
    .io_wdata_i(core_loadStore_tl_host_io_wdata_i),
    .io_be_i(core_loadStore_tl_host_io_be_i),
    .io_valid_o(core_loadStore_tl_host_io_valid_o),
    .io_rdata_o(core_loadStore_tl_host_io_rdata_o),
    .io_tl_o_a_valid(core_loadStore_tl_host_io_tl_o_a_valid),
    .io_tl_o_a_opcode(core_loadStore_tl_host_io_tl_o_a_opcode),
    .io_tl_o_a_address(core_loadStore_tl_host_io_tl_o_a_address),
    .io_tl_o_a_mask(core_loadStore_tl_host_io_tl_o_a_mask),
    .io_tl_o_a_data(core_loadStore_tl_host_io_tl_o_a_data),
    .io_tl_i_d_valid(core_loadStore_tl_host_io_tl_i_d_valid),
    .io_tl_i_d_data(core_loadStore_tl_host_io_tl_i_d_data),
    .io_tl_i_a_ready(core_loadStore_tl_host_io_tl_i_a_ready)
  );
  TL_SramAdapter iccm_tl_device ( // @[Ibtida_top.scala 39:51]
    .clock(iccm_tl_device_clock),
    .reset(iccm_tl_device_reset),
    .io_tl_i_a_valid(iccm_tl_device_io_tl_i_a_valid),
    .io_tl_i_a_opcode(iccm_tl_device_io_tl_i_a_opcode),
    .io_tl_i_a_address(iccm_tl_device_io_tl_i_a_address),
    .io_tl_i_a_mask(iccm_tl_device_io_tl_i_a_mask),
    .io_tl_o_d_valid(iccm_tl_device_io_tl_o_d_valid),
    .io_tl_o_d_data(iccm_tl_device_io_tl_o_d_data),
    .io_tl_o_a_ready(iccm_tl_device_io_tl_o_a_ready),
    .io_addr_o(iccm_tl_device_io_addr_o),
    .io_rdata_i(iccm_tl_device_io_rdata_i)
  );
  TL_SramAdapter_1 dccm_tl_device ( // @[Ibtida_top.scala 40:51]
    .clock(dccm_tl_device_clock),
    .reset(dccm_tl_device_reset),
    .io_tl_i_a_valid(dccm_tl_device_io_tl_i_a_valid),
    .io_tl_i_a_opcode(dccm_tl_device_io_tl_i_a_opcode),
    .io_tl_i_a_address(dccm_tl_device_io_tl_i_a_address),
    .io_tl_i_a_mask(dccm_tl_device_io_tl_i_a_mask),
    .io_tl_i_a_data(dccm_tl_device_io_tl_i_a_data),
    .io_tl_o_d_valid(dccm_tl_device_io_tl_o_d_valid),
    .io_tl_o_d_data(dccm_tl_device_io_tl_o_d_data),
    .io_tl_o_a_ready(dccm_tl_device_io_tl_o_a_ready),
    .io_we_o_0(dccm_tl_device_io_we_o_0),
    .io_we_o_1(dccm_tl_device_io_we_o_1),
    .io_we_o_2(dccm_tl_device_io_we_o_2),
    .io_we_o_3(dccm_tl_device_io_we_o_3),
    .io_addr_o(dccm_tl_device_io_addr_o),
    .io_wdata_o(dccm_tl_device_io_wdata_o),
    .io_rdata_i(dccm_tl_device_io_rdata_i)
  );
  TLSocket1_N tl_switch_1to2 ( // @[Ibtida_top.scala 41:51]
    .clock(tl_switch_1to2_clock),
    .reset(tl_switch_1to2_reset),
    .io_tl_h_i_a_valid(tl_switch_1to2_io_tl_h_i_a_valid),
    .io_tl_h_i_a_opcode(tl_switch_1to2_io_tl_h_i_a_opcode),
    .io_tl_h_i_a_address(tl_switch_1to2_io_tl_h_i_a_address),
    .io_tl_h_i_a_mask(tl_switch_1to2_io_tl_h_i_a_mask),
    .io_tl_h_i_a_data(tl_switch_1to2_io_tl_h_i_a_data),
    .io_tl_h_o_d_valid(tl_switch_1to2_io_tl_h_o_d_valid),
    .io_tl_h_o_d_data(tl_switch_1to2_io_tl_h_o_d_data),
    .io_tl_h_o_a_ready(tl_switch_1to2_io_tl_h_o_a_ready),
    .io_tl_d_o_0_a_valid(tl_switch_1to2_io_tl_d_o_0_a_valid),
    .io_tl_d_o_0_a_opcode(tl_switch_1to2_io_tl_d_o_0_a_opcode),
    .io_tl_d_o_0_a_address(tl_switch_1to2_io_tl_d_o_0_a_address),
    .io_tl_d_o_0_a_mask(tl_switch_1to2_io_tl_d_o_0_a_mask),
    .io_tl_d_o_0_a_data(tl_switch_1to2_io_tl_d_o_0_a_data),
    .io_tl_d_o_1_a_valid(tl_switch_1to2_io_tl_d_o_1_a_valid),
    .io_tl_d_o_1_a_opcode(tl_switch_1to2_io_tl_d_o_1_a_opcode),
    .io_tl_d_o_1_a_address(tl_switch_1to2_io_tl_d_o_1_a_address),
    .io_tl_d_o_1_a_mask(tl_switch_1to2_io_tl_d_o_1_a_mask),
    .io_tl_d_o_1_a_data(tl_switch_1to2_io_tl_d_o_1_a_data),
    .io_tl_d_i_0_d_valid(tl_switch_1to2_io_tl_d_i_0_d_valid),
    .io_tl_d_i_0_d_data(tl_switch_1to2_io_tl_d_i_0_d_data),
    .io_tl_d_i_0_a_ready(tl_switch_1to2_io_tl_d_i_0_a_ready),
    .io_tl_d_i_1_d_valid(tl_switch_1to2_io_tl_d_i_1_d_valid),
    .io_tl_d_i_1_d_data(tl_switch_1to2_io_tl_d_i_1_d_data),
    .io_tl_d_i_1_a_ready(tl_switch_1to2_io_tl_d_i_1_a_ready),
    .io_dev_sel(tl_switch_1to2_io_dev_sel)
  );
  assign io_gpio_o = gpio_io_cio_gpio_o; // @[Ibtida_top.scala 281:36]
  assign io_gpio_en_o = ~gpio_io_cio_gpio_en_o; // @[Ibtida_top.scala 282:36]
  assign io_iccm_we_o_0 = _T_1 ? 1'h0 : _GEN_13; // @[Ibtida_top.scala 232:36]
  assign io_iccm_we_o_1 = _T_1 ? 1'h0 : _GEN_13; // @[Ibtida_top.scala 232:36]
  assign io_iccm_we_o_2 = _T_1 ? 1'h0 : _GEN_13; // @[Ibtida_top.scala 232:36]
  assign io_iccm_we_o_3 = _T_1 ? 1'h0 : _GEN_13; // @[Ibtida_top.scala 232:36]
  assign io_iccm_wdata_o = rx_data_reg; // @[Ibtida_top.scala 234:36]
  assign io_iccm_addr_o = instr_addr[7:0]; // @[Ibtida_top.scala 233:36]
  assign io_dccm_we_o_0 = dccm_tl_device_io_we_o_0; // @[Ibtida_top.scala 266:36]
  assign io_dccm_we_o_1 = dccm_tl_device_io_we_o_1; // @[Ibtida_top.scala 266:36]
  assign io_dccm_we_o_2 = dccm_tl_device_io_we_o_2; // @[Ibtida_top.scala 266:36]
  assign io_dccm_we_o_3 = dccm_tl_device_io_we_o_3; // @[Ibtida_top.scala 266:36]
  assign io_dccm_wdata_o = dccm_tl_device_io_wdata_o; // @[Ibtida_top.scala 265:36]
  assign io_dccm_addr_o = {{2'd0}, dccm_tl_device_io_addr_o}; // @[Ibtida_top.scala 264:36]
  assign uart_ctrl_clock = clock;
  assign uart_ctrl_reset = reset;
  assign uart_ctrl_io_isStalled = _T_1 ? 1'h0 : _GEN_16; // @[Ibtida_top.scala 77:36 Ibtida_top.scala 104:36 Ibtida_top.scala 136:36 Ibtida_top.scala 146:36]
  assign uart_ctrl_io_CLK_PER_BIT = io_CLK_PER_BIT; // @[Ibtida_top.scala 31:28]
  assign uart_ctrl_io_rxd = io_rx_i; // @[Ibtida_top.scala 53:36]
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_data_gnt_i = core_loadStore_tl_host_io_gnt_o; // @[Ibtida_top.scala 286:36]
  assign core_io_data_rvalid_i = core_loadStore_tl_host_io_valid_o; // @[Ibtida_top.scala 287:36]
  assign core_io_data_rdata_i = core_loadStore_tl_host_io_rdata_o; // @[Ibtida_top.scala 288:36]
  assign core_io_instr_gnt_i = core_iccm_tl_host_io_gnt_o; // @[Ibtida_top.scala 244:36]
  assign core_io_instr_rvalid_i = core_iccm_tl_host_io_valid_o; // @[Ibtida_top.scala 245:36]
  assign core_io_instr_rdata_i = core_iccm_tl_host_io_rdata_o; // @[Ibtida_top.scala 243:36]
  assign core_io_stall_core_i = _T_1 ? 1'h0 : _GEN_16; // @[Ibtida_top.scala 76:36 Ibtida_top.scala 103:36 Ibtida_top.scala 135:36 Ibtida_top.scala 145:36]
  assign core_io_irq_external_i = |gpio_io_intr_gpio_o; // @[Ibtida_top.scala 285:36]
  assign gpio_clock = clock;
  assign gpio_reset = reset;
  assign gpio_io_tl_i_a_valid = tl_switch_1to2_io_tl_d_o_1_a_valid; // @[Ibtida_top.scala 213:36]
  assign gpio_io_tl_i_a_opcode = tl_switch_1to2_io_tl_d_o_1_a_opcode; // @[Ibtida_top.scala 213:36]
  assign gpio_io_tl_i_a_address = tl_switch_1to2_io_tl_d_o_1_a_address; // @[Ibtida_top.scala 213:36]
  assign gpio_io_tl_i_a_mask = tl_switch_1to2_io_tl_d_o_1_a_mask; // @[Ibtida_top.scala 213:36]
  assign gpio_io_tl_i_a_data = tl_switch_1to2_io_tl_d_o_1_a_data; // @[Ibtida_top.scala 213:36]
  assign gpio_io_cio_gpio_i = io_gpio_i; // @[Ibtida_top.scala 279:36]
  assign core_iccm_tl_host_io_req_i = core_io_instr_req_o; // @[Ibtida_top.scala 222:36]
  assign core_iccm_tl_host_io_addr_i = core_io_instr_addr_o; // @[Ibtida_top.scala 223:36]
  assign core_iccm_tl_host_io_we_i = 1'h0; // @[Ibtida_top.scala 224:36]
  assign core_iccm_tl_host_io_wdata_i = 32'h0; // @[Ibtida_top.scala 225:36]
  assign core_iccm_tl_host_io_be_i = 4'hf; // @[Ibtida_top.scala 226:36]
  assign core_iccm_tl_host_io_tl_i_d_valid = iccm_tl_device_io_tl_o_d_valid; // @[Ibtida_top.scala 229:36]
  assign core_iccm_tl_host_io_tl_i_d_data = iccm_tl_device_io_tl_o_d_data; // @[Ibtida_top.scala 229:36]
  assign core_iccm_tl_host_io_tl_i_a_ready = 1'h1; // @[Ibtida_top.scala 229:36]
  assign core_loadStore_tl_host_io_req_i = core_io_data_req_o; // @[Ibtida_top.scala 250:36]
  assign core_loadStore_tl_host_io_addr_i = core_io_data_addr_o; // @[Ibtida_top.scala 251:36]
  assign core_loadStore_tl_host_io_we_i = core_io_data_we_o; // @[Ibtida_top.scala 252:36]
  assign core_loadStore_tl_host_io_wdata_i = {_T_23,_T_22}; // @[Ibtida_top.scala 253:36]
  assign core_loadStore_tl_host_io_be_i = {_T_26,_T_25}; // @[Ibtida_top.scala 254:36]
  assign core_loadStore_tl_host_io_tl_i_d_valid = tl_switch_1to2_io_tl_h_o_d_valid; // @[Ibtida_top.scala 199:36]
  assign core_loadStore_tl_host_io_tl_i_d_data = tl_switch_1to2_io_tl_h_o_d_data; // @[Ibtida_top.scala 199:36]
  assign core_loadStore_tl_host_io_tl_i_a_ready = tl_switch_1to2_io_tl_h_o_a_ready; // @[Ibtida_top.scala 199:36]
  assign iccm_tl_device_clock = clock;
  assign iccm_tl_device_reset = reset;
  assign iccm_tl_device_io_tl_i_a_valid = core_iccm_tl_host_io_tl_o_a_valid; // @[Ibtida_top.scala 228:36]
  assign iccm_tl_device_io_tl_i_a_opcode = core_iccm_tl_host_io_tl_o_a_opcode; // @[Ibtida_top.scala 228:36]
  assign iccm_tl_device_io_tl_i_a_address = core_iccm_tl_host_io_tl_o_a_address; // @[Ibtida_top.scala 228:36]
  assign iccm_tl_device_io_tl_i_a_mask = core_iccm_tl_host_io_tl_o_a_mask; // @[Ibtida_top.scala 228:36]
  assign iccm_tl_device_io_rdata_i = io_iccm_rdata_i; // @[Ibtida_top.scala 241:36]
  assign dccm_tl_device_clock = clock;
  assign dccm_tl_device_reset = reset;
  assign dccm_tl_device_io_tl_i_a_valid = tl_switch_1to2_io_tl_d_o_0_a_valid; // @[Ibtida_top.scala 204:36]
  assign dccm_tl_device_io_tl_i_a_opcode = tl_switch_1to2_io_tl_d_o_0_a_opcode; // @[Ibtida_top.scala 204:36]
  assign dccm_tl_device_io_tl_i_a_address = tl_switch_1to2_io_tl_d_o_0_a_address; // @[Ibtida_top.scala 204:36]
  assign dccm_tl_device_io_tl_i_a_mask = tl_switch_1to2_io_tl_d_o_0_a_mask; // @[Ibtida_top.scala 204:36]
  assign dccm_tl_device_io_tl_i_a_data = tl_switch_1to2_io_tl_d_o_0_a_data; // @[Ibtida_top.scala 204:36]
  assign dccm_tl_device_io_rdata_i = {{28'd0}, _T_34}; // @[Ibtida_top.scala 260:36]
  assign tl_switch_1to2_clock = clock;
  assign tl_switch_1to2_reset = reset;
  assign tl_switch_1to2_io_tl_h_i_a_valid = core_loadStore_tl_host_io_tl_o_a_valid; // @[Ibtida_top.scala 195:36]
  assign tl_switch_1to2_io_tl_h_i_a_opcode = core_loadStore_tl_host_io_tl_o_a_opcode; // @[Ibtida_top.scala 195:36]
  assign tl_switch_1to2_io_tl_h_i_a_address = core_loadStore_tl_host_io_tl_o_a_address; // @[Ibtida_top.scala 195:36]
  assign tl_switch_1to2_io_tl_h_i_a_mask = core_loadStore_tl_host_io_tl_o_a_mask; // @[Ibtida_top.scala 195:36]
  assign tl_switch_1to2_io_tl_h_i_a_data = core_loadStore_tl_host_io_tl_o_a_data; // @[Ibtida_top.scala 195:36]
  assign tl_switch_1to2_io_tl_d_i_0_d_valid = dccm_tl_device_io_tl_o_d_valid; // @[Ibtida_top.scala 208:36]
  assign tl_switch_1to2_io_tl_d_i_0_d_data = dccm_tl_device_io_tl_o_d_data; // @[Ibtida_top.scala 208:36]
  assign tl_switch_1to2_io_tl_d_i_0_a_ready = dccm_tl_device_io_tl_o_a_ready; // @[Ibtida_top.scala 208:36]
  assign tl_switch_1to2_io_tl_d_i_1_d_valid = gpio_io_tl_o_d_valid; // @[Ibtida_top.scala 217:36]
  assign tl_switch_1to2_io_tl_d_i_1_d_data = gpio_io_tl_o_d_data; // @[Ibtida_top.scala 217:36]
  assign tl_switch_1to2_io_tl_d_i_1_a_ready = gpio_io_tl_o_a_ready; // @[Ibtida_top.scala 217:36]
  assign tl_switch_1to2_io_dev_sel = _T_13 ? 2'h1 : _GEN_26; // @[Ibtida_top.scala 191:36]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
  rx_data_reg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  rx_addr_reg = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reset_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_reg = _RAND_3[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rx_data_reg <= 32'h0;
    end else if (!(_T_1)) begin
      if (_T_6) begin
        if (uart_ctrl_io_valid) begin
          rx_data_reg <= uart_ctrl_io_rx_data_o;
        end else begin
          rx_data_reg <= 32'h0;
        end
      end
    end
    if (reset) begin
      rx_addr_reg <= 32'h0;
    end else if (!(_T_1)) begin
      if (_T_6) begin
        rx_addr_reg <= {{24'd0}, _T_8};
      end
    end
    reset_reg <= reset;
    if (reset) begin
      state_reg <= 2'h0;
    end else if (_T_1) begin
      if (_T_5) begin
        state_reg <= 2'h1;
      end else begin
        state_reg <= 2'h0;
      end
    end else if (_T_6) begin
      if (uart_ctrl_io_valid) begin
        state_reg <= 2'h2;
      end else if (uart_ctrl_io_done) begin
        state_reg <= 2'h3;
      end else begin
        state_reg <= 2'h1;
      end
    end else if (_T_9) begin
      if (uart_ctrl_io_done) begin
        state_reg <= 2'h3;
      end else begin
        state_reg <= 2'h1;
      end
    end else if (_T_10) begin
      state_reg <= 2'h0;
    end
  end
endmodule
module InstMem(
  input         clock,
  input         io_we_i_0,
  input         io_we_i_1,
  input         io_we_i_2,
  input         io_we_i_3,
  input  [5:0]  io_addr_i,
  input  [31:0] io_wdata_i,
  output [31:0] io_rdata_o
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem [0:63]; // @[InstMem.scala 15:24]
  wire [31:0] mem__T_data; // @[InstMem.scala 15:24]
  wire [5:0] mem__T_addr; // @[InstMem.scala 15:24]
  wire [31:0] mem__T_9_data; // @[InstMem.scala 15:24]
  wire [5:0] mem__T_9_addr; // @[InstMem.scala 15:24]
  wire  mem__T_9_mask; // @[InstMem.scala 15:24]
  wire  mem__T_9_en; // @[InstMem.scala 15:24]
  reg [5:0] mem__T_addr_pipe_0;
  wire  _T_6 = io_we_i_0 & io_we_i_1; // @[InstMem.scala 23:24]
  wire  _T_7 = _T_6 & io_we_i_2; // @[InstMem.scala 23:24]
  assign mem__T_addr = mem__T_addr_pipe_0;
  assign mem__T_data = mem[mem__T_addr]; // @[InstMem.scala 15:24]
  assign mem__T_9_data = io_wdata_i;
  assign mem__T_9_addr = io_addr_i;
  assign mem__T_9_mask = 1'h1;
  assign mem__T_9_en = _T_7 & io_we_i_3;
  assign io_rdata_o = mem__T_data; // @[InstMem.scala 22:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem__T_addr_pipe_0 = _RAND_1[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(mem__T_9_en & mem__T_9_mask) begin
      mem[mem__T_9_addr] <= mem__T_9_data; // @[InstMem.scala 15:24]
    end
    mem__T_addr_pipe_0 <= io_addr_i;
  end
endmodule
module DataMem(
  input        clock,
  input        io_we_i_0,
  input        io_we_i_1,
  input        io_we_i_2,
  input        io_we_i_3,
  input  [5:0] io_addr_i,
  input  [7:0] io_wdata_i_0,
  input  [7:0] io_wdata_i_1,
  input  [7:0] io_wdata_i_2,
  input  [7:0] io_wdata_i_3,
  output [7:0] io_rdata_o_0,
  output [7:0] io_rdata_o_1,
  output [7:0] io_rdata_o_2,
  output [7:0] io_rdata_o_3
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem_0 [0:63]; // @[DataMem.scala 15:24]
  wire [7:0] mem_0__T_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_0__T_addr; // @[DataMem.scala 15:24]
  wire [7:0] mem_0__T_10_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_0__T_10_addr; // @[DataMem.scala 15:24]
  wire  mem_0__T_10_mask; // @[DataMem.scala 15:24]
  wire  mem_0__T_10_en; // @[DataMem.scala 15:24]
  reg [5:0] mem_0__T_addr_pipe_0;
  reg [7:0] mem_1 [0:63]; // @[DataMem.scala 15:24]
  wire [7:0] mem_1__T_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_1__T_addr; // @[DataMem.scala 15:24]
  wire [7:0] mem_1__T_10_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_1__T_10_addr; // @[DataMem.scala 15:24]
  wire  mem_1__T_10_mask; // @[DataMem.scala 15:24]
  wire  mem_1__T_10_en; // @[DataMem.scala 15:24]
  reg [5:0] mem_1__T_addr_pipe_0;
  reg [7:0] mem_2 [0:63]; // @[DataMem.scala 15:24]
  wire [7:0] mem_2__T_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_2__T_addr; // @[DataMem.scala 15:24]
  wire [7:0] mem_2__T_10_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_2__T_10_addr; // @[DataMem.scala 15:24]
  wire  mem_2__T_10_mask; // @[DataMem.scala 15:24]
  wire  mem_2__T_10_en; // @[DataMem.scala 15:24]
  reg [5:0] mem_2__T_addr_pipe_0;
  reg [7:0] mem_3 [0:63]; // @[DataMem.scala 15:24]
  wire [7:0] mem_3__T_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_3__T_addr; // @[DataMem.scala 15:24]
  wire [7:0] mem_3__T_10_data; // @[DataMem.scala 15:24]
  wire [5:0] mem_3__T_10_addr; // @[DataMem.scala 15:24]
  wire  mem_3__T_10_mask; // @[DataMem.scala 15:24]
  wire  mem_3__T_10_en; // @[DataMem.scala 15:24]
  reg [5:0] mem_3__T_addr_pipe_0;
  wire  _T_6 = io_we_i_0 | io_we_i_1; // @[DataMem.scala 18:26]
  wire  _T_7 = _T_6 | io_we_i_2; // @[DataMem.scala 18:26]
  assign mem_0__T_addr = mem_0__T_addr_pipe_0;
  assign mem_0__T_data = mem_0[mem_0__T_addr]; // @[DataMem.scala 15:24]
  assign mem_0__T_10_data = io_wdata_i_0;
  assign mem_0__T_10_addr = io_addr_i;
  assign mem_0__T_10_mask = io_we_i_0;
  assign mem_0__T_10_en = _T_7 | io_we_i_3;
  assign mem_1__T_addr = mem_1__T_addr_pipe_0;
  assign mem_1__T_data = mem_1[mem_1__T_addr]; // @[DataMem.scala 15:24]
  assign mem_1__T_10_data = io_wdata_i_1;
  assign mem_1__T_10_addr = io_addr_i;
  assign mem_1__T_10_mask = io_we_i_1;
  assign mem_1__T_10_en = _T_7 | io_we_i_3;
  assign mem_2__T_addr = mem_2__T_addr_pipe_0;
  assign mem_2__T_data = mem_2[mem_2__T_addr]; // @[DataMem.scala 15:24]
  assign mem_2__T_10_data = io_wdata_i_2;
  assign mem_2__T_10_addr = io_addr_i;
  assign mem_2__T_10_mask = io_we_i_2;
  assign mem_2__T_10_en = _T_7 | io_we_i_3;
  assign mem_3__T_addr = mem_3__T_addr_pipe_0;
  assign mem_3__T_data = mem_3[mem_3__T_addr]; // @[DataMem.scala 15:24]
  assign mem_3__T_10_data = io_wdata_i_3;
  assign mem_3__T_10_addr = io_addr_i;
  assign mem_3__T_10_mask = io_we_i_3;
  assign mem_3__T_10_en = _T_7 | io_we_i_3;
  assign io_rdata_o_0 = mem_0__T_data; // @[DataMem.scala 17:16]
  assign io_rdata_o_1 = mem_1__T_data; // @[DataMem.scala 17:16]
  assign io_rdata_o_2 = mem_2__T_data; // @[DataMem.scala 17:16]
  assign io_rdata_o_3 = mem_3__T_data; // @[DataMem.scala 17:16]
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
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    mem_0[initvar] = _RAND_0[7:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    mem_1[initvar] = _RAND_2[7:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    mem_2[initvar] = _RAND_4[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    mem_3[initvar] = _RAND_6[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_0__T_addr_pipe_0 = _RAND_1[5:0];
  _RAND_3 = {1{`RANDOM}};
  mem_1__T_addr_pipe_0 = _RAND_3[5:0];
  _RAND_5 = {1{`RANDOM}};
  mem_2__T_addr_pipe_0 = _RAND_5[5:0];
  _RAND_7 = {1{`RANDOM}};
  mem_3__T_addr_pipe_0 = _RAND_7[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(mem_0__T_10_en & mem_0__T_10_mask) begin
      mem_0[mem_0__T_10_addr] <= mem_0__T_10_data; // @[DataMem.scala 15:24]
    end
    mem_0__T_addr_pipe_0 <= io_addr_i;
    if(mem_1__T_10_en & mem_1__T_10_mask) begin
      mem_1[mem_1__T_10_addr] <= mem_1__T_10_data; // @[DataMem.scala 15:24]
    end
    mem_1__T_addr_pipe_0 <= io_addr_i;
    if(mem_2__T_10_en & mem_2__T_10_mask) begin
      mem_2[mem_2__T_10_addr] <= mem_2__T_10_data; // @[DataMem.scala 15:24]
    end
    mem_2__T_addr_pipe_0 <= io_addr_i;
    if(mem_3__T_10_en & mem_3__T_10_mask) begin
      mem_3[mem_3__T_10_addr] <= mem_3__T_10_data; // @[DataMem.scala 15:24]
    end
    mem_3__T_addr_pipe_0 <= io_addr_i;
  end
endmodule
module Ibtida_top_dffram_cv(
  input         clock,
  input         reset,
  input         io_rx_i,
  input  [15:0] io_CLK_PER_BIT,
  input  [29:0] io_gpio_i,
  output [29:0] io_gpio_o,
  output [29:0] io_gpio_en_o
);
  wire  ibtidaTop_clock; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_reset; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_rx_i; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [15:0] ibtidaTop_io_CLK_PER_BIT; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [31:0] ibtidaTop_io_gpio_i; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [31:0] ibtidaTop_io_gpio_o; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [31:0] ibtidaTop_io_gpio_en_o; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_iccm_we_o_0; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_iccm_we_o_1; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_iccm_we_o_2; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_iccm_we_o_3; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [31:0] ibtidaTop_io_iccm_wdata_o; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [7:0] ibtidaTop_io_iccm_addr_o; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [31:0] ibtidaTop_io_iccm_rdata_i; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_dccm_we_o_0; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_dccm_we_o_1; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_dccm_we_o_2; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  ibtidaTop_io_dccm_we_o_3; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [31:0] ibtidaTop_io_dccm_wdata_o; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [7:0] ibtidaTop_io_dccm_addr_o; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire [31:0] ibtidaTop_io_dccm_rdata_i; // @[Ibtida_top_dffram_cv.scala 15:25]
  wire  iccm_clock; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire  iccm_io_we_i_0; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire  iccm_io_we_i_1; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire  iccm_io_we_i_2; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire  iccm_io_we_i_3; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire [5:0] iccm_io_addr_i; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire [31:0] iccm_io_wdata_i; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire [31:0] iccm_io_rdata_o; // @[Ibtida_top_dffram_cv.scala 16:25]
  wire  dccm_clock; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire  dccm_io_we_i_0; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire  dccm_io_we_i_1; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire  dccm_io_we_i_2; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire  dccm_io_we_i_3; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [5:0] dccm_io_addr_i; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_wdata_i_0; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_wdata_i_1; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_wdata_i_2; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_wdata_i_3; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_rdata_o_0; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_rdata_o_1; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_rdata_o_2; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [7:0] dccm_io_rdata_o_3; // @[Ibtida_top_dffram_cv.scala 17:25]
  wire [15:0] _T_6 = {dccm_io_rdata_o_1,dccm_io_rdata_o_0}; // @[Ibtida_top_dffram_cv.scala 41:54]
  wire [15:0] _T_7 = {dccm_io_rdata_o_3,dccm_io_rdata_o_2}; // @[Ibtida_top_dffram_cv.scala 41:54]
  Ibtida_top ibtidaTop ( // @[Ibtida_top_dffram_cv.scala 15:25]
    .clock(ibtidaTop_clock),
    .reset(ibtidaTop_reset),
    .io_rx_i(ibtidaTop_io_rx_i),
    .io_CLK_PER_BIT(ibtidaTop_io_CLK_PER_BIT),
    .io_gpio_i(ibtidaTop_io_gpio_i),
    .io_gpio_o(ibtidaTop_io_gpio_o),
    .io_gpio_en_o(ibtidaTop_io_gpio_en_o),
    .io_iccm_we_o_0(ibtidaTop_io_iccm_we_o_0),
    .io_iccm_we_o_1(ibtidaTop_io_iccm_we_o_1),
    .io_iccm_we_o_2(ibtidaTop_io_iccm_we_o_2),
    .io_iccm_we_o_3(ibtidaTop_io_iccm_we_o_3),
    .io_iccm_wdata_o(ibtidaTop_io_iccm_wdata_o),
    .io_iccm_addr_o(ibtidaTop_io_iccm_addr_o),
    .io_iccm_rdata_i(ibtidaTop_io_iccm_rdata_i),
    .io_dccm_we_o_0(ibtidaTop_io_dccm_we_o_0),
    .io_dccm_we_o_1(ibtidaTop_io_dccm_we_o_1),
    .io_dccm_we_o_2(ibtidaTop_io_dccm_we_o_2),
    .io_dccm_we_o_3(ibtidaTop_io_dccm_we_o_3),
    .io_dccm_wdata_o(ibtidaTop_io_dccm_wdata_o),
    .io_dccm_addr_o(ibtidaTop_io_dccm_addr_o),
    .io_dccm_rdata_i(ibtidaTop_io_dccm_rdata_i)
  );

// dffram for data memory

  reg [31:0] RAM_DCCM[(64*1)-1 : 0];
  reg [31:0] RAM_DCCM_DATA;
  wire [3:0] WE_DCCM;
  wire EN = 1'b1;
  wire [31:0] DCCM_di;
  wire [5:0] DCCM_A;

  assign DCCM_A = dccm_io_addr_i;
  assign DCCM_di = {dccm_io_wdata_i_3, dccm_io_wdata_i_2, dccm_io_wdata_i_1, dccm_io_wdata_i_0};
  assign WE_DCCM = {dccm_io_we_i_3, dccm_io_we_i_2, dccm_io_we_i_1, dccm_io_we_i_0};

  always @(posedge dccm_clock) begin
    if(EN) begin
      RAM_DCCM_DATA <= RAM_DCCM[DCCM_A];
      if(WE_DCCM[0]) RAM_DCCM[DCCM_A][ 7: 0] <= DCCM_di[7:0];
      if(WE_DCCM[1]) RAM_DCCM[DCCM_A][15: 8] <= DCCM_di[15:8];
      if(WE_DCCM[2]) RAM_DCCM[DCCM_A][23:16] <= DCCM_di[23:16];
      if(WE_DCCM[3]) RAM_DCCM[DCCM_A][31:24] <= DCCM_di[31:24];
    end
  end

  assign dccm_io_rdata_o_3 = RAM_DCCM_DATA[31:24];
  assign dccm_io_rdata_o_2 = RAM_DCCM_DATA[23:16];
  assign dccm_io_rdata_o_1 = RAM_DCCM_DATA[15:8];
  assign dccm_io_rdata_o_0 = RAM_DCCM_DATA[7:0];


  // dffram for instruction memory
  reg [31:0] RAM_ICCM[(64*1)-1 : 0];
  reg [31:0] RAM_ICCM_DATA;
  wire [3:0] WE_ICCM;
  wire [31:0] ICCM_di;
  wire [5:0] ICCM_A;

  assign ICCM_A = iccm_io_addr_i;
  assign ICCM_di = iccm_io_wdata_i;
  assign WE_ICCM = {iccm_io_we_i_3, iccm_io_we_i_2, iccm_io_we_i_1, iccm_io_we_i_0};

  always @(posedge iccm_clock) begin
    if(EN) begin
      RAM_ICCM_DATA <= RAM_ICCM[ICCM_A];
      if(WE_ICCM[0]) RAM_ICCM[ICCM_A][ 7: 0] <= ICCM_di[7:0];
      if(WE_ICCM[1]) RAM_ICCM[ICCM_A][15: 8] <= ICCM_di[15:8];
      if(WE_ICCM[2]) RAM_ICCM[ICCM_A][23:16] <= ICCM_di[23:16];
      if(WE_ICCM[3]) RAM_ICCM[ICCM_A][31:24] <= ICCM_di[31:24];
    end
  end

  assign iccm_io_rdata_o = RAM_ICCM_DATA;

  // InstMem iccm ( // @[Ibtida_top_dffram_cv.scala 16:25]
  //   .clock(iccm_clock),
  //   .io_we_i_0(iccm_io_we_i_0),
  //   .io_we_i_1(iccm_io_we_i_1),
  //   .io_we_i_2(iccm_io_we_i_2),
  //   .io_we_i_3(iccm_io_we_i_3),
  //   .io_addr_i(iccm_io_addr_i),
  //   .io_wdata_i(iccm_io_wdata_i),
  //   .io_rdata_o(iccm_io_rdata_o)
  // );
  // DataMem dccm ( // @[Ibtida_top_dffram_cv.scala 17:25]
  //   .clock(dccm_clock),
  //   .io_we_i_0(dccm_io_we_i_0),
  //   .io_we_i_1(dccm_io_we_i_1),
  //   .io_we_i_2(dccm_io_we_i_2),
  //   .io_we_i_3(dccm_io_we_i_3),
  //   .io_addr_i(dccm_io_addr_i),
  //   .io_wdata_i_0(dccm_io_wdata_i_0),
  //   .io_wdata_i_1(dccm_io_wdata_i_1),
  //   .io_wdata_i_2(dccm_io_wdata_i_2),
  //   .io_wdata_i_3(dccm_io_wdata_i_3),
  //   .io_rdata_o_0(dccm_io_rdata_o_0),
  //   .io_rdata_o_1(dccm_io_rdata_o_1),
  //   .io_rdata_o_2(dccm_io_rdata_o_2),
  //   .io_rdata_o_3(dccm_io_rdata_o_3)
  // );
  assign io_gpio_o = ibtidaTop_io_gpio_o[29:0]; // @[Ibtida_top_dffram_cv.scala 23:13]
  assign io_gpio_en_o = ibtidaTop_io_gpio_en_o[29:0]; // @[Ibtida_top_dffram_cv.scala 24:16]
  assign ibtidaTop_clock = clock;
  assign ibtidaTop_reset = reset;
  assign ibtidaTop_io_rx_i = io_rx_i; // @[Ibtida_top_dffram_cv.scala 20:21]
  assign ibtidaTop_io_CLK_PER_BIT = io_CLK_PER_BIT; // @[Ibtida_top_dffram_cv.scala 21:28]
  assign ibtidaTop_io_gpio_i = {{2'd0}, io_gpio_i}; // @[Ibtida_top_dffram_cv.scala 22:23]
  assign ibtidaTop_io_iccm_rdata_i = iccm_io_rdata_o; // @[Ibtida_top_dffram_cv.scala 31:29]
  assign ibtidaTop_io_dccm_rdata_i = {_T_7,_T_6}; // @[Ibtida_top_dffram_cv.scala 41:29]
  assign iccm_clock = clock;
  assign iccm_io_we_i_0 = ibtidaTop_io_iccm_we_o_0; // @[Ibtida_top_dffram_cv.scala 28:16]
  assign iccm_io_we_i_1 = ibtidaTop_io_iccm_we_o_1; // @[Ibtida_top_dffram_cv.scala 28:16]
  assign iccm_io_we_i_2 = ibtidaTop_io_iccm_we_o_2; // @[Ibtida_top_dffram_cv.scala 28:16]
  assign iccm_io_we_i_3 = ibtidaTop_io_iccm_we_o_3; // @[Ibtida_top_dffram_cv.scala 28:16]
  assign iccm_io_addr_i = ibtidaTop_io_iccm_addr_o[5:0]; // @[Ibtida_top_dffram_cv.scala 29:18]
  assign iccm_io_wdata_i = ibtidaTop_io_iccm_wdata_o; // @[Ibtida_top_dffram_cv.scala 30:19]
  assign dccm_clock = clock;
  assign dccm_io_we_i_0 = ibtidaTop_io_dccm_we_o_0; // @[Ibtida_top_dffram_cv.scala 35:16]
  assign dccm_io_we_i_1 = ibtidaTop_io_dccm_we_o_1; // @[Ibtida_top_dffram_cv.scala 35:16]
  assign dccm_io_we_i_2 = ibtidaTop_io_dccm_we_o_2; // @[Ibtida_top_dffram_cv.scala 35:16]
  assign dccm_io_we_i_3 = ibtidaTop_io_dccm_we_o_3; // @[Ibtida_top_dffram_cv.scala 35:16]
  assign dccm_io_addr_i = ibtidaTop_io_dccm_addr_o[5:0]; // @[Ibtida_top_dffram_cv.scala 36:18]
  assign dccm_io_wdata_i_0 = ibtidaTop_io_dccm_wdata_o[7:0]; // @[Ibtida_top_dffram_cv.scala 37:36]
  assign dccm_io_wdata_i_1 = ibtidaTop_io_dccm_wdata_o[15:8]; // @[Ibtida_top_dffram_cv.scala 38:36]
  assign dccm_io_wdata_i_2 = ibtidaTop_io_dccm_wdata_o[23:16]; // @[Ibtida_top_dffram_cv.scala 39:36]
  assign dccm_io_wdata_i_3 = ibtidaTop_io_dccm_wdata_o[31:24]; // @[Ibtida_top_dffram_cv.scala 40:36]
endmodule
