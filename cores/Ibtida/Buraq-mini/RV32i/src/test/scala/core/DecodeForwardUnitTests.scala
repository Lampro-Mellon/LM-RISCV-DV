package core
import chisel3.iotesters.PeekPokeTester

class DecodeForwardUnitTests(c: DecodeForwardUnit) extends PeekPokeTester(c) {
  poke(c.io.ID_EX_REGRD, 5)
  poke(c.io.EX_MEM_REGRD, 5)
  poke(c.io.MEM_WB_REGRD, 5)
  poke(c.io.rs1_sel, 5)
  poke(c.io.rs2_sel, 5)
  poke(c.io.ctrl_branch, 1)
  step(1)
}
