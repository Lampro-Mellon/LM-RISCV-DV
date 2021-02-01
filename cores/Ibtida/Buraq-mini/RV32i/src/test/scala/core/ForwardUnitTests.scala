package core
import chisel3.iotesters.PeekPokeTester

class ForwardUnitTests(c: ForwardUnit) extends PeekPokeTester(c) {
    // add x2, x3, x4
    // add x1, x2, x5
    poke(c.io.EX_MEM_REGRD, 7)
    poke(c.io.MEM_WB_REGRD, 4)
    poke(c.io.ID_EX_REGRS1, 2)
    poke(c.io.ID_EX_REGRS2, 4)
    poke(c.io.EX_MEM_REGWR, 1)
    poke(c.io.MEM_WB_REGWR, 1)
    step(1)
    expect(c.io.forward_a, 0)
    expect(c.io.forward_b, 1)
}