package core

import chisel3.iotesters.PeekPokeTester

class ID_EXTests(c: ID_EX) extends PeekPokeTester(c) {
    poke(c.io.pc_in, 4)
    poke(c.io.rs1_in, 20)
    poke(c.io.rs2_in, 40)
    poke(c.io.imm, 12)
    poke(c.io.rd_sel_in, 31)
    poke(c.io.func3_in, 0)
    poke(c.io.func7_in, 0)
    step(1)
}