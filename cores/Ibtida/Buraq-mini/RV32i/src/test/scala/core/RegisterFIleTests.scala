package core

import chisel3.iotesters.PeekPokeTester

class RegisterFileTests(c: RegisterFile) extends PeekPokeTester(c) {
    poke(c.io.rs1_sel, 1)
    poke(c.io.rs2_sel, 3)
    poke(c.io.regWrite, 1)
    poke(c.io.writeData, 10)
    poke(c.io.rd_sel, 3)
    step(1)
    expect(c.io.rs2, 10)    
    step(1)
    

}