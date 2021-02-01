package core
import chisel3.iotesters.PeekPokeTester

class HazardDetectionTests(c: HazardDetection) extends PeekPokeTester(c) {
  poke(c.io.IF_ID_INST, 23)
  poke(c.io.ID_EX_MEMREAD, 1)
  poke(c.io.ID_EX_REGRD, 23)
  poke(c.io.pc_in, 23)
  step(1)
  
}
