package core

import chisel3._

class ForwardUnitMem extends Module {
  val io = IO(new Bundle {
    val EX_MEM_RS2SEL = Input(UInt(5.W))
    val MEM_WB_RDSEL = Input(UInt(5.W))
    val EX_MEM_MEMWR = Input(UInt(1.W))
    val MEM_WB_MEMRD = Input(UInt(1.W))
    val forward = Output(UInt(1.W))
  })

  when(io.EX_MEM_MEMWR === "b1".U && io.MEM_WB_RDSEL =/= "b00000".U && io.MEM_WB_MEMRD === "b1".U && (io.EX_MEM_RS2SEL === io.MEM_WB_RDSEL)) {
    io.forward := "b1".U
  } .otherwise {
    io.forward := "b0".U
  }

}
