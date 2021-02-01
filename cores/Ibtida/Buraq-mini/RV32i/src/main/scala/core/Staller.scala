package core

import chisel3._

class Staller extends Module{
  val io = IO(new Bundle {
    val isUART = Input(UInt(1.W))
    val isMMIO = Input(UInt(1.W))
    val stall = Output(UInt(1.W))
  })

  when(reset.asBool() === false.B && (io.isUART === 1.U || io.isMMIO === 1.U)) {
    io.stall := 1.U
  } .otherwise {
    io.stall := 0.U
  }

}
