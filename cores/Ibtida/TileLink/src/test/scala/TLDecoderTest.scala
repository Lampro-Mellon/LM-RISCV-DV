package tilelink
import org.scalatest._
import chiseltest._
import chisel3._
import merl.uit.tilelink.{AddressMap, TLConfiguration, TL_Decoder, TL_Peripherals}

class TLDecoderTest extends FlatSpec with ChiselScalatestTester with Matchers {
  behavior of "TL Decoder"
  implicit val conf = TLConfiguration()
  val addrMap = AddressMap()
  it should "set the dev_sel to point to gpio" in {
    test(new TL_Decoder(2, addrMap)) {c =>
      c.io.addr_i.poke("h40010000".U)
      c.io.dev_sel.expect(TL_Peripherals.deviceMap("gpio"))
    }
  }

  it should "set the dev_sel to point to uart" in {
    test(new TL_Decoder(2, addrMap)) {c =>
      c.io.addr_i.poke("h40000000".U)
      c.io.dev_sel.expect(TL_Peripherals.deviceMap("uart"))
    }
  }

  it should "set the dev_sel to point to error responder" in {
    test(new TL_Decoder(2, addrMap)) {c =>
      c.io.addr_i.poke("h4fffffff".U)
      c.io.dev_sel.expect(2.U)
    }
  }
}
