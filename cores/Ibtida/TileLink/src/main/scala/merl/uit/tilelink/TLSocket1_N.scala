package merl.uit.tilelink

import chisel3._
import chisel3.util.{log2Ceil}

class TLSocket1_N(N: Int)(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    val tl_h_i = Flipped(new TL_H2D)
    val tl_h_o = new TL_D2H

    val tl_d_o = Vec(N, new TL_H2D)
    val tl_d_i = Flipped(Vec(N, new TL_D2H))

    val dev_sel = Input(UInt(log2Ceil(N+1).W))
  })

  // An intermediate bundle of wires for error responder
  // the tl_err_h_o takes the host input from tl_h_i and then will eventually send it to error responder
  val tl_err_h_o = Wire(new TL_H2D)
  // the tl_err_d_i takes the input from the error responder and sends it to the host output tl_h_o
  val tl_err_d_i = Wire(Flipped(new TL_D2H))

  // by default connecting the response with the error bundle
  // this would be connected with the correct device according to dev_sel
  // if dev_sel does not match any device than it will remain connected with this error bundle.
  io.tl_h_o <> tl_err_d_i

  for(i <- 0 until N) {
    io.tl_d_o(i).a_valid := io.tl_h_i.a_valid && (io.dev_sel === i.asUInt)
    io.tl_d_o(i).a_opcode := io.tl_h_i.a_opcode
    io.tl_d_o(i).a_param := io.tl_h_i.a_param
    io.tl_d_o(i).a_size := io.tl_h_i.a_size
    io.tl_d_o(i).a_source := io.tl_h_i.a_source
    io.tl_d_o(i).a_address := io.tl_h_i.a_address
    io.tl_d_o(i).a_mask := io.tl_h_i.a_mask
    io.tl_d_o(i).a_data := io.tl_h_i.a_data
    io.tl_d_o(i).d_ready := io.tl_h_i.d_ready

  }

  // looping over all the devices and seeing if dev_sel matches the device number
  for(id <- 0 until N) {
    // routing the ready signal of the device we are addressing with dev_sel
    // if dev_sel matches no devices then it means the dev_sel is out of range and
    // we connect it with the error responder device which will route an error
    when(io.dev_sel === id.asUInt) {
//      io.tl_h_o.a_ready := io.tl_h_i.a_valid && io.tl_d_i(id).a_ready
      io.tl_h_o.a_ready := io.tl_d_i(id).a_ready
      io.tl_h_o.d_valid := io.tl_d_i(id).d_valid
      io.tl_h_o.d_opcode := io.tl_d_i(id).d_opcode
      io.tl_h_o.d_param := io.tl_d_i(id).d_param
      io.tl_h_o.d_size := io.tl_d_i(id).d_size
      io.tl_h_o.d_source := io.tl_d_i(id).d_source
      io.tl_h_o.d_sink := io.tl_d_i(id).d_sink
      io.tl_h_o.d_data := io.tl_d_i(id).d_data
      io.tl_h_o.d_error := io.tl_d_i(id).d_error
    }
  }



  tl_err_h_o.a_valid := io.tl_h_i.a_valid && (io.dev_sel === N.asUInt)
  tl_err_h_o.a_opcode := io.tl_h_i.a_opcode
  tl_err_h_o.a_param := io.tl_h_i.a_param
  tl_err_h_o.a_size := io.tl_h_i.a_size
  tl_err_h_o.a_source := io.tl_h_i.a_source
  tl_err_h_o.a_address := io.tl_h_i.a_address
  tl_err_h_o.a_mask := io.tl_h_i.a_mask
  tl_err_h_o.a_data := io.tl_h_i.a_data
  tl_err_h_o.d_ready := io.tl_h_i.d_ready

  val tl_errResp = Module(new TL_ErrResp)
  tl_errResp.io.tl_h_i <> tl_err_h_o
  tl_err_d_i <> tl_errResp.io.tl_d_o
}
