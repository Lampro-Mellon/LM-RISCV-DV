package primitives
import chisel3._


class DataMem extends Module {
  val io = IO(new Bundle {
    val en_i = Input(Bool())   // active high memory enable
    val we_i = Input(Vec(4, Bool()))    // active high write enable which acts as a mask as well
    val addr_i = Input(UInt(6.W))
    val wdata_i = Input(Vec(4, UInt(8.W)))
    //val wmask_i = Input(Vec(4, Bool()))
    val rdata_o = Output(Vec(4, UInt(8.W)))
  })

  val mem = SyncReadMem(64, Vec(4, UInt(8.W)))
  when(io.en_i) {
    io.rdata_o := mem.read(io.addr_i)
    when(io.we_i.contains(true.B).asBool()) {
      mem.write(io.addr_i, io.wdata_i, io.we_i)
    }
  } .otherwise {
    io.rdata_o := DontCare
  }

//  when(io.en_i && io.we_i) {
//    mem.write(io.addr_i, io.wdata_i, io.wmask_i)
//    io.rdata_o := DontCare
//  } .elsewhen(!io.en_i && io.we_i) {
//    io.rdata_o := mem.read(io.addr_i)
//  } .otherwise {
//    io.rdata_o := DontCare
//  }

}