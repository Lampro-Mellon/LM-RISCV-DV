package primitives
import chisel3._
import chisel3.util.Fill


class SubReg(DW: Int = 32, SWACCESS: String = "RW")(RESVAL: UInt = 0.U(DW.W)) extends Module {
  val io = IO(new Bundle {
    // From software
    val we = Input(Bool())  // Indicates the software wants to write in the register
    val wd = Input(UInt(DW.W))  // The data software wants to write
    // From hardware
    val de = Input(Bool())  // Indicates the peripheral logic wants to write in the register
    val d = Input(UInt(DW.W)) // The data peripheral logic wants to write
    // To hardware and software reads
    val qe = Output(Bool()) // Indicates the peripheral logic that software has written in register
    val q = Output(UInt(DW.W))  // Output of data in the register for peripheral logic
    val qs = Output(UInt(DW.W)) // Output of data in the register for software read
  })

  val wr_en = Wire(Bool())
  val wr_data = Wire(UInt(DW.W))

  val qe_reg = RegInit(false.B)
  val q_reg = RegInit(RESVAL)

  if((SWACCESS == "RW") || (SWACCESS == "WO")) {
    wr_en := io.we || io.de
    wr_data := Mux(io.we, io.wd, io.d)
  } else if(SWACCESS == "RO") {
    wr_en := io.de
    wr_data := io.d
  } else if(SWACCESS == "W1C") {
    wr_en := io.we || io.de
    wr_data := Mux(io.de, io.d, q_reg) & Mux(io.we, ~io.wd, Fill(DW, 1.U))
  } else if(SWACCESS == "W0C") {
    wr_en := io.we || io.de
    wr_data := Mux(io.de, io.d, q_reg) & Mux(io.we, io.wd, Fill(DW, 1.U))
  } else if(SWACCESS == "W1S") {
    wr_en := io.we || io.de
    wr_data := Mux(io.de, io.d, q_reg) | Mux(io.we, io.wd, Fill(DW, 0.U))
  } else {
    wr_en := io.de
    wr_data := io.d
  }

  qe_reg := io.we
  when(wr_en) {
    q_reg := wr_data
  }

  io.qs := q_reg
  io.q := q_reg
  io.qe := qe_reg
}
