package core

import chisel3._

class Pc extends Module {
    val io = IO(new Bundle {
        val in = Input(SInt(32.W))
        val out = Output(SInt(32.W))
        val pc4 = Output(SInt(32.W))
    })

//    val reg = RegInit(256.S(32.W) - 4.S(32.W))
val reg = RegInit(48.S(32.W) - 4.S(32.W))   // 44 -> 0x30 is base address of program memory
    reg := io.in
    io.pc4 := reg + 4.S
    io.out := reg
//    when(io.instr_gnt_i)
//    {
//      io.pc4 := reg + 4.S
//    }
//    .otherwise
//    {
//      io.pc4 := reg
//
//    }

    
}