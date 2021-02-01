package ibtida_soc
import chisel3._

import scala.collection.immutable.Map

object AddressMap {
  val ADDR_SPACE_UART = "h40000000".U(32.W)
  val ADDR_MASK_UART  = "h00000fff".U(32.W)
  val ADDR_SPACE_GPIO = "h40010000".U(32.W)
  val ADDR_MASK_GPIO  = "h00000fff".U(32.W)
  val ADDR_SPACE_DCCM = "h10000000".U(32.W)
  //val ADDR_MASK_DCCM  = "h00003fff".U(32.W) // mask for 64 KB ram
  val ADDR_MASK_DCCM  = "h000000fc".U(32.W)   // mask for 64 words ram
}

object TL_Peripherals {
  // The device map will have N-1 devices data for the 1:N socket.
  // So if we have a 1:4 socket then the device map should have 4 devices from 0 to 3.
  val deviceMap: Map[String, UInt] = Map("dccm" -> 0.U, "gpio" -> 1.U)
}
