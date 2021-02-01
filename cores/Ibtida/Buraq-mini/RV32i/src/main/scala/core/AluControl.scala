package core

import chisel3._
import chisel3.util._
import chisel3.util.Cat
import common._

class AluControl extends Module {
    val io = IO(new Bundle {
       // val M_extension = Input(UInt(1.W))
        val aluOp = Input(UInt(4.W))
        val func7 = Input(UInt(7.W))
        val func3 = Input(UInt(3.W))
        val output = Output(UInt(5.W))        
    })

    val AluOP = new ALU_operations_Sel( io.func3, io.func7, io.aluOp)
    
    when(AluOP.ADD || AluOP.ADDI || AluOP.SW || AluOP.SB || AluOP.SH || AluOP.LW || AluOP.LB || AluOP.LH || AluOP.LBU || AluOP.LHU || AluOP.LWU || AluOP.LUI || AluOP.AUIPC) 
    { io.output := 0.U}
    .elsewhen(AluOP.SLL || AluOP.SLLI) { io.output := 1.U}
    .elsewhen(AluOP.SLT || AluOP.SLTI) { io.output := 2.U}
    .elsewhen(AluOP.SLTU|| AluOP.SLTIU || AluOP.BLTU) { io.output := 3.U}
    .elsewhen(AluOP.XOR || AluOP.XORI) { io.output := 4.U}
    .elsewhen(AluOP.SRL || AluOP.SRLI || AluOP.SRA || AluOP.SRAI) { io.output := 5.U}
    .elsewhen(AluOP.OR  || AluOP.ORI)  { io.output := 6.U}
    .elsewhen(AluOP.AND || AluOP.ANDI) { io.output := 7.U}
    .elsewhen(AluOP.SUB) { io.output := 8.U}
    .elsewhen(AluOP.BEQ) { io.output := 16.U}
    .elsewhen(AluOP.BNE) { io.output := 17.U}
    .elsewhen(AluOP.BLT) { io.output := 20.U}
    .elsewhen(AluOP.BGE) { io.output := 21.U}
    .elsewhen(AluOP.BGEU){ io.output := 23.U}
    .elsewhen(AluOP.JAL || AluOP.JALR || AluOP.CSRRW || AluOP.CSRRS || AluOP.CSRRC || AluOP.CSRRWI || AluOP.CSRRSI || AluOP.CSRRCI) { io.output := 31.U}  //making the ALU pass operand a on output
    .elsewhen(AluOP.MUL) { io.output := 30.U}
    .elsewhen(AluOP.DIV) { io.output := 29.U}
    .elsewhen(AluOP.DIVU){ io.output := 27.U}
    .elsewhen(AluOP.REM) { io.output := 26.U}
    .elsewhen(AluOP.REMU){ io.output := 25.U}
    .elsewhen(AluOP.MULH){ io.output := 24.U}
    .elsewhen(AluOP.MULHSU) { io.output := 19.U}
    .elsewhen(AluOP.MULHU) { io.output := 18.U}
    .otherwise { io.output := DontCare}

}