package core

import chisel3._

class ID_EX extends Module {
    val io = IO(new Bundle {
        val pc_in = Input(SInt(32.W))
        val pc4_in = Input(SInt(32.W))
        val rs1_sel_in = Input(UInt(5.W))
        val rs2_sel_in = Input(UInt(5.W))
        val rs1_in = Input(SInt(32.W))
        val rs2_in = Input(SInt(32.W))
        val imm = Input(SInt(32.W))
        val rd_sel_in = Input(UInt(5.W))
        val func3_in = Input(UInt(3.W))
        val func7_in = Input(UInt(7.W))
        val ctrl_MemWr_in = Input(UInt(1.W))
        val ctrl_MemRd_in = Input(UInt(1.W))
        val ctrl_Branch_in = Input(UInt(1.W))
        val ctrl_CsrWen_in = Input(Bool())
        val ctrl_RegWr_in = Input(UInt(1.W))
        val ctrl_MemToReg_in = Input(UInt(1.W))
        val ctrl_AluOp_in = Input(UInt(4.W))
        val ctrl_OpA_sel_in = Input(UInt(2.W))
        val ctrl_OpB_sel_in = Input(UInt(1.W))
        val ctrl_nextPc_sel_in = Input(UInt(2.W))
        val inst_op_in = Input(UInt(7.W))
//        val csr_op_in = Input(UInt(2.W))
        val csr_data_i = Input(UInt(32.W))
      //  val M_extension_enabled_in = Input(UInt(1.W))

        val stall = Input(UInt(1.W))

        val pc_out = Output(SInt(32.W))
        val pc4_out = Output(SInt(32.W))
        val rs1_out = Output(SInt(32.W))
        val rs2_out = Output(SInt(32.W))
        val imm_out = Output(SInt(32.W))
        val func3_out = Output(UInt(3.W))
        val func7_out = Output(UInt(7.W))
        val inst_op_out = Output(UInt(7.W))
        val rd_sel_out = Output(UInt(5.W))
        val rs1_sel_out = Output(UInt(5.W))
        val rs2_sel_out = Output(UInt(5.W))
        val ctrl_MemWr_out = Output(UInt(1.W))
        val ctrl_MemRd_out = Output(UInt(1.W))
        val ctrl_Branch_out = Output(UInt(1.W))
        val ctrl_RegWr_out = Output(UInt(1.W))
        val ctrl_CsrWen_out = Output(Bool())
        val ctrl_MemToReg_out = Output(UInt(1.W))
        val ctrl_AluOp_out = Output(UInt(4.W))
        val ctrl_OpA_sel_out = Output(UInt(2.W))
        val ctrl_OpB_sel_out = Output(UInt(1.W))
        val ctrl_nextPc_sel_out = Output(UInt(2.W))
//        val csr_op_o = Output(UInt(2.W))
        val csr_data_o = Output(UInt(32.W))
      //  val M_extension_enabled = Output(UInt(1.W))
    })
    val pc_reg = RegInit(0.S(32.W))
    val pc4_reg = RegInit(0.S(32.W))
    val rs1_reg = RegInit(0.S(32.W))
    val rs2_reg = RegInit(0.S(32.W))
    val imm_reg = RegInit(0.S(32.W))
    val rd_sel_reg = RegInit(0.U(5.W))
    val rs1_sel_reg = RegInit(0.U(5.W))
    val rs2_sel_reg = RegInit(0.U(5.W))
    val func3_reg = RegInit(0.U(3.W))
    val func7_reg = RegInit(0.U(7.W))
    val inst_op_reg = RegInit(0.U(7.W))
//    val csr_op_reg = RegInit(0.U(2.W))
    val csr_data_reg = RegInit(0.U(32.W))

    val ctrl_MemWr_reg = RegInit(0.U(1.W))
    val ctrl_MemRd_reg = RegInit(0.U(1.W))
    val ctrl_Branch_reg = RegInit(0.U(1.W))
    val ctrl_RegWr_reg = RegInit(0.U(1.W))
    val ctrl_CsrWen_reg = RegInit(false.B)
    val ctrl_MemToReg_reg = RegInit(0.U(1.W))
    val ctrl_AluOp_reg = RegInit(0.U(4.W))
    val ctrl_OpA_sel_reg = RegInit(0.U(2.W))
    val ctrl_OpB_sel_reg = RegInit(0.U(1.W))
    val ctrl_nextPc_sel_reg = RegInit(0.U(1.W))
  //  val M_extension_reg     = RegInit(0.U(1.W))

