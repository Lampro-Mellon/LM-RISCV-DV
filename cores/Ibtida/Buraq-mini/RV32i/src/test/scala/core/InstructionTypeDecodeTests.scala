package core
import chisel3.iotesters.PeekPokeTester

class InstructionTypeDecodeTests(c: InstructionTypeDecode) extends PeekPokeTester(c) {
    poke(c.io.opcode, 55)
    step(1)
    expect(c.io.r_type, 0)
    expect(c.io.load_type, 0)
    expect(c.io.s_type, 0)
    expect(c.io.sb_type, 0)
    expect(c.io.i_type, 0)
    expect(c.io.jalr_type, 0)
    expect(c.io.jal_type, 0)
    expect(c.io.lui_type, 1)
}