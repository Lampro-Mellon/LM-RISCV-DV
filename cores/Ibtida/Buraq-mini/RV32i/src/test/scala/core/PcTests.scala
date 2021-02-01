package core
import chisel3.iotesters.PeekPokeTester

class PcTests(c: Pc) extends PeekPokeTester(c) {
    poke(c.io.in, 0)
  //  poke(c.io.stall, 0)
    step(1)
    poke(c.io.in, 4)
   // poke(c.io.stall, 1)
    step(1)
    poke(c.io.in, 8)
    step(1)
    poke(c.io.in, 12)
    step(1)
}