package primitives
import chisel3._
import chisel3.util.{Cat, log2Ceil, log2Up}

/** @param
 *  width      -> fifo word width for each row
 *  pass       -> allows request to pass through empty fifo
 *  depth      -> total rows in the fifo
 *  depthWidth -> the bits required to hold depth
 */
class Fifo(width: Int = 16, pass: Boolean = true, depth: Int = 4, outputZeroIfEmpty: Boolean = true) extends Module {
  val io = IO(new Bundle {
    val clr_i = Input(Bool())   // clear the fifo if true
    // write port
    val wvalid_i = Input(Bool())  // data from producer is valid
    val wready_o = Output(Bool()) // is fifo ready to accept a write
    val wdata_i = Input(UInt(width.W))  // producer data to write into the fifo
    // read port
    val rvalid_o = Output(Bool()) // the data being sent out of fifo is valid
    val rready_i = Input(Bool())  // the consumer is ready to receive the data
    val rdata_o = Output(UInt(width.W)) // the fifo data out to the consumer
    // current status of the depth of FIFO
    val depth_o = Output(UInt())
  })

  if(pass && depth == 0) {
    require(depth == 0)
    io.depth_o := 0.U
    io.rvalid_o := io.wvalid_i
    io.rdata_o := io.wdata_i

    io.wready_o := io.rready_i

  } else {
    require(depth > 0)
    // Normal FIFO construction
    val PTRV_W = log2Up(depth)   // if depth = 1 -> PTRV_W = 1 (log2Ceil(1) would make it 0)
    val PTR_WIDTH = PTRV_W + 1
    val fifo_wptr, fifo_rptr = RegInit(0.U(PTR_WIDTH.W))
    val fifo_incr_wptr, fifo_incr_rptr, fifo_empty = Wire(Bool())
    val full, empty = Wire(Bool())
    val wptr_msb, rptr_msb = Wire(UInt(1.W))
    val wptr_value, rptr_value = Wire(UInt(PTRV_W.W))

    wptr_msb := fifo_wptr(PTR_WIDTH-1)
    rptr_msb := fifo_rptr(PTR_WIDTH-1)
    wptr_value := fifo_wptr(PTRV_W-1,0)
    rptr_value := fifo_rptr(PTRV_W-1,0)

    io.depth_o := Mux(full, depth.asUInt, Mux(wptr_msb === rptr_msb, wptr_value - rptr_value, depth.asUInt - rptr_value + wptr_value))
    fifo_incr_wptr := io.wvalid_i & io.wready_o   // producer giving valid data & FIFO ready to accept it then increase write pointer
    fifo_incr_rptr := io.rvalid_o & io.rready_i   // FIFO providing valid data to consumer & consumer ready to accept it then increase read pointer

    io.wready_o := ~full  // FIFO is ready to accept data if it is not empty
    io.rvalid_o := ~empty // FIFO producing valid data for consumer if it is not empty.


    when(io.clr_i) {
      fifo_wptr := 0.U(PTR_WIDTH.W)
    } .elsewhen(fifo_incr_wptr) {
      when(fifo_wptr(PTR_WIDTH-2,0) === (depth - 1).asUInt) {
        fifo_wptr := Cat(~fifo_wptr(PTR_WIDTH-1), 0.U((PTR_WIDTH-1).W))
      } .otherwise {
        fifo_wptr := fifo_wptr + Cat(0.U((PTR_WIDTH-1).W), 1.U(1.W))
      }
      // 16 depth
      // 5 PTR_WIDTH bits
      // wptr                   rptr
      // 00000                  00000
      // 00000 + 00001 = 00001  00000
      // 00001 + 00001 = 00010  00000
      // ....
      // 01111                  00001 ^ 10000 = 10001
      // 10000
      // 10000 + 00001
      // 10001 + 00001
      // 10010
      // ....
      // 11111
      // 00000
      // [3:0] == 15
    }

    when(io.clr_i) {
      fifo_rptr := 0.U(PTR_WIDTH.W)
    } .elsewhen(fifo_incr_rptr) {
      when(fifo_rptr(PTR_WIDTH-2) === (depth-1).asUInt) {
        fifo_rptr := Cat(~fifo_rptr(PTR_WIDTH-1), 0.U((PTR_WIDTH-1).W))
      } .otherwise {
        fifo_rptr := fifo_rptr + Cat(0.U((PTR_WIDTH-1).W), 1.U(1.W))
      }
    }

    full       := fifo_wptr === (fifo_rptr ^ Cat(1.U(1.W), 0.U((PTR_WIDTH-1).W)))
    // 00000 === 10000 ^ 10000 = 00000
    fifo_empty := fifo_wptr === fifo_rptr

    val storage = RegInit(VecInit(Seq.fill(depth)(0.U(width.W))))
    val storage_rdata = Wire(UInt(width.W))

    if(depth == 1) {
      storage_rdata := storage(0)
      when(fifo_incr_wptr) {
        storage(0) := io.wdata_i
      }
    } else {
      // fifo with more than one storage element
      storage_rdata := storage(fifo_rptr(PTR_WIDTH-2,0))
      when(fifo_incr_wptr) {
        storage(fifo_wptr(PTR_WIDTH-2,0)) := io.wdata_i
      }
    }

    val rdata_int = Wire(UInt(width.W))
    if (pass == true) {
      rdata_int := Mux(fifo_empty && io.wvalid_i, io.wdata_i, storage_rdata)
      empty := fifo_empty & ~io.wvalid_i
    } else {
      rdata_int := storage_rdata
      empty := fifo_empty
    }

    if (outputZeroIfEmpty) {
      io.rdata_o := Mux(empty, 0.U, rdata_int)
    } else {
      io.rdata_o := rdata_int
    }
  }

}
