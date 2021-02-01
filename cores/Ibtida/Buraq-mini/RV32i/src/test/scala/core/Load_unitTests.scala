package core
import chisel3.iotesters.PeekPokeTester

class Load_unitTests(c: Load_unit) extends PeekPokeTester(c) {
  step(1)
}
