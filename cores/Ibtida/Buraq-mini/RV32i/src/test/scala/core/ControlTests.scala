package core

import chisel3.iotesters.PeekPokeTester

class ControlTests(c: Control) extends PeekPokeTester(c) {
    poke(c.io.in_opcode, 103)
    step(1)
    expect(c.io.out_memWrite, 0)
    expect(c.io.out_branch, 0)
 //   expect(c.io.out_memRead, 0)
    expect(c.io.out_regWrite, 1)
    expect(c.io.out_memToReg, 0)
    expect(c.io.out_aluOp, 3)
    expect(c.io.out_operand_a_sel, 2)
    expect(c.io.out_operand_b_sel, 0)
    expect(c.io.out_extend_sel, 0)
    expect(c.io.out_next_pc_sel, 3)
}