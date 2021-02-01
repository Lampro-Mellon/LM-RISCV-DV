import chisel3._
import chisel3.util._
//port chisel3.experimental._
import java.awt.event.InputEvent
import scala.util.matching.Regex
import scala.collection.script.Reset
//import chisel3.stage.ChiselStage


class Fetch_fifo extends Module
{
  
    val io = IO(new Bundle{
        val clear_i = Input(Bool())
 //     val rst_ni  = Input(Bool())

        val in_valid_i = Input(Bool())
        val in_addr_i  = Input(UInt(32.W))
        val in_rdata_i = Input(UInt(32.W))
        val in_err_i   = Input(Bool())
        val out_ready_i= Input(Bool())

        val busy_o      = Output(UInt(2.W))

        val out_valid_o = Output(Bool())
        val out_addr_o  = Output(UInt(32.W))
        val out_addr_next_o = Output(UInt(32.W))
        val out_rdata_o = Output(UInt(32.W))
        val out_err_o   = Output(Bool())
        val out_err_plus2 = Output(Bool())
    }) 
  
    val NUM_REQS = 2
    val DEPTH = NUM_REQS + 1

    val rdata_d = Wire(Vec(3,UInt(32.W)))
    val rdata_q = RegInit(VecInit(Seq.fill(3)(0.U(32.W))))

    
    val err_d   = Wire(Vec(DEPTH,Bool()))
    val err_q   = RegInit(VecInit(Seq.fill(3)(0.U(1.W))))
        
  
    val valid_d = Wire(Vec(DEPTH,Bool()))
    val valid_q = RegInit(VecInit(Seq.fill(3)(0.U(1.W))))
        
    val lowest_free_entry = Wire(Vec(DEPTH,Bool()))
    val valid_pushed, valid_popped = Wire(Vec(DEPTH,Bool()))

    val entry_en = Wire(Vec(DEPTH,Bool()))

    val pop_fifo = Wire(Bool())
    val rdata, rdata_unaligned = Wire(UInt(32.W))
    val err, err_unaligned, err_plus2 = Wire(Bool())
    val valid, valid_unaligned = Wire(Bool())
    val aligned_is_compressed, unaligned_is_compressed = Wire(Bool())
    val addr_incr_two = Wire(Bool())
    val instr_addr_next = Wire(UInt(32.W))
    
    val instr_addr_d = Wire(UInt(32.W))
    val instr_addr_q = RegInit(0.U(32.W))

    val instr_addr_en = Wire(Bool())
    val unused_addr_in = Wire(Bool())

    //***********Output Port***********//

    rdata := Mux(valid_q(0).asBool(), rdata_q(0).asUInt, io.in_rdata_i)
    err   := Mux(valid_q(0).asBool(), err_q(0).asBool(), io.in_err_i)
    valid := (valid_q(0) | io.in_valid_i).asBool()

    val rdq = Wire(UInt(16.W))
    rdq := rdata_q(1).asUInt


    rdata_unaligned := Mux(valid_q(1).asBool(), Cat(rdq.asUInt, rdata(31,16)), Cat(io.in_rdata_i(15,0), rdata(31,16)))

    err_unaligned := Mux(valid_q(1).asBool(), ((err_q(1) & ~unaligned_is_compressed) | err_q(0)).asBool() , ((valid_q(0) & err_q(0)) | (io.in_err_i & (~valid_q(0) | ~unaligned_is_compressed))).asBool())

    err_plus2 := Mux(valid_q(1).asBool(), (err_q(1) & ~err_q(1)).asBool(),( io.in_err_i & valid_q(0) & ~err_q(0)).asBool())

    valid_unaligned := Mux(valid_q(1).asBool(), true.B , (valid_q(0) & io.in_valid_i).asBool())

    unaligned_is_compressed := (rdata(17,16) =/= "b11".U) | err
    aligned_is_compressed   := (rdata(1,0) =/= "b11".U) & ~err

    //************* instruction aligner************//

