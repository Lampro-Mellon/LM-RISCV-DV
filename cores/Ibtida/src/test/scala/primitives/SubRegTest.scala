package primitives
import org.scalatest._
import chiseltest._
import chisel3._

class SubRegTest extends FlatSpec with ChiselScalatestTester with Matchers {
  behavior of "Sub register"
  it should "software perform a W of 1 and R of 1" in {
    test(new SubReg(SWACCESS = "RW")()) {c =>
      c.io.we.poke(true.B)
      c.io.wd.poke(1.U)
      c.clock.step(1)
      c.io.qs.expect("b00000000000000000000000000000001".U)
    }
  }
  it should "hardware perform a W of 3 and R of 3" in {
    test(new SubReg(SWACCESS = "RW")()) {c =>
      c.io.de.poke(true.B)
      c.io.d.poke(3.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000011".U)
    }
  }
  it should "not allow software to write. Only hardware can write. Software can read." in {
    test(new SubReg(SWACCESS = "RO")()) {c =>
      c.io.we.poke(true.B)
      c.io.wd.poke(1.U)
      c.clock.step(1)
      c.io.qs.expect("b00000000000000000000000000000000".U)
      c.io.de.poke(true.B)
      c.io.d.poke(1.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000001".U)
      c.io.qs.expect("b00000000000000000000000000000001".U)
    }
  }
  it should "clear the register contents when software writes 1" in {
    test(new SubReg(SWACCESS = "W1C")()) {c =>
      c.io.de.poke(true.B)
      c.io.d.poke(3.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000011".U)
      c.io.qs.expect("b00000000000000000000000000000011".U)
      c.io.we.poke(true.B)
      c.io.wd.poke(1.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000010".U)
      c.io.qs.expect("b00000000000000000000000000000010".U)
    }
  }
  it should "clear the register contents when software writes 0" in {
    test(new SubReg(SWACCESS = "W0C")()) {c =>
      c.io.de.poke(true.B)
      c.io.d.poke(3.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000011".U)
      c.io.qs.expect("b00000000000000000000000000000011".U)
      c.io.we.poke(true.B)
      c.io.wd.poke(1.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000001".U)
      c.io.qs.expect("b00000000000000000000000000000001".U)
      c.io.de.poke(false.B)
      c.io.wd.poke(2.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000000".U)
      c.io.qs.expect("b00000000000000000000000000000000".U)
    }
  }
  it should "sets the register content when software writes 1" in {
    test(new SubReg(SWACCESS = "W1S")()) {c =>
      c.io.de.poke(true.B)
      c.io.d.poke(3.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000011".U)
      c.io.qs.expect("b00000000000000000000000000000011".U)
      c.io.we.poke(true.B)
      c.io.wd.poke(4.U)
      c.clock.step(1)
      c.io.q.expect("b00000000000000000000000000000111".U)
      c.io.qs.expect("b00000000000000000000000000000111".U)
    }
  }
}
