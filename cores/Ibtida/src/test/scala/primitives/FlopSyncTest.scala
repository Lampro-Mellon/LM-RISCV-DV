package primitives
import org.scalatest._
import chiseltest._
import chisel3._

class FlopSyncTest extends FlatSpec with ChiselScalatestTester with Matchers {
  behavior of "flop synchronizer"
  it should "output result after 2 cycles" in {
    test(new FlopSynchronizer(width = 1, resetVal = 1.U)) {c =>
      c.io.d_in.poke(0.U)
      c.clock.step(2)
      c.io.q_out.expect(0.U)
    }
  }
}
