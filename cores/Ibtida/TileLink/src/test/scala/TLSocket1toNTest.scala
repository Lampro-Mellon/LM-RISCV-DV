package tilelink
import org.scalatest._
import chiseltest._
import chisel3._
import merl.uit.tilelink.{TLConfiguration, TLSocket1_N, TL_A_Opcode}

class TLSocket1toNTest extends FlatSpec with ChiselScalatestTester with Matchers {
  behavior of "TL-UL 1:N socket connecting single host with N devices"
  implicit val tl_conf = TLConfiguration()

  // Test Case: 1 (Devices = 2)
  it should "Connect host with device(0) when dev_sel = 0" in {
    test(new TLSocket1_N(2)) {c => {
      // Host sending a GET request
      c.io.tl_h_i.a_valid.poke(true.B)
      c.io.tl_h_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i.a_data.poke(0.U)
      c.io.tl_h_i.a_mask.poke("b1111".U)
      c.io.tl_h_i.a_address.poke(0.U)
      c.io.tl_h_i.a_source.poke(0.U)
      c.io.tl_h_i.a_size.poke(2.U)
      c.io.tl_h_i.a_param.poke(0.U)
      // Address Decoder selecting device 0
      c.io.dev_sel.poke(0.U)

      c.io.tl_d_o(0).a_valid.expect(true.B)
      c.io.tl_d_o(0).a_opcode.expect(TL_A_Opcode.get)
      c.io.tl_d_o(1).a_valid.expect(false.B)
      c.io.tl_h_o.d_error.expect(false.B)
    }}
  }

  // Test Case: 2 (Devices = 2)
  it should "Connect host with device(1) when dev_sel = 1" in {
    test(new TLSocket1_N(2)) {c => {
      // Host sending a GET request
      c.io.tl_h_i.a_valid.poke(true.B)
      c.io.tl_h_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i.a_data.poke(0.U)
      c.io.tl_h_i.a_mask.poke("b1111".U)
      c.io.tl_h_i.a_address.poke(0.U)
      c.io.tl_h_i.a_source.poke(0.U)
      c.io.tl_h_i.a_size.poke(2.U)
      c.io.tl_h_i.a_param.poke(0.U)
      // Address Decoder selecting device 1
      c.io.dev_sel.poke(1.U)

      c.io.tl_d_o(1).a_valid.expect(true.B)
      c.io.tl_d_o(1).a_opcode.expect(TL_A_Opcode.get)
      c.io.tl_d_o(0).a_valid.expect(false.B)
      c.io.tl_h_o.d_error.expect(false.B)
    }}
  }

  // Test Case: 3 (Devices = 2)
  it should "Connect host with error responder when dev_sel = 2" in {
    test(new TLSocket1_N(2)) {c => {
      // Host sending a GET request
      c.io.tl_h_i.a_valid.poke(true.B)
      c.io.tl_h_i.a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i.a_data.poke(0.U)
      c.io.tl_h_i.a_mask.poke("b1111".U)
      c.io.tl_h_i.a_address.poke(0.U)
      c.io.tl_h_i.a_source.poke(0.U)
      c.io.tl_h_i.a_size.poke(2.U)
      c.io.tl_h_i.a_param.poke(0.U)
      // Address Decoder selecting device 0
      c.io.dev_sel.poke(2.U)

      c.io.tl_d_o(0).a_valid.expect(false.B)
      c.io.tl_d_o(1).a_valid.expect(false.B)
      c.io.tl_h_o.d_error.expect(true.B)
    }}
  }
}
