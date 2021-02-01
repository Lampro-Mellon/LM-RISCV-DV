package main.scala.core.csrs
import chisel3._
import chisel3.util._

object Exc_Cause {
  val EXC_CAUSE_IRQ_SOFTWARE_M            = Cat("b1".U(1.W), 3.U(5.W))
  val EXC_CAUSE_IRQ_TIMER_M               = Cat("b1".U(1.W), 7.U(5.W))
  val EXC_CAUSE_IRQ_EXTERNAL_M            = Cat("b1".U(1.W), 11.U(5.W))
  val EXC_CAUSE_IRQ_NM                    = Cat("b1".U(1.W), 31.U(5.W)) //== EXC_CAUSE_IRQ_FAST_15
  val EXC_CAUSE_INSN_ADDR_MISA            = Cat("b0".U(1.W), 0.U(5.W))
  val EXC_CAUSE_ILLEGAL_INSN              = Cat("b0".U(1.W), 2.U(5.W))
  val EXC_CAUSE_BREAKPOINT                = Cat("b0".U(1.W), 3.U(5.W))
  val EXC_CAUSE_ECALL_MMODE               = Cat("b0".U(1.W), 11.U(5.W))
}
