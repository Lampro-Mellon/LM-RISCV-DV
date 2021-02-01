package core

import chisel3.iotesters.PeekPokeTester

class AluTests(c: Alu) extends PeekPokeTester(c) {
    poke(c.io.oper_a, -3)
    poke(c.io.oper_b, -1)
    poke(c.io.aluCtrl, 0)
    step(1)
    expect(c.io.output, -4)
 //   expect(c.io.branch, 0)
}