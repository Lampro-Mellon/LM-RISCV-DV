package core
import chisel3.iotesters.PeekPokeTester

class Store_unitTests(c: Store_unit) extends PeekPokeTester(c) {
  poke(c.io.func3, 0)
  poke(c.io.MemWrite,1)
  poke(c.io.Rs2, 32)
  step(1)
}
