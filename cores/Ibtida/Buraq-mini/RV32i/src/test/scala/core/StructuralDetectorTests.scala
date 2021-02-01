package core

import chisel3.iotesters.PeekPokeTester

class StructuralDetectorTests(c: StructuralDetector) extends PeekPokeTester(c) {
  poke(c.io.MEM_WB_regWr, 1)
  poke(c.io.MEM_WB_REGRD, 2)
  poke(c.io.rs1_sel, 2)
  poke(c.io.rs2_sel, 10)
  step(1)
  expect(c.io.fwd_rs1, 1)
  expect(c.io.fwd_rs2, 0)
}