package primitives
import org.scalatest._
import chiseltest._
import chisel3._

class IntrHardwareTest extends FlatSpec with ChiselScalatestTester with Matchers {
  behavior of "Interrupt hardware"
  it should "just connect without errors" in  {
    test(new IntrHardware()) {c =>
      c.clock.step(1)
    }
  }
}
