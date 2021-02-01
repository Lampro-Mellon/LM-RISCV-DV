package core

import chisel3._

class WriteBack extends Module {
    val io = IO(new Bundle {
        val MEM_WB_MemToReg = Input(UInt(1.W))
        val MEM_WB_dataMem_data = Input(SInt(32.W))
        val MEM_WB_alu_output = Input(SInt(32.W))
        val write_data = Output(SInt(32.W))
    })

    when(io.MEM_WB_MemToReg === 1.U) {
        io.write_data := io.MEM_WB_dataMem_data
    } .otherwise {
        io.write_data := io.MEM_WB_alu_output
    }

}