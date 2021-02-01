package merl.uit.tilelink

import chisel3._

class TL_Decoder(N: Int, addrMap: AddressMap)(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val addr_i = Input(UInt(32.W))
    val dev_sel = Output(UInt(N.W))
  })

  io.dev_sel := N.asUInt
  when((io.addr_i & ~addrMap.ADDR_MASK_GPIO) === addrMap.ADDR_SPACE_GPIO) {
    io.dev_sel := TL_Peripherals.deviceMap("gpio")
  } .elsewhen((io.addr_i & ~addrMap.ADDR_MASK_UART) === addrMap.ADDR_SPACE_UART) {
    io.dev_sel := TL_Peripherals.deviceMap("uart")
  }
}
