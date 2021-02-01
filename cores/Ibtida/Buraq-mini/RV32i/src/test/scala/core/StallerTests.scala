package core
import chisel3.iotesters.PeekPokeTester

class StallerTests(c: Staller) extends PeekPokeTester (c){
  step(1)
}
