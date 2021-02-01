package core

import chisel3._

class EX_MEM extends Module {
    val io = IO(new Bundle {
        val ctrl_MemWr_in = Input(UInt(1.W))
        val ctrl_MemRd_in = Input(UInt(1.W))
        val ctrl_RegWr_in = Input(UInt(1.W))
        val ctrl_CsrWen_in = Input(Bool())
        val ctrl_MemToReg_in = Input(UInt(1.W))
        val rs2_in = Input(SInt(32.W))
        val rd_sel_in = Input(UInt(5.W))
        val rs2_sel_in = Input(UInt(5.W))
        val alu_in = Input(SInt(32.W))
        val EX_MEM_func3 = Input(UInt(3.W))
//        val csr_addr_in = Input(SInt(32.W))
//        val csr_op_in = Input(UInt(2.W))
        val csr_data_i = Input(UInt(32.W))

        val stall = Input(UInt(1.W))

        val ctrl_MemWr_out = Output(UInt(1.W))
        val ctrl_MemRd_out = Output(UInt(1.W))
        val ctrl_RegWr_out = Output(UInt(1.W))
        val ctrl_CsrWen_out = Output(Bool())
        val ctrl_MemToReg_out = Output(UInt(1.W))
        val rs2_out = Output(SInt(32.W))
        val rd_sel_out = Output(UInt(5.W))
        val rs2_sel_out = Output(UInt(5.W))
        val alu_output = Output(SInt(32.W))
        val EX_MEM_func3_out  = Output(UInt(3.W))
//        val csr_addr_out = Output(SInt(32.W))
//        val csr_op_out = Output(UInt(2.W))
        val csr_data_o = Output(UInt(32.W))
    })
        val reg_memWr = RegInit(0.U(1.W))
        val reg_memRd = RegInit(0.U(1.W))
        val reg_regWr = RegInit(0.U(1.W))
        val reg_csrWen = RegInit(false.B)
        val reg_memToReg = RegInit(0.U(1.W))
        val reg_rs2 = RegInit(0.S(32.W))
        val reg_rd_sel = RegInit(0.U(5.W))
        val reg_rs2_sel = RegInit(0.U(5.W))
        val reg_alu_output = RegInit(0.S(32.W))
        val reg_func3      = RegInit(0.U(3.W))
//        val reg_csr_addr   = RegInit(0.S(32.W))
//        val reg_csr_op = RegInit(0.U(2.W))
        val reg_csr_data = RegInit(0.U(32.W))

    when(io.stall =/= 1.U) {
        reg_memWr := io.ctrl_MemWr_in
        reg_memRd := io.ctrl_MemRd_in
        reg_regWr := io.ctrl_RegWr_in
        reg_csrWen := io.ctrl_CsrWen_in
        reg_memToReg := io.ctrl_MemToReg_in
        reg_rs2 := io.rs2_in
        reg_rd_sel := io.rd_sel_in
        reg_rs2_sel := io.rs2_sel_in
        reg_alu_output := io.alu_in
        reg_func3      := io.EX_MEM_func3
//        reg_csr_addr    := io.csr_addr_in
//        reg_csr_op := io.csr_op_in
        reg_csr_data := io.csr_data_i

    } .otherwise {
        reg_memWr := reg_memWr
        reg_memRd := reg_memRd
        reg_regWr := reg_regWr
        reg_csrWen := reg_csrWen
        reg_memToReg := reg_memToReg
        reg_rs2 := reg_rs2
        reg_rd_sel := reg_rd_sel
        reg_rs2_sel :=  reg_rs2_sel
        reg_alu_output := reg_alu_output
        reg_func3     := reg_func3
//        reg_csr_addr := reg_csr_addr
//        reg_csr_op := reg_csr_op
        reg_csr_data := reg_csr_data
    }

    io.ctrl_MemWr_out := reg_memWr
    io.ctrl_MemRd_out := reg_memRd
    io.ctrl_RegWr_out := reg_regWr
    io.ctrl_CsrWen_out := reg_csrWen
    io.ctrl_MemToReg_out := reg_memToReg
    io.rs2_out := reg_rs2
    io.rd_sel_out := reg_rd_sel
    io.rs2_sel_out := reg_rs2_sel
    io.alu_output := reg_alu_output
    io.EX_MEM_func3_out := reg_func3
//    io.csr_addr_out := reg_csr_addr
//    io.csr_op_out := reg_csr_op
    io.csr_data_o := reg_csr_data
}
