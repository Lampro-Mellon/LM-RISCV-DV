package main.scala.core.csrs

import chisel3._
import chisel3.util.Cat

class BrqCounter(counterWidth: Int) extends Module
{
  val io = IO(new Bundle{
    val i_counter_inc = Input(Bool())
    val i_counterh_we = Input(Bool())
    val i_counter_we  = Input(Bool())
    val i_counter_val = Input(UInt(32.W))
    val o_counter_val = Output(UInt(64.W))
  })

  val counter = Wire(UInt(64.W))
  val counter_upd = Wire(UInt(counterWidth.W))
  val counter_load = Wire(UInt(64.W))
  val we  = Wire(Bool())
  val counter_d = Wire(UInt(counterWidth.W))
  val counter_msb = Wire(UInt(32.W))
  val counter_lsb = Wire(UInt(32.W))
  val cn_lsb      = Wire(UInt(counterWidth.W))
  val cn_msb      = Wire(UInt(counterWidth.W))

  // write
  we           := io.i_counter_we | io.i_counterh_we
  counter      := Cat(cn_msb, cn_lsb)
  counter_load := Cat(counter_msb, counter_lsb)
  counter_msb  := counter(63,32)
  counter_lsb  := io.i_counter_val

  when(io.i_counterh_we)
  {
    counter_msb := io.i_counter_val
    counter_lsb  := counter(31,0)
  }

  // increment

  counter_upd := counter(counterWidth - 1, 0) + Cat("b0".U((counterWidth-1).W), "b1".U)

  // next value
  when(we)
  {
    counter_d := counter_load(counterWidth-1,0).asUInt()
  }
    .elsewhen(io.i_counter_inc)
    {
      counter_d := counter_upd(counterWidth-1,0)
    }
    .otherwise
    {
      counter_d := counter(counterWidth-1,0)
    }

  val counter_q = RegInit(0.U(counterWidth.W))

  counter_q := counter_d

  if(counterWidth < 64)
  {
    val unused_counter_load = Wire(UInt((counterWidth + 32).W))

    cn_lsb := counter_q
    cn_msb := 0.U

    unused_counter_load       := counter_load(63,counterWidth).asUInt()
  }
  else
  {
    counter := counter_q
    cn_lsb := 0.U
    cn_msb := 0.U
  }
  io.o_counter_val := counter

}
