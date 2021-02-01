package core
import chisel3.iotesters.PeekPokeTester

class DecodeTests(c: Decode) extends PeekPokeTester(c) {
    poke(c.io.IF_ID_inst, 33)
    poke(c.io.IF_ID_pc, 33)
    poke(c.io.IF_ID_pc4, 33)
    poke(c.io.MEM_WB_ctrl_regWr, 33)
    poke(c.io.MEM_WB_rd_sel, 33)
    poke(c.io.ID_EX_ctrl_MemRd, 33)
    poke(c.io.ID_EX_rd_sel, 33)
    poke(c.io.EX_MEM_rd_sel, 33)
    poke(c.io.EX_MEM_ctrl_MemRd, 33)
    poke(c.io.MEM_WB_ctrl_MemRd, 33)
    poke(c.io.alu_output, 33)
    poke(c.io.EX_MEM_alu_output, 33)
    poke(c.io.dmem_memOut, 33)
    step(1)
}