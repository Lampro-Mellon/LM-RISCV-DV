package merl.uit.tilelink

import chisel3._
import chisel3.util._
import scala.collection.immutable._

case class TLConfiguration() {
  val TL_AW = 32                  // AW -> the default width of address bus
  val TL_DW = 32                  // DW -> the default width of data bus
  val TL_AIW = 4                  // AIW -> Address source identifier bus width
  val TL_DIW = 1                  // DIW -> Sink bits width
  val TL_DBW = (TL_DW >> 3)       // Number of data bytes generated (DW/8)
  val TL_SZW: Int = log2Ceil(TL_DBW)   // The size width of operation in power of 2 represented in bytes
}

case class AddressMap() {
  val ADDR_SPACE_UART = "h40000000".U(32.W)
  val ADDR_MASK_UART = "h00000fff".U(32.W)
  val ADDR_SPACE_GPIO = "h40010000".U(32.W)
  val ADDR_MASK_GPIO = "h00000fff".U(32.W)
}

object TL_Peripherals {
  // The device map will have N-1 devices data for the 1:N socket.
  // So if we have a 1:4 socket then the device map should have 4 devices from 0 to 3.
  val deviceMap: Map[String, UInt] = Map("gpio" -> 0.U, "uart" -> 1.U)
}