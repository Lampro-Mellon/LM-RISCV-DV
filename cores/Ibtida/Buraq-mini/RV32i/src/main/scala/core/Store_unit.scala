package core
import chisel3._
import chisel3.util.Cat
import chisel3.util.Fill
class Store_unit extends Module
{
    val io=IO(new Bundle{
        val func3 = Input(UInt(3.W))
        val MemWrite= Input(UInt(1.W))
        val Rs2  = Input(SInt(32.W))
        val StoreData = Output(SInt(32.W))
})

        val sh = io.Rs2(15,0)
        val sb = io.Rs2(7,0)
        val zero = 0.U
    when(io.func3 === "b001".U && io.MemWrite === 1.U)
    {
        io.StoreData := Cat(Fill(16,zero),sh).asSInt
    }
    .elsewhen(io.func3 === "b000".U && io.MemWrite === 1.U)
    {
         io.StoreData := Cat(Fill(24,zero),sb).asSInt
    }
    .otherwise
    {
         io.StoreData := io.Rs2
    }
    
    
}