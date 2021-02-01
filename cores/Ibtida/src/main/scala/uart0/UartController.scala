package uart0

import chisel3._
import chisel3.util._

class UartController extends Module {
  val io = IO(new Bundle {
    val isStalled = Input(Bool())

    val rx_data_o = Output(UInt(32.W))
    val addr_o = Output(UInt(8.W))
    val CLK_PER_BIT = Input(UInt(16.W))
    val rxd = Input(UInt(1.W))

    val valid = Output(Bool())
    val done = Output(Bool())
  })

  val regDone = RegInit(false.B)
  val count = RegInit(0.U(3.W))
  val regFinalData = RegInit(0.U(32.W))
  val regAddr = RegInit(16383.U(14.W))
  val regValid = RegInit(false.B)

  val rx = Module(new Rx)

  rx.io.CLK_PER_BIT := io.CLK_PER_BIT
  rx.io.rxd := io.rxd

  val dataReg = RegInit(0.U(8.W))
  val regLSB1 = RegInit(0.U(8.W))
  val regLSB2 = RegInit(0.U(8.W))
  val regMSB1 = RegInit(0.U(8.W))
  val regMSB2 = RegInit(0.U(8.W))

  when(io.isStalled && !regDone) {
    when(rx.io.valid === 1.U) {
      // We get 1 byte of data from the Rx module
      // dataReg := rx.io.channel.bits
      dataReg := rx.io.data
      count := count + 1.U
      regValid := false.B
    }
  }
  switch(count) {
    is(1.U) {
      regLSB1 := dataReg
    }
    is(2.U) {
      regLSB2 := dataReg
    }
    is(3.U) {
      regMSB1 := dataReg
    }
    is(4.U) {
      // Now the 32-Bit data is complete here
      val data = Cat(dataReg, regMSB1, regLSB2, regLSB1)
      when(data === "h00000fff".U) {
        regDone := true.B
        regFinalData := 0.U
        regAddr := 0.U
        regValid := false.B
      }.otherwise {
        regFinalData := data
        regAddr := regAddr + 1.U
        regValid := true.B
      }

    }
  }

  when(count === 4.U) {
    count := 0.U
  }

  io.addr_o := regAddr
  io.rx_data_o := regFinalData
  io.valid := regValid
  io.done := regDone

}