package uart0

import chisel3._
import chisel3.util._
import chisel3.dontTouch

class Rx extends Module {
  val io = IO(new Bundle {
    val CLK_PER_BIT = Input(UInt(16.W))
    val rxd = Input(Bits(1.W))
    val valid = Output(Bool())
    val data = Output(Bits(8.W))
  })

  val CLCK_PER_BIT = dontTouch(Wire(UInt(32.W)))
  CLCK_PER_BIT := io.CLK_PER_BIT

  val idle :: start :: data :: stop :: cleanup :: Nil = Enum(5)
  val stateReg = RegInit(idle)

  val clockCount = RegInit(0.U(8.W))
  val bitIndex = RegInit(0.U(4.W))
  val validReg = RegInit(0.U(1.W))
  //val dataReg = RegInit(VecInit(Seq.fill(8)(0.U(1.W))))
  val rxReg = RegNext(RegNext(io.rxd, 1.U), 1.U)
  val shiftReg = RegInit('A'.U(8.W))

  switch(stateReg) {
    is(idle) {
      validReg := 0.U
      clockCount := 0.U
      bitIndex := 0.U

      when(io.rxd === 0.U) {
        stateReg := start
      }.otherwise {
        stateReg := idle
      }
    }

    is(start) {
      when(clockCount === ((CLCK_PER_BIT - 1.U) / 2.U)) {
        when(io.rxd === 0.U) {
          clockCount := 0.U
          stateReg := data
        }.otherwise {
          stateReg := idle
        }
      }.otherwise {
        clockCount := clockCount + 1.U
        stateReg := start
      }
    }

    is(data) {
      when(clockCount < (CLCK_PER_BIT - 1.U)) {
        clockCount := clockCount + 1.U
        stateReg := data
      }.otherwise {
        clockCount := 0.U
        shiftReg := Cat(rxReg, shiftReg >> 1)
        //dataReg(bitIndex) := io.rxd

        when(bitIndex < 7.U) {
          bitIndex := bitIndex + 1.U
          stateReg := data
        }.otherwise {
          bitIndex := 0.U
          stateReg := stop
        }
      }
    }

    is(stop) {
      when(clockCount < (CLCK_PER_BIT - 1.U)) {
        clockCount := clockCount + 1.U
        stateReg := stop
      }.otherwise {
        validReg := 1.U
        clockCount := 0.U
        stateReg := cleanup
      }
    }

    is(cleanup) {
      stateReg := idle
      validReg := 0.U
    }
  }

  io.data := shiftReg
  //io.data := dataReg.asUInt()
  io.valid := validReg

}