package core

import chisel3._
import chisel3.util._
//import chisel3.stage.ChiselStage


class Foo extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(32.W))
    val out = Output(UInt(32.W))
  })

  io.out := ShiftRegister(io.in, 3)
}