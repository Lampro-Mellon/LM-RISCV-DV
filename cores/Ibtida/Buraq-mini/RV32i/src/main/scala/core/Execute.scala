package core

import chisel3._

class Execute extends Module {
  val io = IO(new Bundle {
    val EX_MEM_rd_sel = Input(UInt(5.W))
    val MEM_WB_rd_sel = Input(UInt(5.W))
    val ID_EX_rs1_sel = Input(UInt(5.W))
    val ID_EX_rs2_sel = Input(UInt(5.W))
    val EX_MEM_ctrl_RegWr = Input(UInt(1.W))
    val EX_MEM_ctrl_csrWen = Input(Bool())    // used to detect if csr instruction in memory stage
    val MEM_WB_ctrl_csrWen = Input(Bool())    // used to detect if csr instruction in writeback stage
    val MEM_WB_ctrl_RegWr = Input(UInt(1.W))
    val ID_EX_ctrl_OpA_sel = Input(UInt(2.W))
    val ID_EX_ctrl_OpB_sel = Input(UInt(1.W))
    val ID_EX_pc4 = Input(SInt(32.W))
    val ID_EX_pc_out = Input(SInt(32.W))
    val ID_EX_rs1 = Input(SInt(32.W))
    val ID_EX_rs2 = Input(SInt(32.W))
    val ID_EX_csr_data = Input(UInt(32.W))
    val EX_MEM_alu_output = Input(SInt(32.W))
    val EX_MEM_csr_rdata = Input(UInt(32.W))  // used to forward csr data if instruction is dependent on csr inst in memory stage
    val MEM_WB_csr_rdata = Input(UInt(32.W))  // used to forward csr data if instruction is dependent on csr inst in write back stage
    val writeback_write_data = Input(SInt(32.W))
    val ID_EX_imm = Input(SInt(32.W))
//    val ID_EX_csr_op = Input(UInt(2.W))
    val ID_EX_ctrl_AluOp = Input(UInt(4.W))
    val ID_EX_func7 = Input(UInt(7.W))
    val ID_EX_inst_op = Input(UInt(7.W))
    val ID_EX_func3 = Input(UInt(3.W))
    val ID_EX_rd_sel = Input(UInt(5.W))
    val ID_EX_ctrl_MemWr = Input(UInt(1.W))
    val ID_EX_ctrl_MemRd = Input(UInt(1.W))
    val ID_EX_ctrl_RegWr = Input(UInt(1.W))
    val ID_EX_ctrl_CsrWen = Input(Bool())
    val ID_EX_ctrl_MemToReg = Input(UInt(1.W))
  //  val M_extension_enabled = Input(UInt(1.W))


    val rs2_out = Output(SInt(32.W))
    val alu_output = Output(SInt(32.W))
    val rd_sel_out = Output(UInt(5.W))
    val rs2_sel_out = Output(UInt(5.W))
    val ctrl_MemWr_out = Output(UInt(1.W))
    val ctrl_MemRd_out = Output(UInt(1.W))
    val ctrl_RegWr_out = Output(UInt(1.W))
    val ctrl_CsrWe_out = Output(Bool())
    val ctrl_MemToReg_out = Output(UInt(1.W))
    val func3_out        = Output(UInt(3.W))
    val csr_addr_out = Output(SInt(32.W))
//    val csr_op_o = Output(UInt(2.W))
    val csr_data_o = Output(UInt(32.W))
  })


  val forwardUnit = Module(new ForwardUnit())
  val alu = Module(new Alu())
  val alu_control = Module(new AluControl())

  // Initialize forward unit
  forwardUnit.io.ID_EX_inst_op := io.ID_EX_inst_op
  forwardUnit.io.EX_MEM_REGRD := io.EX_MEM_rd_sel
  forwardUnit.io.MEM_WB_REGRD := io.MEM_WB_rd_sel
  forwardUnit.io.ID_EX_REGRS1 := io.ID_EX_rs1_sel
  forwardUnit.io.ID_EX_REGRS2 := io.ID_EX_rs2_sel
  forwardUnit.io.EX_MEM_REGWR := io.EX_MEM_ctrl_RegWr
  forwardUnit.io.MEM_WB_REGWR := io.MEM_WB_ctrl_RegWr

