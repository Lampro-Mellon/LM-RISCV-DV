package merl.uit.tilelink

import chisel3._
object TL_A_Opcode {
  val get = 4.U(3.W)
  val putFullData = 0.U(3.W)
  val putPartialData = 1.U(3.W)
}