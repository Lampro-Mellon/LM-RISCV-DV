package core

import chisel3._

class RegisterFile extends Module {
    val io = IO(new Bundle {
        val regWrite = Input(UInt(1.W))
        val rd_sel = Input(UInt(5.W))
        val rs1_sel = Input(UInt(5.W))
        val rs2_sel = Input(UInt(5.W))
        val writeData = Input(SInt(32.W))

      //  val stall = Input(UInt(1.W))

        val rs1 = Output(SInt(32.W))
        val rs2 = Output(SInt(32.W))
        val reg_7 = Output(SInt(32.W))
    })
    
    val registers = RegInit(VecInit(Seq.fill(32)(0.S(32.W))))

    io.reg_7 := registers(7)
    // val registers = Reg(Vec(32, SInt(32.W)))
    registers(0) := 0.S
    io.rs1 := registers(io.rs1_sel) 
    io.rs2 := registers(io.rs2_sel) 
    when(io.regWrite === 1.U /*&& io.stall =/= 1.U*/) {
        when(io.rd_sel === "b00000".U) {
            registers(io.rd_sel) := 0.S    
        } .otherwise {
            registers(io.rd_sel) := io.writeData
        }
        
    }

}