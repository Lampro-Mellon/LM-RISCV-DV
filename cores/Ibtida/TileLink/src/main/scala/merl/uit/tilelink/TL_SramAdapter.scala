package merl.uit.tilelink
import chisel3._
import chisel3.util.{Cat, Enum, Fill, log2Ceil}

class TL_SramAdapter(sramAw: Int, sramDw: Int, forFetch: Bool = false.B)(implicit val conf: TLConfiguration) extends Module {
  val io = IO(new Bundle {
    // TL-UL interface
    val tl_i = Flipped(new TL_H2D())
    val tl_o = new TL_D2H()
    // SRAM interface
    val we_o = Output(Vec(conf.TL_DBW, Bool()))
    val addr_o = Output(UInt(sramAw.W))
    val wdata_o = Output(UInt(sramDw.W))
    //val wmask_o = Output(Vec(conf.TL_DBW, Bool()))
    val rdata_i = Input(UInt(sramDw.W))
    //val rerror_i = Input(UInt(2.W))
  })

  val a_ack = Wire(Bool())
  val d_ack = Wire(Bool())
  // reading data received from DCCM
  val rdata = Wire(UInt(sramDw.W))
  // reading data received from ICCM
  // separate wires because for fetch we cannot wait for valid
  // and stall the pipeline so we directly receive the data and
  // pass it to the tilelink response bus.
  val rdata_fetch = Wire(UInt(sramDw.W))
  rdata_fetch := io.rdata_i
  val error = RegInit(0.U(1.W))

  val err_internal = Wire(Bool())
  val addr_align_err = Wire(Bool())
  val tl_err = Wire(Bool())

  val reqId = RegInit(0.U(conf.TL_AIW.W))
  val reqSz = RegInit(0.U(conf.TL_SZW.W))
  val respOp = RegInit(TL_D_Opcode.accessAck)

  val rd_req = Wire(Bool())
  val wr_req = Wire(Bool())

  val outstanding = RegInit(0.U(1.W))


  a_ack := io.tl_i.a_valid && io.tl_o.a_ready
  d_ack := io.tl_o.d_valid && io.tl_i.d_ready

  wr_req := a_ack && ((io.tl_i.a_opcode === TL_A_Opcode.putFullData) || (io.tl_i.a_opcode === TL_A_Opcode.putPartialData))
  rd_req := a_ack && (io.tl_i.a_opcode === TL_A_Opcode.get)

 // io.we_o := wr_req && !err_internal
//  io.addr_o := Cat(io.tl_i.a_address(sramAw-1, 2), 0.U(2.W)) // word aligned address
  io.addr_o := io.tl_i.a_address >> 2
  io.wdata_o := io.tl_i.a_data


  when(wr_req && !err_internal) {
    for(i <- 0 until conf.TL_DBW) {
      io.we_o(i) := io.tl_i.a_mask(i).asBool()
    }
  } .otherwise {
    for(i <- 0 until conf.TL_DBW) {
      io.we_o(i) := false.B
    }
  }

  when(a_ack) {
    outstanding := 1.U
    reqId := io.tl_i.a_source
    reqSz := io.tl_i.a_size
    respOp := Mux(rd_req, TL_D_Opcode.accessAckData, TL_D_Opcode.accessAck)
    error := err_internal
  } .elsewhen(d_ack) {
    outstanding := 0.U
  }

  when(outstanding.asBool()) {
    rdata := Mux(error.asBool(), Fill(sramDw, 1.U), io.rdata_i)  // return all 1111s if err_internal = true
  } .otherwise {
    rdata := 0.U
  }

  io.tl_o.a_ready := Mux(forFetch, true.B, !outstanding)
  io.tl_o.d_valid := outstanding
  io.tl_o.d_opcode := respOp
  io.tl_o.d_param := 0.U
  io.tl_o.d_size := reqSz
  io.tl_o.d_source := reqId
  io.tl_o.d_sink := 0.U
  io.tl_o.d_data := Mux(forFetch, rdata_fetch, rdata)
  io.tl_o.d_error := error

  err_internal := addr_align_err | tl_err

  when(wr_req) {
    addr_align_err := io.tl_i.a_address(1,0).orR
  } .otherwise {
    addr_align_err := false.B
  }

  // separate tl_err checker which checks the address, size and mask correspondence according to the spec.
  val tlErr = Module(new TL_Err)
  tlErr.io.tl_i := io.tl_i
  tl_err := tlErr.io.err_o

}
