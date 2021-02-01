package core

import chisel3._

class HazardDetection extends Module {
  val io = IO(new Bundle {
    val IF_ID_INST = Input(UInt(32.W))
    val ID_EX_MEMREAD = Input(UInt(1.W))
    val ID_EX_REGRD = Input(UInt(5.W))
    val pc_in = Input(SInt(32.W))
    val current_pc = Input(SInt(32.W))
    val IF_ID_MEMREAD = Input(UInt(1.W))
    val inst_forward = Output(UInt(1.W))
    val pc_forward = Output(UInt(1.W))
    val ctrl_forward = Output(UInt(1.W))
    val inst_out = Output(UInt(32.W))
    val pc_out = Output(SInt(32.W))
    val current_pc_out = Output(SInt(32.W))
  })
  val rs1_sel = io.IF_ID_INST(19, 15)
  val rs2_sel = io.IF_ID_INST(24, 20)
  when(io.IF_ID_MEMREAD === "b1".U)
  {
      when(io.ID_EX_MEMREAD === "b1".U && (io.ID_EX_REGRD === rs1_sel))
      {
         createStall()
      } 
      .otherwise 
      {
         createNoStall()
      }
  }
  .otherwise
  {
    when(io.ID_EX_MEMREAD === "b1".U && ((io.ID_EX_REGRD === rs1_sel) || (io.ID_EX_REGRD === rs2_sel)))
     {
        createStall()
     } 
     .otherwise 
     {
        createNoStall()
     }
  }
  

  def createStall(): Unit =
  {
      io.inst_forward := 1.U
      io.pc_forward := 1.U
      io.ctrl_forward := 1.U
      io.inst_out := io.IF_ID_INST
      io.pc_out := io.pc_in
      io.current_pc_out := io.current_pc
  }
  def createNoStall(): Unit =
  {
    io.inst_forward := 0.U
    io.pc_forward := 0.U
    io.ctrl_forward := 0.U
    io.inst_out := io.IF_ID_INST  // Doesn't matter if we pass the old instruction forward because it won't be selected by the mux
    io.pc_out := io.pc_in         // Doesn't matter if we pass the old pc value forward because it won't be selected by the mux
    io.current_pc_out := io.current_pc

}
}