    when(io.stall =/= 1.U) {
        pc_reg := io.pc_in
        pc4_reg := io.pc4_in
        rs1_reg := io.rs1_in
        rs2_reg := io.rs2_in
        imm_reg := io.imm
        csr_data_reg := io.csr_data_i
        rd_sel_reg := io.rd_sel_in
        rs1_sel_reg := io.rs1_sel_in
        rs2_sel_reg := io.rs2_sel_in
        func3_reg := io.func3_in
        func7_reg := io.func7_in
        inst_op_reg := io.inst_op_in
        // Storing Control state in the registers
        ctrl_MemWr_reg := io.ctrl_MemWr_in
        ctrl_MemRd_reg := io.ctrl_MemRd_in
        ctrl_Branch_reg := io.ctrl_Branch_in
        ctrl_RegWr_reg := io.ctrl_RegWr_in
        ctrl_CsrWen_reg := io.ctrl_CsrWen_in
        ctrl_MemToReg_reg := io.ctrl_MemToReg_in
        ctrl_AluOp_reg := io.ctrl_AluOp_in
        ctrl_OpA_sel_reg := io.ctrl_OpA_sel_in
        ctrl_OpB_sel_reg := io.ctrl_OpB_sel_in
        ctrl_nextPc_sel_reg := io.ctrl_nextPc_sel_in
//        csr_op_reg := io.csr_op_in
     //   M_extension_reg := io.M_extension_enabled_in


        io.pc_out := pc_reg
        io.pc4_out := pc4_reg
        io.rs1_out := rs1_reg
        io.rs2_out := rs2_reg
        io.csr_data_o := csr_data_reg
        io.imm_out := imm_reg
        io.rd_sel_out := rd_sel_reg
        io.rs1_sel_out := rs1_sel_reg
        io.rs2_sel_out := rs2_sel_reg
        io.func3_out := func3_reg
        io.func7_out := func7_reg
        io.inst_op_out := inst_op_reg

        io.ctrl_MemWr_out := ctrl_MemWr_reg
        io.ctrl_MemRd_out := ctrl_MemRd_reg
        io.ctrl_Branch_out := ctrl_Branch_reg
        io.ctrl_RegWr_out := ctrl_RegWr_reg
        io.ctrl_CsrWen_out := ctrl_CsrWen_reg
        io.ctrl_MemToReg_out := ctrl_MemToReg_reg
        io.ctrl_AluOp_out := ctrl_AluOp_reg
        io.ctrl_OpA_sel_out := ctrl_OpA_sel_reg
        io.ctrl_OpB_sel_out := ctrl_OpB_sel_reg
        io.ctrl_nextPc_sel_out := ctrl_nextPc_sel_reg
//        io.csr_op_o := csr_op_reg
    //     io.M_extension_enabled := M_extension_reg
        
   } .otherwise {
        io.pc_out := pc_reg
        io.pc4_out := pc4_reg
        io.rs1_out := rs1_reg
        io.rs2_out := rs2_reg
        io.csr_data_o := csr_data_reg
        io.imm_out := imm_reg
        io.rd_sel_out := rd_sel_reg
        io.rs1_sel_out := rs1_sel_reg
        io.rs2_sel_out := rs2_sel_reg
        io.func3_out := func3_reg
        io.func7_out := func7_reg
        io.inst_op_out := inst_op_reg
//        io.csr_op_o := csr_op_reg

        io.ctrl_MemWr_out := ctrl_MemWr_reg
        io.ctrl_MemRd_out := ctrl_MemRd_reg
        io.ctrl_Branch_out := ctrl_Branch_reg
        io.ctrl_RegWr_out := ctrl_RegWr_reg
        io.ctrl_CsrWen_out := ctrl_CsrWen_reg
        io.ctrl_MemToReg_out := ctrl_MemToReg_reg
        io.ctrl_AluOp_out := ctrl_AluOp_reg
        io.ctrl_OpA_sel_out := ctrl_OpA_sel_reg
        io.ctrl_OpB_sel_out := ctrl_OpB_sel_reg
        io.ctrl_nextPc_sel_out := ctrl_nextPc_sel_reg
        //io.M_extension_enabled := M_extension_reg
    }

}
