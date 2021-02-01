package core
import chisel3.iotesters.PeekPokeTester

class MEM_WBTests(c: MEM_WB) extends PeekPokeTester(c) {

    step(1)
}