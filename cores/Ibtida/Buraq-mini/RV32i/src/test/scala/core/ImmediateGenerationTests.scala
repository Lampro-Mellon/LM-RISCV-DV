package core
import chisel3.iotesters.PeekPokeTester

class ImmediateGenerationTests(c: ImmediateGeneration) extends PeekPokeTester(c) {
    poke(c.io.instruction, 3146003)
    poke(c.io.pc, 0)
    step(1)
    expect(c.io.i_imm, 3)
}