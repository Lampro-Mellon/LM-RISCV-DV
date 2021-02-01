package core

import chisel3._

class ControlDecode extends Module {
    val io = IO(new Bundle {
        // Inputs
        val in_r_type = Input(UInt(1.W))
        val in_load_type = Input(UInt(1.W))
        val in_s_type = Input(UInt(1.W))
        val in_sb_type = Input(UInt(1.W))
        val in_i_type = Input(UInt(1.W))
        val in_jalr_type = Input(UInt(1.W))
        val in_jal_type = Input(UInt(1.W))
        val in_lui_type = Input(UInt(1.W))
        val in_csr_type = Input(UInt(1.W))
        val in_csr_imm_type = Input(UInt(1.W))
        val Auipc       = Input(UInt(1.W))
        val multiply    = Input(UInt(1.W))
        // Outputs
        val memWrite = Output(UInt(1.W))
        val memRead  = Output(UInt(1.W))
        val branch = Output(UInt(1.W))
        val regWrite = Output(UInt(1.W))
        val csr_wen = Output(Bool())
        val memToReg = Output(UInt(1.W))
        val aluOperation = Output(UInt(4.W))
        val operand_a_sel = Output(UInt(2.W))
        val operand_b_sel = Output(UInt(1.W))
        val extend_sel = Output(UInt(2.W))
        val next_pc_sel = Output(UInt(2.W))
      //  val M_extension_enabled = Output(UInt(1.W))
    })
        default_signals()

    // R-Type instruction    
    when(io.in_r_type === 1.U) {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 0.U
        io.aluOperation := "b0000".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 0.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b00".U
      //  io.M_extension_enabled := 0.U
    } 
    .elsewhen(io.in_load_type === 1.U) {
        // Load type instruction
        io.memWrite := 0.U
        io.memRead  := 1.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 1.U
        io.aluOperation := "b0100".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 1.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b00".U
    } .elsewhen(io.in_s_type === 1.U) {
        // S-Type instruction
        io.memWrite := 1.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 0.U
        io.memToReg := 0.U
        io.aluOperation := "b0101".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 1.U
        io.extend_sel := "b01".U
        io.next_pc_sel := "b00".U
    } .elsewhen(io.in_sb_type === 1.U) {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 1.U
        io.regWrite := 0.U
        io.memToReg := 0.U
        io.aluOperation := "b0010".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 0.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b01".U
    } .elsewhen(io.in_i_type === 1.U) {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 0.U
        io.aluOperation := "b0001".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 1.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b00".U
    } .elsewhen(io.in_jalr_type === 1.U) {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 0.U
        io.aluOperation := "b0011".U
        io.operand_a_sel := "b10".U
        io.operand_b_sel := 0.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b11".U
    } .elsewhen(io.in_jal_type === 1.U) {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 0.U
        io.aluOperation := "b0011".U
        io.operand_a_sel := "b10".U
        io.operand_b_sel := 0.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b10".U
    } 
    .elsewhen(io.in_lui_type === 1.U) 
    {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 0.U
        io.aluOperation := "b0110".U
        io.operand_a_sel := "b11".U
        io.operand_b_sel := 1.U
        io.extend_sel := "b10".U
        io.next_pc_sel := "b00".U
    } 
    .elsewhen(io.Auipc === 1.U) 
    {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 0.U
        io.aluOperation := "b0111".U
        io.operand_a_sel := "b01".U
        io.operand_b_sel := 1.U
        io.extend_sel := "b10".U
        io.next_pc_sel := "b00".U
    } 
    .elsewhen(io.multiply === 1.U) {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.memToReg := 0.U
        io.aluOperation := "b1001".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 0.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b00".U
     //   io.M_extension_enabled := 1.U
    } .elsewhen(io.in_csr_type === 1.U) {
        io.memWrite := 0.U
        io.memRead := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.csr_wen := true.B
        io.memToReg := 0.U
        io.aluOperation := "b1000".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 1.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b00".U
    } .elsewhen(io.in_csr_imm_type === 1.U) {
        io.memWrite := 0.U
        io.memRead := 0.U
        io.branch := 0.U
        io.regWrite := 1.U
        io.csr_wen := true.B
        io.memToReg := 0.U
        io.aluOperation := "b1000".U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 1.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b00".U
    }
    .otherwise {
        default_signals()
    }

    def default_signals(): Unit =
    {
        io.memWrite := 0.U
        io.memRead  := 0.U
        io.branch := 0.U
        io.regWrite := 0.U
        io.memToReg := 0.U
        io.aluOperation := 28.U
        io.operand_a_sel := "b00".U
        io.operand_b_sel := 0.U
        io.extend_sel := "b00".U
        io.next_pc_sel := "b00".U
        io.csr_wen := false.B
     //   io.M_extension_enabled := 0.U
    }
}