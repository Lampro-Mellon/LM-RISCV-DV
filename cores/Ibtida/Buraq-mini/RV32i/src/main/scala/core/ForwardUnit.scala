package core

import chisel3._

class ForwardUnit extends Module {
    val io = IO(new Bundle {
        val EX_MEM_REGRD = Input(UInt(5.W))
        val MEM_WB_REGRD = Input(UInt(5.W))
        val ID_EX_REGRS1 = Input(UInt(5.W))
        val ID_EX_REGRS2 = Input(UInt(5.W))
        val ID_EX_inst_op = Input(UInt(7.W))
        val EX_MEM_REGWR = Input(UInt(1.W))
        val MEM_WB_REGWR = Input(UInt(1.W))
        val forward_a    = Output(UInt(2.W))
        val forward_b    = Output(UInt(2.W))
    })
    io.forward_a := "b00".U
    io.forward_b := "b00".U

    // EX HAZARD

    // additional checking by opcode 0110111 because this is lui and it does not have any rs1, rs2 so we will not forward in that scenario
    when(io.EX_MEM_REGWR === "b1".U && io.EX_MEM_REGRD =/= "b00000".U && (io.EX_MEM_REGRD === io.ID_EX_REGRS1) && (io.EX_MEM_REGRD === io.ID_EX_REGRS2) && io.ID_EX_inst_op =/= "b0110111".U) {
        // if both the source register 1 and source register 2 are dependent on the destination
        // register of previous instruction we forward the destination register value
        // in both the operands of ALU for example: addi x2, x0, 2
        //                                          add x2, x2, x2

        io.forward_a := "b01".U
        io.forward_b := "b01".U
    } .elsewhen(io.EX_MEM_REGWR === "b1".U && io.EX_MEM_REGRD =/= "b00000".U && (io.EX_MEM_REGRD === io.ID_EX_REGRS2) && io.ID_EX_inst_op =/= "b0110111".U) {
        io.forward_b := "b01".U
        //io.forward_a := "b00".U
    } .elsewhen(io.EX_MEM_REGWR === "b1".U && io.EX_MEM_REGRD =/= "b00000".U && (io.EX_MEM_REGRD === io.ID_EX_REGRS1) && io.ID_EX_inst_op =/= "b0110111".U) {
        io.forward_a := "b01".U
       // io.forward_b := "b00".U
    }


    // MEM HAZARD

    when(io.MEM_WB_REGWR === "b1".U && io.MEM_WB_REGRD =/= "b00000".U && ~((io.EX_MEM_REGWR === "b1".U) && (io.EX_MEM_REGRD =/= "b00000".U) && (io.EX_MEM_REGRD === io.ID_EX_REGRS1) && (io.EX_MEM_REGRD === io.ID_EX_REGRS2)) && (io.MEM_WB_REGRD === io.ID_EX_REGRS1) && (io.MEM_WB_REGRD === io.ID_EX_REGRS2) && io.ID_EX_inst_op =/= "b0110111".U) {
        io.forward_a := "b10".U
        io.forward_b := "b10".U
    } .elsewhen(io.MEM_WB_REGWR === "b1".U && io.MEM_WB_REGRD =/= "b00000".U && ~((io.EX_MEM_REGWR === "b1".U) && (io.EX_MEM_REGRD =/= "b00000".U) && (io.EX_MEM_REGRD === io.ID_EX_REGRS2)) && (io.MEM_WB_REGRD === io.ID_EX_REGRS2) && io.ID_EX_inst_op =/= "b0110111".U) {
        io.forward_b := "b10".U
        //io.forward_a := "b00".U
    } .elsewhen(io.MEM_WB_REGWR === "b1".U && io.MEM_WB_REGRD =/= "b00000".U && ~((io.EX_MEM_REGWR === "b1".U) && (io.EX_MEM_REGRD =/= "b00000".U) && (io.EX_MEM_REGRD === io.ID_EX_REGRS1))  && (io.MEM_WB_REGRD === io.ID_EX_REGRS1) && io.ID_EX_inst_op =/= "b0110111".U) {
        io.forward_a := "b10".U
       // io.forward_b := "b00".U
    }

}