    when(io.out_addr_o(1).asBool()=== true.B)
    {
        io.out_rdata_o := rdata_unaligned
        io.out_err_o   := err_unaligned
        io.out_err_plus2 := err_plus2
        when(unaligned_is_compressed === true.B)
        {
            io.out_valid_o := valid
        }
        .otherwise
        {
            io.out_valid_o := valid_unaligned
        }
    }
    .otherwise
    {
        io.out_rdata_o := rdata
        io.out_err_o   := err
        io.out_err_plus2 := "b0".U
        io.out_valid_o := valid
    }
    
    //*************** instruuction address***********//

    instr_addr_en := io.clear_i | (io.out_ready_i & io.out_valid_o)

    addr_incr_two := Mux(instr_addr_q(1).asBool(), unaligned_is_compressed, aligned_is_compressed)

    instr_addr_next:= instr_addr_q(31,1) + Cat("b0".U(29.W), ~addr_incr_two, addr_incr_two)

    instr_addr_d := Mux(io.clear_i, io.in_addr_i(31,1), instr_addr_next)

    when(instr_addr_en)
    {
        instr_addr_q := instr_addr_d.asUInt
    }
    .otherwise
    {
        instr_addr_q := DontCare
    }

    io.out_addr_next_o := Cat(instr_addr_next, "b1".U)
    io.out_addr_o      := Cat(instr_addr_q, "b1".U)

    unused_addr_in     := io.in_addr_i(0)

    //************ Fifo status************//
    val busy0 = Wire(UInt(1.W))
    val busy1 = Wire(UInt(1.W))
    busy0 := valid_q(1)
    busy1 := valid_q(2)
    io.busy_o := Cat(busy1,busy0)
    
    //****************Fifo Managemnet***********//

    pop_fifo := io.out_ready_i & io.out_valid_o & (~aligned_is_compressed | io.out_addr_o(1))

    for(i <- 0 to DEPTH-2)
    {
        when(i.asUInt === 0.U)
        {
            lowest_free_entry(i)  :=  ~valid_q(i).asBool()
        }
        .otherwise
        {
            lowest_free_entry(i)  := ~valid_q(i).asBool() & valid_q(0).asBool()
        }

        valid_pushed(i) := (io.in_valid_i & lowest_free_entry(i)) | valid_q(i)

        valid_popped(i) := Mux(pop_fifo, valid_pushed(i+1), valid_pushed(i))

        valid_d(i) := valid_popped(i) & ~io.clear_i

        entry_en(i).asUInt:= (valid_pushed(i+1) & pop_fifo) | (io.in_valid_i & lowest_free_entry(i) & ~pop_fifo)
        
        rdata_d(i).asUInt := Mux(valid_q(i+1).asBool(), rdata_q(i+1).asUInt, io.in_rdata_i.asUInt)

        err_d(i)    := Mux(valid_q(i+1).asBool(), err_q(i+1).asUInt, io.in_err_i.asUInt)
    }

    lowest_free_entry(DEPTH-1).asUInt := ~valid_q(DEPTH-1).asUInt & valid_q(DEPTH-2).asUInt
    valid_pushed(DEPTH-1).asUInt      := (valid_q(DEPTH-1) | (io.in_valid_i & lowest_free_entry(DEPTH-1))).asBool()
    valid_popped(DEPTH-1).asUInt      := Mux(pop_fifo, "b0".U, valid_pushed(DEPTH-1))
    valid_d(DEPTH-1).asUInt           := valid_popped(DEPTH-1).asUInt & ~io.clear_i
    entry_en(DEPTH-1).asUInt          := io.in_valid_i & lowest_free_entry(DEPTH-1)
    rdata_d(DEPTH-1)                  := io.in_rdata_i
    err_d(DEPTH-1).asUInt             := io.in_err_i


    //*****************Fifo registers*****************//

    when(reset.asBool())
  {
    valid_q := valid_d
  }
  .otherwise
  {
    valid_q := DontCare
  }
  
    for(i <- 0 to DEPTH-2)
    {
        when(entry_en(i).asBool())
        {
            rdata_q(i) := rdata_d(i)
            err_q(i)   := err_d(i)
        }
        .otherwise
        {
            rdata_q(i) := DontCare
            err_q(i)   := DontCare
        }
    }
    
}



//println((new ChiselStage).emitVerilog(new Fetch_fifo))