package merl.uit.tilelink

import chisel3._
import chisel3.util._

class TL_ErrResp(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_h_i = Flipped(new TL_H2D)
    val tl_d_o = new TL_D2H
  })

  val err_opcode = RegInit(TL_A_Opcode.get)
  val err_source = RegInit(0.U)
  val err_size = RegInit(0.U)
  val err_reqPending = RegInit(false.B)
  val err_rspPending = RegInit(false.B)

  when(io.tl_h_i.a_valid && io.tl_d_o.a_ready) {
    // the host sends a valid request and the device is ready to accept it
    // which means the request is accepted and is pending now if there is another response pending
    err_reqPending := true.B
    err_source := io.tl_h_i.a_source
    err_opcode := io.tl_h_i.a_opcode
    err_size := io.tl_h_i.a_size
  } .elsewhen(!err_rspPending) {
    // if no response is pending then the request pending is set to false which means no request is pending
    err_reqPending := false.B
  }

  when((err_reqPending || err_rspPending) && !io.tl_h_i.d_ready) {
    // if any req is accepted then err_reqPending = true which means if the host is not ready to receive it
    // then err_rspPending will get true.
    err_rspPending := true.B
  } .otherwise {
    err_rspPending := false.B
  }

  io.tl_d_o.a_ready := ~err_rspPending & ~(err_reqPending & ~io.tl_h_i.d_ready)
  io.tl_d_o.d_valid := err_reqPending || err_rspPending
  io.tl_d_o.d_data := Fill(conf.TL_DW/4, "hf".U)  //Return all F. If dw = 32 then 32/4 = 8 characters all 0xf
  io.tl_d_o.d_source := err_source
  io.tl_d_o.d_sink := 0.U
  io.tl_d_o.d_param := 0.U
  io.tl_d_o.d_size := err_size
  io.tl_d_o.d_opcode := Mux(err_opcode === TL_A_Opcode.get, TL_D_Opcode.accessAckData, TL_D_Opcode.accessAck)
  io.tl_d_o.d_error := true.B
}
