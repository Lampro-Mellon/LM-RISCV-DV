package core

import chisel3.iotesters.PeekPokeTester

class ControlDecodeTests(c: ControlDecode) extends PeekPokeTester(c) {
    poke(c.io.in_r_type, 0)
    poke(c.io.in_load_type, 0)
    poke(c.io.in_s_type, 1)
    poke(c.io.in_sb_type, 0)
    poke(c.io.in_jalr_type, 0)
    poke(c.io.in_jal_type, 0)
    poke(c.io.in_lui_type, 0)
    step(1)
    expect(c.io.memWrite, 1)
    expect(c.io.branch, 0)
  //  expect(c.io.memRead, 0)
    expect(c.io.regWrite, 0)
    expect(c.io.memToReg, 0)
    expect(c.io.aluOperation, 5)
    expect(c.io.operand_a_sel, 0)
    expect(c.io.operand_b_sel, 1)
    expect(c.io.extend_sel, 2)
    expect(c.io.next_pc_sel, 0)
}