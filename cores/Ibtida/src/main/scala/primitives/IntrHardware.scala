package primitives
import chisel3._
import chisel3.util.Fill

class IntrHardware(width: Int = 1, flopOutput: Boolean = true) extends Module {
  val io = IO(new Bundle {
    val event_intr_i = Input(UInt(width.W))
    val reg2hw_intr_enable_q_i = Input(UInt(width.W))
    val reg2hw_intr_test_q_i = Input(UInt(width.W))
    val reg2hw_intr_test_qe_i = Input(Bool())
    val reg2hw_intr_state_q_i = Input(UInt(width.W))

    val hw2reg_intr_state_de_o = Output(Bool())
    val hw2reg_intr_state_d_o = Output(UInt(width.W))

    val intr_o = Output(UInt(width.W))
  })

  // generating an event if software writes to INTR_TEST register as well as peripheral logic
  // is generating an event
  // Replicating qe from software for all the q bits and ANDing it with q to see which
  // events are triggered through software.
  val new_event = Wire(UInt(width.W))
  new_event := Fill(width, io.reg2hw_intr_test_qe_i) & io.reg2hw_intr_test_q_i | io.event_intr_i
  io.hw2reg_intr_state_de_o := new_event.orR()
  io.hw2reg_intr_state_d_o := new_event | io.reg2hw_intr_state_q_i

  if (flopOutput) {
    val reg = RegInit(0.U(width.W))
    reg := io.reg2hw_intr_state_q_i & io.reg2hw_intr_enable_q_i
    io.intr_o := reg
  } else {
    io.intr_o := io.reg2hw_intr_state_q_i & io.reg2hw_intr_enable_q_i
  }



}
