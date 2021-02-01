package core

import chisel3._

class MEM_WB extends Module {
    val io = IO(new Bundle {
        val ctrl_RegWr_in = Input(UInt(1.W))
        val ctrl_CsrWen_in = Input(Bool())
        val ctrl_MemToReg_in = Input(UInt(1.W))
        val rd_sel_in = Input(UInt(5.W))
        val ctrl_MemRd_in = Input(UInt(1.W))
        val dmem_data_in = Input(SInt(32.W))
        val alu_in = Input(SInt(32.W))
//        val csr_addr_in = Input(SInt(32.W))
//        val csr_op_in = Input(UInt(2.W))
        val csr_data_in = Input(UInt(32.W))

        val stall = Input(UInt(1.W))

        val ctrl_RegWr_out = Output(UInt(1.W))
        val ctrl_CsrWen_out = Output(Bool())
        val ctrl_MemToReg_out = Output(UInt(1.W))
        val ctrl_MemRd_out = Output(UInt(1.W))
        val rd_sel_out = Output(UInt(5.W))
        val dmem_data_out = Output(SInt(32.W))
        val alu_output = Output(SInt(32.W))
//        val csr_addr_out = Output(SInt(32.W))
//        val csr_op_out = Output(UInt(2.W))
        val csr_data_out = Output(UInt(32.W))
    })

    val reg_regWr = RegInit(0.U(1.W))

    val reg_csrWen = RegInit(false.B)

    val reg_memToReg = RegInit(0.U(1.W))

    val reg_memRd = RegInit(0.U(1.W))

    val reg_rdSel = RegInit(0.U(5.W))

    val reg_dataMem_data = RegInit(0.S(32.W))

    val reg_alu_output = RegInit(0.S(32.W))

//    val reg_csr_addr = RegInit(0.S(32.W))

//    val reg_csr_op = RegInit(0.U(2.W))

    val reg_csr_data = RegInit(0.U(32.W))

    when(io.stall =/= 1.U) {
        reg_regWr := io.ctrl_RegWr_in
        reg_csrWen := io.ctrl_CsrWen_in
        reg_memToReg := io.ctrl_MemToReg_in
        reg_memRd := io.ctrl_MemRd_in
        reg_rdSel := io.rd_sel_in
        reg_dataMem_data := io.dmem_data_in
        reg_alu_output := io.alu_in
//        reg_csr_addr := io.csr_addr_in
//        reg_csr_op := io.csr_op_in
        reg_csr_data := io.csr_data_in

        io.ctrl_MemToReg_out := reg_memToReg
        io.ctrl_RegWr_out := reg_regWr
        io.ctrl_CsrWen_out := reg_csrWen
        io.ctrl_MemRd_out := reg_memRd
        io.rd_sel_out := reg_rdSel
        io.dmem_data_out := reg_dataMem_data
        io.alu_output := reg_alu_output
//        io.csr_addr_out := reg_csr_addr
//        io.csr_op_out := reg_csr_op
        io.csr_data_out := reg_csr_data
    } .otherwise {
        io.ctrl_MemToReg_out := reg_memToReg
        io.ctrl_RegWr_out := reg_regWr
        io.ctrl_CsrWen_out := reg_csrWen
        io.ctrl_MemRd_out := reg_memRd
        io.rd_sel_out := reg_rdSel
        io.dmem_data_out := reg_dataMem_data
        io.alu_output := reg_alu_output
//        io.csr_addr_out := reg_csr_addr
//        io.csr_op_out := reg_csr_op
        io.csr_data_out := reg_csr_data
    }


}
