package core
import chisel3._
import chisel3.util.Cat
import chisel3.util.Fill
class Load_unit extends Module {
    val io=IO(new Bundle{
        val func3 = Input(UInt(3.W))
        val en = Input(Bool())
        val data_offset = Input(UInt(2.W))
        val memData  = Input(SInt(32.W))
        val LoadData = Output(SInt(32.W))
})
    val lb = io.memData(7,0)
    val lh = io.memData(15,0)
    val zero = 0.U

    /** Visualize memory as follows
     *      11          10        9         8  -> address
     * | d[31:24] | d[23:16] | d[15:8] | d[7:0] |
     *      7           6         5         4  -> address
     * | d[31:24] | d[23:16] | d[15:8] | d[7:0] |
     *      3           2         1         0  -> address
     * | d[31:24] | d[23:16] | d[15:8] | d[7:0] |  */

    when(io.en) {
        when(io.func3 === "b000".U) {
            // load byte
            when(io.data_offset === "b00".U) {
                // addressing memory with 0,4,8...
                io.LoadData := Cat(Fill(24,io.memData(7)),io.memData(7,0)).asSInt
            } .elsewhen(io.data_offset === "b01".U) {
                // addressing memory with 1,5,9...
                io.LoadData := Cat(Fill(24, io.memData(15)),io.memData(15,8)).asSInt()
            } .elsewhen(io.data_offset === "b10".U) {
                // addressing memory with 2,6,10...
                io.LoadData := Cat(Fill(24, io.memData(23)),io.memData(23,16)).asSInt()
            } .elsewhen(io.data_offset === "b11".U) {
                // addressing memory with 3,7,11...
                io.LoadData := Cat(Fill(24, io.memData(31)),io.memData(31,24)).asSInt()
            } .otherwise {
                // this condition would never occur but using to avoid Chisel generating VOID errors
                io.LoadData := DontCare
            }
        } .elsewhen(io.func3 === "b001".U) {
            // load halfword
            when(io.data_offset === "b00".U) {
                // addressing memory with 0,4,8...
                io.LoadData := Cat(Fill(16,io.memData(15)),io.memData(15,0)).asSInt
            } .elsewhen(io.data_offset === "b01".U) {
                // addressing memory with 1,5,9...
                io.LoadData := Cat(Fill(16, io.memData(23)),io.memData(23,8)).asSInt()
            } .elsewhen(io.data_offset === "b10".U) {
                // addressing memory with 2,6,10...
                io.LoadData := Cat(Fill(16, io.memData(31)),io.memData(31,16)).asSInt()
            } .elsewhen(io.data_offset === "b11".U) {
                // addressing memory with 3,7,11...
                /** xxxxxxxxxxx ADDRESS MIS-ALIGNMENT ALERT xxxxxxxxx */
                // TODO: Stop such misaligned addresses from the software ide.
                // this is misaligned access because we want to read two bytes and addressing
                // the memory in this location gives us just a byte. Right now we don't handle
                // such mis-alignments and just read the byte and sign extend it with 000s
                // to ignore the other byte that must have been read from the next memory row.
                io.LoadData := Cat(Fill(24, 0.U),io.memData(31,24)).asSInt()
            } .otherwise {
                // this condition would never occur but using to avoid Chisel generating VOID errors
                io.LoadData := DontCare
            }
        } .elsewhen(io.func3 === "b110".U) {
            //  load word unsigned
            /** TODO: Figure out whether this instruction is supported by the RISC-V Spec or not and then implement the functionality
             *  The RISC-V Green Card shows this instruction as "lwu"
             *  But cannot find it in the RISC-V spec and Venus does not support it as well */
            io.LoadData := io.memData
        } .elsewhen(io.func3 === "b100".U) {
            // load byte unsigned (LBU)
            when(io.data_offset === "b00".U) {
                // addressing memory with 0,4,8...
                io.LoadData := Cat(Fill(24,0.U),io.memData(7,0)).asSInt
            } .elsewhen(io.data_offset === "b01".U) {
                // addressing memory with 1,5,9...
                io.LoadData := Cat(Fill(24, 0.U),io.memData(15,8)).asSInt()
            } .elsewhen(io.data_offset === "b10".U) {
                // addressing memory with 2,6,10...
                io.LoadData := Cat(Fill(24, 0.U),io.memData(23,16)).asSInt()
            } .elsewhen(io.data_offset === "b11".U) {
                // addressing memory with 3,7,11...
                io.LoadData := Cat(Fill(24, 0.U),io.memData(31,24)).asSInt()
            } .otherwise {
                // this condition would never occur but using to avoid Chisel generating VOID errors
                io.LoadData := DontCare
            }
        } .elsewhen(io.func3 === "b101".U) {
            // load halfword unsigned
            when(io.data_offset === "b00".U) {
                // addressing memory with 0,4,8...
                io.LoadData := Cat(Fill(16, 0.U),io.memData(15,0)).asSInt
            } .elsewhen(io.data_offset === "b01".U) {
                // addressing memory with 1,5,9...
                io.LoadData := Cat(Fill(16, 0.U),io.memData(23,8)).asSInt()
            } .elsewhen(io.data_offset === "b10".U) {
                // addressing memory with 2,6,10...
                io.LoadData := Cat(Fill(16, 0.U),io.memData(31,16)).asSInt()
            } .elsewhen(io.data_offset === "b11".U) {
                // addressing memory with 3,7,11...
                /** xxxxxxxxxxx ADDRESS MIS-ALIGNMENT ALERT xxxxxxxxx */
                // TODO: Stop such misaligned addresses from the software ide.
                // this is misaligned access because we want to read two bytes and addressing
                // the memory in this location gives us just a byte. Right now we don't handle
                // such mis-alignments and just read the byte and sign extend it with 000s
                // to ignore the other byte that must have been read from the next memory row.
                io.LoadData := Cat(Fill(24, 0.U),io.memData(31,24)).asSInt()
            } .otherwise {
                // this condition would never occur but using to avoid Chisel generating VOID errors
                io.LoadData := DontCare
            }
        } .elsewhen(io.func3 === "b010".U) {
            // load word
            when(io.data_offset === "b00".U) {
                // addressing memory with 0,4,8...
                io.LoadData := io.memData(31,0).asSInt()
            } .elsewhen(io.data_offset === "b01".U) {
                // addressing memory with 1,5,9...
                /** xxxxxxxxxxx ADDRESS MIS-ALIGNMENT ALERT xxxxxxxxx */
                // TODO: Stop such misaligned addresses from the software ide.
                // this is misaligned access because we want to read full word and addressing
                // the memory in this location would at max give us three bytes and the fourth
                // one would need to be read from the next memory row. Right now we don't handle
                // such mis-alignments and just read the available three bytes with sign extending
                // the 000s for the remaining fourth byte.
                io.LoadData := Cat(Fill(8, 0.U),io.memData(31,8)).asSInt()
            } .elsewhen(io.data_offset === "b10".U) {
                // addressing memory with 2,6,10...
                /** xxxxxxxxxxx ADDRESS MIS-ALIGNMENT ALERT xxxxxxxxx */
                // TODO: Stop such misaligned addresses from the software ide.
                // another misaligned access because now we have just two bytes available to be read.
                // just reading the two bytes and sign extending the other two bytes with 000s.
                io.LoadData := Cat(Fill(16, 0.U),io.memData(31,16)).asSInt()
            } .elsewhen(io.data_offset === "b11".U) {
                // addressing memory with 3,7,11...
                /** xxxxxxxxxxx ADDRESS MIS-ALIGNMENT ALERT xxxxxxxxx */
                // TODO: Stop such misaligned addresses from the software ide.
                // another misaligned access because now we have just one byte available to be read.
                // just reading the one byte and sign extending the other three bytes with 000s.
                io.LoadData := Cat(Fill(24, 0.U), io.memData(31,24)).asSInt()
            } .otherwise {
                // this condition would never occur but using to avoid Chisel generating VOID errors
                io.LoadData := DontCare
            }
        } .otherwise {
            // unknown func3 bits
            io.LoadData := DontCare
        }
    } .otherwise {
        io.LoadData := DontCare
    }

    
}