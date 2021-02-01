package merl.uit.tilelink

import chisel3._

// TileLink Device To Host (Channel D ports) TL_D2H
class TL_D2H(implicit val conf: TLConfiguration) extends Bundle {
  val d_valid = Output(Bool())
  val d_opcode = Output(UInt(3.W))
  val d_param = Output(UInt(3.W))
  val d_size = Output(UInt(conf.TL_SZW.W))
  val d_source = Output(UInt(conf.TL_AIW.W))
  val d_sink = Output(UInt(conf.TL_DIW.W))
  val d_data = Output(UInt(conf.TL_DW.W))
  val d_error = Output(Bool())
  val a_ready = Output(Bool())
}