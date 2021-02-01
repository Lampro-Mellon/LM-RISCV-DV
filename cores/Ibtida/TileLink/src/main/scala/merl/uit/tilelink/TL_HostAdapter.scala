package merl.uit.tilelink

import chisel3._
import chisel3.util._

class TL_HostAdapter(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val req_i = Input(Bool())
    val gnt_o = Output(Bool())
    val addr_i = Input(UInt(conf.TL_AW.W))
    val we_i = Input(Bool())
    val wdata_i = Input(UInt(conf.TL_DW.W))
    val be_i = Input(UInt(conf.TL_DBW.W))
    val valid_o = Output(Bool())
    val rdata_o = Output(UInt(conf.TL_DW.W))
    val err_o = Output(Bool())

    val tl_o = new TL_H2D()
    val tl_i = Flipped(new TL_D2H())
  })


  when(reset.asBool()) {
    io.tl_o.a_valid := false.B  // spec pg 11 during RESET the a_valid from master must be low
  }

  val wordSize = log2Ceil(conf.TL_DBW)
  val tl_source = Wire(UInt(conf.TL_AIW.W))
  val tl_be = Wire(UInt(conf.TL_DBW.W))

  tl_source := 0.U  // providing source identifier id => 0
  tl_be := Mux(io.we_i, io.be_i, Fill(conf.TL_DBW, 1.U)) // Using a mux to conditionally assign value to byte enable wire (tl_be)

  io.tl_o.a_valid := io.req_i
  io.tl_o.a_opcode := Mux(io.we_i, Mux(io.be_i.andR, TL_A_Opcode.putFullData, TL_A_Opcode.putPartialData), TL_A_Opcode.get) // .andR is AND reduction that return true if all bits are set.
  io.tl_o.a_param := 0.U
  io.tl_o.a_size := wordSize.asUInt(conf.TL_SZW.W)
  io.tl_o.a_mask := tl_be
  io.tl_o.a_source := tl_source
  io.tl_o.a_address := Cat(io.addr_i(31, wordSize), 0.U(wordSize.W))  // word aligned addressing. 0, 4, 8, 12 ...
  io.tl_o.a_data := io.wdata_i
  io.tl_o.d_ready := true.B

  io.gnt_o := io.tl_i.a_ready
  io.valid_o := io.tl_i.d_valid
  io.rdata_o := io.tl_i.d_data
  io.err_o := io.tl_i.d_error

}