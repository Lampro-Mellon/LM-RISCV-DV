package core
import chisel3.iotesters.PeekPokeTester

class ForwardUnitMemTests(c: ForwardUnitMem) extends PeekPokeTester(c) {
  poke(c.io.EX_MEM_RS2SEL, 2)
  poke(c.io.MEM_WB_RDSEL, 2)
  poke(c.io.EX_MEM_MEMWR, 1)
  step(1)
  expect(c.io.forward, 1)
}
