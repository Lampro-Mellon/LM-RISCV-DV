package primitives
import org.scalatest._
import chiseltest._
import chisel3._

class FifoTest extends FlatSpec with ChiselScalatestTester with Matchers {
  behavior of "FIFO"
  it should "store data in 2 rows and read out the first written data" in {
    test(new Fifo(width = 8, depth = 4, pass = false, outputZeroIfEmpty = false)) {c =>
      // 1 CC
      c.io.wvalid_i.poke(true.B)
      c.io.wdata_i.poke("h4".U)
      c.clock.step(1)
      // 2 CC
      c.io.rdata_o.expect("h4".U)

      c.io.wdata_i.poke("h8".U)

      c.clock.step(1)
      // 3 CC
      c.io.wvalid_i.poke(false.B)

      c.io.rready_i.poke(true.B)
      c.io.rdata_o.expect("h4".U)

      c.clock.step(1)
      // 4 CC
//
      c.io.rdata_o.expect("h8".U)
//
      c.clock.step(1)
      // 5 CC
//
      c.io.rdata_o.expect(0.U)
      c.io.depth_o.expect(0.U)
//
      c.io.wvalid_i.poke(true.B)
      c.io.wdata_i.poke("hc".U)

      c.clock.step(1)
      // 6 CC
//
//      c.clock.step(1)
//
      c.io.rdata_o.expect("hc".U)
      c.io.depth_o.expect(1.U)

      c.io.wdata_i.poke("hd".U)

      c.clock.step(1)
      // 7 CC

      c.io.rdata_o.expect("hd".U)
      c.io.depth_o.expect(1.U)

      c.io.wvalid_i.poke(false.B)
////
      c.clock.step(1)
      // 8 CC
      c.io.wvalid_i.poke(true.B)
      c.io.wdata_i.poke("he".U)
      c.io.rready_i.poke(false.B)

      c.clock.step(1)
      c.io.rdata_o.expect("he".U)
      c.io.wdata_i.poke("hf".U)

      c.clock.step(1)
      c.io.rdata_o.expect("he".U)
      c.io.wdata_i.poke("h10".U)

      c.clock.step(1)
      c.io.wdata_i.poke("h14".U)

      c.clock.step(1)
      c.io.rdata_o.expect("he".U)
      c.io.rready_i.poke(true.B)
      c.io.wvalid_i.poke(false.B)
      c.clock.step(1)

      c.io.rdata_o.expect("hf".U)

      c.clock.step(1)

      c.io.rdata_o.expect("h10".U)
      c.io.rready_i.poke(false.B)
      c.io.wvalid_i.poke(true.B)
      c.io.wdata_i.poke("h18".U)

      c.clock.step(1)

      c.io.rready_i.poke(true.B)
      c.io.wvalid_i.poke(false.B)

      c.clock.step(1)
      c.io.rdata_o.expect("h14".U)

      c.clock.step(1)
      c.io.rdata_o.expect("h18".U)
    }
  }
}
