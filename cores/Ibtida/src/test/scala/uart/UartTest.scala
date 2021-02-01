package uart
import org.scalatest._
import chisel3._
import chiseltest._
import merl.uit.tilelink.TLConfiguration

class UartTest extends FlatSpec with ChiselScalatestTester with Matchers {
  implicit val conf = TLConfiguration()
  behavior of "uart module"

  it should "just connect UART RX without errors" in {
    test(new UartRx()) {c =>
      c.clock.step(10)
    }
  }

  it should "just connect UART register top without errors" in {
    test(new UartRegTop()) {c =>
      c.clock.step(10)
    }
  }
  it should "just connect UART core top without errors" in {
    test(new UartCore()) {c =>
      c.clock.step(10)
    }
  }
  it should "just connect UART top without errors" in {
    test(new Uart()) {c =>
      c.clock.step(10)
    }
  }

}
