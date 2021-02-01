package core
import chisel3.iotesters.PeekPokeTester

class EX_MEMTests(c: EX_MEM) extends PeekPokeTester(c) {
    poke(c.io.ctrl_MemWr_in, 1)
 //   poke(c.io.ctrl_MemRd_in, 0)
    poke(c.io.ctrl_RegWr_in, 0)
    poke(c.io.ctrl_MemToReg_in, 1)
    poke(c.io.rs2_in, 0)
    poke(c.io.rd_sel_in, 30)
    poke(c.io.alu_in, 23)
    step(1)
}