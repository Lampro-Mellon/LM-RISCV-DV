package main.scala.core.csrs
import chisel3._

class CsrPrimitive(width: Int, ShadowCopy: Boolean, ResetValue: Int) extends Module
{
  val io = IO(new Bundle{
    val i_wrdata  = Input(UInt(width.W))
    val i_wr_en   = Input(Bool())
    val o_rd_data = Output(UInt(width.W))
    val o_rd_error= Output(Bool())
  })

  val rdata_q = RegInit(ResetValue.U(width.W))
  when(io.i_wr_en)
  {
    rdata_q := io.i_wrdata
  }
  io.o_rd_data := rdata_q

  if(ShadowCopy == true)
  {
    val shadow_q = RegInit(~ResetValue.U(width.W))
    when(io.i_wr_en)
    {
      shadow_q := ~io.i_wrdata
    }
    io.o_rd_error := rdata_q =/= ~shadow_q
  }
  else
  {
    io.o_rd_error := "b0".U
  }
}