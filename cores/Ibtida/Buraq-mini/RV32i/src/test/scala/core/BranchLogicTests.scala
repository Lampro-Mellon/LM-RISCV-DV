package core
import chisel3.iotesters.PeekPokeTester

class BranchLogicTests(c: BranchLogic) extends PeekPokeTester(c) {
  poke(c.io.in_rs1, -2)
  poke(c.io.in_rs2, -5)
  poke(c.io.in_func3, 4)
  step(1)
  expect(c.io.output, 0)
}