  // Controlling Operand A for ALU
  when (io.ID_EX_ctrl_OpA_sel === "b10".U) {
    alu.io.oper_a := io.ID_EX_pc4
  }
  .elsewhen(io.ID_EX_ctrl_OpA_sel === "b01".U)
   {
      alu.io.oper_a := io.ID_EX_pc_out 
   }
 .otherwise {
    when(forwardUnit.io.forward_a === "b00".U) {
      alu.io.oper_a := io.ID_EX_rs1
    } .elsewhen(forwardUnit.io.forward_a === "b01".U) {
      alu.io.oper_a := Mux(io.EX_MEM_ctrl_csrWen, io.EX_MEM_csr_rdata.asSInt(), io.EX_MEM_alu_output)
    } .elsewhen(forwardUnit.io.forward_a === "b10".U) {
      alu.io.oper_a := Mux(io.MEM_WB_ctrl_csrWen, io.MEM_WB_csr_rdata.asSInt(), io.writeback_write_data)
    } .otherwise {
      alu.io.oper_a := io.ID_EX_rs1
    }
  }

  // Controlling Operand B for ALU
  when(io.ID_EX_ctrl_OpB_sel === "b1".U) {
    alu.io.oper_b := io.ID_EX_imm
    when(forwardUnit.io.forward_b === "b00".U) {
      io.rs2_out := io.ID_EX_rs2
    } .elsewhen(forwardUnit.io.forward_b === "b01".U) {
      io.rs2_out := Mux(io.EX_MEM_ctrl_csrWen, io.EX_MEM_csr_rdata.asSInt(), io.EX_MEM_alu_output)
    } .elsewhen(forwardUnit.io.forward_b === "b10".U) {
      io.rs2_out := Mux(io.MEM_WB_ctrl_csrWen, io.MEM_WB_csr_rdata.asSInt(), io.writeback_write_data)
    } .otherwise {
      io.rs2_out := io.ID_EX_rs2
    }


  } .otherwise {
    when(forwardUnit.io.forward_b === "b00".U) {
      alu.io.oper_b := io.ID_EX_rs2
      io.rs2_out := io.ID_EX_rs2
    } .elsewhen(forwardUnit.io.forward_b === "b01".U) {
      alu.io.oper_b := Mux(io.EX_MEM_ctrl_csrWen, io.EX_MEM_csr_rdata.asSInt(), io.EX_MEM_alu_output)
      io.rs2_out := Mux(io.EX_MEM_ctrl_csrWen, io.EX_MEM_csr_rdata.asSInt(), io.EX_MEM_alu_output)
    } .elsewhen(forwardUnit.io.forward_b === "b10".U) {
      alu.io.oper_b := Mux(io.MEM_WB_ctrl_csrWen, io.MEM_WB_csr_rdata.asSInt(), io.writeback_write_data)
      io.rs2_out := Mux(io.MEM_WB_ctrl_csrWen, io.MEM_WB_csr_rdata.asSInt(), io.writeback_write_data)
    } .otherwise {
      alu.io.oper_b := io.ID_EX_rs2
      io.rs2_out := io.ID_EX_rs2
    }
  }

  // Initializing Alu Control
  alu_control.io.aluOp := io.ID_EX_ctrl_AluOp
  alu_control.io.func7 := io.ID_EX_func7
  alu_control.io.func3 := io.ID_EX_func3
 // alu_control.io.M_extension := io.M_extension_enabled

  // Connecting ALU Control output to ALU input
  alu.io.aluCtrl := alu_control.io.output

  // Passing the ALU output to the EX/MEM pipeline register
  io.alu_output := alu.io.output

  // Passing the rd_sel value in the EX/MEM pipeline register
  io.rd_sel_out := io.ID_EX_rd_sel
  io.rs2_sel_out := io.ID_EX_rs2_sel
  io.func3_out := io.ID_EX_func3
  // Passing the control signals to EX/MEM pipeline register
  io.ctrl_MemWr_out := io.ID_EX_ctrl_MemWr
  io.ctrl_MemRd_out := io.ID_EX_ctrl_MemRd
  io.ctrl_RegWr_out := io.ID_EX_ctrl_RegWr
  io.ctrl_CsrWe_out := io.ID_EX_ctrl_CsrWen
  io.ctrl_MemToReg_out := io.ID_EX_ctrl_MemToReg
  io.csr_addr_out := io.ID_EX_imm
//  io.csr_op_o := io.ID_EX_csr_op
  io.csr_data_o := io.ID_EX_csr_data
























}
