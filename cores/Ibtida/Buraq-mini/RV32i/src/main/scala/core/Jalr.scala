package core

import chisel3._

class Jalr extends Module {
    val io = IO(new Bundle {
            val input_a = Input(SInt(32.W))
            val input_b = Input(SInt(32.W))
            val output = Output(SInt(32.W))
    })

    val sum = io.input_a + io.input_b
    io.output := sum & 4294967294L.S 

}