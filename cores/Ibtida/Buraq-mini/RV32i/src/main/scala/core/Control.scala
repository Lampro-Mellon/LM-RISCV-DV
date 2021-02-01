package core

import chisel3._

class Control extends Module {
    val io = IO(new Bundle {
        val in_opcode = Input(UInt(7.W))
        val func7     = Input(UInt(7.W))
        val func3     = Input(UInt(3.W))
      //  val enable_M_extension = Input(UInt(1.W))
        val out_memWrite = Output(UInt(1.W))
        val out_branch = Output(UInt(1.W))
        val out_memRead = Output(UInt(1.W))
        val out_regWrite = Output(UInt(1.W))
        val csr_we_o = Output(Bool())
        val csr_imm_type = Output(Bool())
        val csr_op_o = Output(UInt(2.W))
        val out_memToReg = Output(UInt(1.W))
        val out_aluOp = Output(UInt(4.W))
        val out_operand_a_sel = Output(UInt(2.W))
        val out_operand_b_sel = Output(UInt(1.W))
        val out_extend_sel = Output(UInt(2.W))
        val out_next_pc_sel = Output(UInt(2.W))
      //  val M_extension_enabled = Output(UInt(1.W))
    })
    val instruction_type_decode = Module(new InstructionTypeDecode())
    val control_decode = Module(new ControlDecode())
    instruction_type_decode.io.opcode := io.in_opcode
    instruction_type_decode.io.func3  := io.func3
    control_decode.io.in_r_type := instruction_type_decode.io.r_type
    control_decode.io.in_load_type := instruction_type_decode.io.load_type
    control_decode.io.in_s_type := instruction_type_decode.io.s_type
    control_decode.io.in_sb_type := instruction_type_decode.io.sb_type
    control_decode.io.in_i_type := instruction_type_decode.io.i_type
    control_decode.io.in_jalr_type := instruction_type_decode.io.jalr_type
    control_decode.io.in_jal_type := instruction_type_decode.io.jal_type
    control_decode.io.in_lui_type := instruction_type_decode.io.lui_type
    control_decode.io.Auipc       := instruction_type_decode.io.Auipc
    control_decode.io.multiply    := instruction_type_decode.io.multiply
    control_decode.io.in_csr_type := instruction_type_decode.io.csr_type
    control_decode.io.in_csr_imm_type := instruction_type_decode.io.csr_imm_type
    
    io.out_memWrite := control_decode.io.memWrite
    io.out_branch := control_decode.io.branch
    io.out_memRead := control_decode.io.memRead
    io.out_regWrite := control_decode.io.regWrite
    io.csr_we_o := control_decode.io.csr_wen
    io.out_memToReg := control_decode.io.memToReg
    io.out_aluOp := control_decode.io.aluOperation
    io.out_operand_a_sel := control_decode.io.operand_a_sel
    io.out_operand_b_sel := control_decode.io.operand_b_sel
    io.out_extend_sel := control_decode.io.extend_sel
    io.out_next_pc_sel := control_decode.io.next_pc_sel
//    instruction_type_decode.io.enable_M_extension := io.enable_M_extension 
 //   io.M_extension_enabled := control_decode.io.M_extension_enabled
    io.csr_op_o := instruction_type_decode.io.csr_op
    io.csr_imm_type := instruction_type_decode.io.csr_imm_type
    instruction_type_decode.io.func7 := io.func7
}