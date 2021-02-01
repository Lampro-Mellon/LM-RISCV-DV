package merl.uit.tilelink

import chisel3._

object TL_D_Opcode {
  val accessAck = 0.U(3.W)
  val accessAckData = 1.U(3.W)
}