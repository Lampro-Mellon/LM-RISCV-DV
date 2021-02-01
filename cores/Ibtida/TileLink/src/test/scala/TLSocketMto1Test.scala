package tilelink
import org.scalatest._
import chiseltest._
import chisel3._
import merl.uit.tilelink.{TLConfiguration, TLSocketM_1, TL_A_Opcode}

class TLSocketMto1Test extends FlatSpec with ChiselScalatestTester with Matchers {
  behavior of "TL-UL M:1 socket connecting M hosts with a single device"
  implicit val tl_conf = TLConfiguration()
  // Test Case: 1
  it should "Connect host(0) with the device when host(1) is not accessing bus" in {
    test(new TLSocketM_1(2)) {c => {
      // Host 1 sending a GET
      c.io.tl_h_i(0).a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i(0).a_valid.poke(true.B)
      c.io.tl_h_i(0).a_param.poke(0.U)
      c.io.tl_h_i(0).a_size.poke(2.U)
      c.io.tl_h_i(0).a_source.poke(0.U)
      c.io.tl_h_i(0).a_address.poke(0.U)
      c.io.tl_h_i(0).a_mask.poke("b1111".U)
      c.io.tl_h_i(0).a_data.poke(0.U)

      // Host 2 sending a PUT
      c.io.tl_h_i(1).a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_h_i(1).a_valid.poke(false.B)
      c.io.tl_h_i(1).a_param.poke(0.U)
      c.io.tl_h_i(1).a_size.poke(2.U)
      c.io.tl_h_i(1).a_source.poke(0.U)
      c.io.tl_h_i(1).a_address.poke(0.U)
      c.io.tl_h_i(1).a_mask.poke("b1111".U)
      c.io.tl_h_i(1).a_data.poke(10.U)

      c.io.tl_d_o.a_opcode.expect(TL_A_Opcode.get)
      c.io.tl_d_o.a_data.expect(0.U)
    }}
  }
  // Test Case: 2
  it should "Connect host(1) with the device when host(0) is not accessing bus" in {
    test(new TLSocketM_1(2)) {c => {
      // Host 1 sending a GET
      c.io.tl_h_i(0).a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i(0).a_valid.poke(false.B)
      c.io.tl_h_i(0).a_param.poke(0.U)
      c.io.tl_h_i(0).a_size.poke(2.U)
      c.io.tl_h_i(0).a_source.poke(0.U)
      c.io.tl_h_i(0).a_address.poke(0.U)
      c.io.tl_h_i(0).a_mask.poke("b1111".U)
      c.io.tl_h_i(0).a_data.poke(0.U)

      // Host 2 sending a PUT
      c.io.tl_h_i(1).a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_h_i(1).a_valid.poke(true.B)
      c.io.tl_h_i(1).a_param.poke(0.U)
      c.io.tl_h_i(1).a_size.poke(2.U)
      c.io.tl_h_i(1).a_source.poke(0.U)
      c.io.tl_h_i(1).a_address.poke(0.U)
      c.io.tl_h_i(1).a_mask.poke("b1111".U)
      c.io.tl_h_i(1).a_data.poke(10.U)

      c.io.tl_d_o.a_opcode.expect(TL_A_Opcode.putFullData)
      c.io.tl_d_o.a_data.expect(10.U)
    }}
  }
  // Test Case: 3
  it should "Connect host(0) with the device even when host(1) is accessing bus" in {
    test(new TLSocketM_1(2)) {c => {
      // Host 1 sending a GET
      c.io.tl_h_i(0).a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i(0).a_valid.poke(true.B)
      c.io.tl_h_i(0).a_param.poke(0.U)
      c.io.tl_h_i(0).a_size.poke(2.U)
      c.io.tl_h_i(0).a_source.poke(0.U)
      c.io.tl_h_i(0).a_address.poke(0.U)
      c.io.tl_h_i(0).a_mask.poke("b1111".U)
      c.io.tl_h_i(0).a_data.poke(0.U)

      // Host 2 sending a PUT
      c.io.tl_h_i(1).a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_h_i(1).a_valid.poke(true.B)
      c.io.tl_h_i(1).a_param.poke(0.U)
      c.io.tl_h_i(1).a_size.poke(2.U)
      c.io.tl_h_i(1).a_source.poke(0.U)
      c.io.tl_h_i(1).a_address.poke(0.U)
      c.io.tl_h_i(1).a_mask.poke("b1111".U)
      c.io.tl_h_i(1).a_data.poke(10.U)

      c.io.tl_d_o.a_opcode.expect(TL_A_Opcode.get)
      c.io.tl_d_o.a_data.expect(0.U)
    }}
  }
  // Test Case: 4 (Hosts = 3)
  it should "Connect host(2) with the device when host(0) and host(1) both are not accessing bus" in {
    test(new TLSocketM_1(3)) {c => {
      // Host 1 sending a GET
      c.io.tl_h_i(0).a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i(0).a_valid.poke(false.B)
      c.io.tl_h_i(0).a_param.poke(0.U)
      c.io.tl_h_i(0).a_size.poke(2.U)
      c.io.tl_h_i(0).a_source.poke(0.U)
      c.io.tl_h_i(0).a_address.poke(0.U)
      c.io.tl_h_i(0).a_mask.poke("b1111".U)
      c.io.tl_h_i(0).a_data.poke(0.U)

      // Host 2 sending a PUT
      c.io.tl_h_i(1).a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_h_i(1).a_valid.poke(false.B)
      c.io.tl_h_i(1).a_param.poke(0.U)
      c.io.tl_h_i(1).a_size.poke(2.U)
      c.io.tl_h_i(1).a_source.poke(0.U)
      c.io.tl_h_i(1).a_address.poke(0.U)
      c.io.tl_h_i(1).a_mask.poke("b1111".U)
      c.io.tl_h_i(1).a_data.poke(10.U)

      // Host 3 sending a PutPartial
      c.io.tl_h_i(2).a_opcode.poke(TL_A_Opcode.putPartialData)
      c.io.tl_h_i(2).a_valid.poke(true.B)
      c.io.tl_h_i(2).a_param.poke(0.U)
      c.io.tl_h_i(2).a_size.poke(0.U)
      c.io.tl_h_i(2).a_source.poke(0.U)
      c.io.tl_h_i(2).a_address.poke(1.U)
      c.io.tl_h_i(2).a_mask.poke("b0001".U)
      c.io.tl_h_i(2).a_data.poke(2.U)

      c.io.tl_d_o.a_opcode.expect(TL_A_Opcode.putPartialData)
      c.io.tl_d_o.a_data.expect(2.U)
    }}
  }
  // Test Case: 5 (Hosts = 3)
  it should "Connect host(0) with the device when all three hosts are accessing the bus" in {
    test(new TLSocketM_1(3)) {c => {
      // Host 1 sending a GET
      c.io.tl_h_i(0).a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i(0).a_valid.poke(true.B)
      c.io.tl_h_i(0).a_param.poke(0.U)
      c.io.tl_h_i(0).a_size.poke(2.U)
      c.io.tl_h_i(0).a_source.poke(0.U)
      c.io.tl_h_i(0).a_address.poke(0.U)
      c.io.tl_h_i(0).a_mask.poke("b1111".U)
      c.io.tl_h_i(0).a_data.poke(0.U)

      // Host 2 sending a PUT
      c.io.tl_h_i(1).a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_h_i(1).a_valid.poke(true.B)
      c.io.tl_h_i(1).a_param.poke(0.U)
      c.io.tl_h_i(1).a_size.poke(2.U)
      c.io.tl_h_i(1).a_source.poke(0.U)
      c.io.tl_h_i(1).a_address.poke(0.U)
      c.io.tl_h_i(1).a_mask.poke("b1111".U)
      c.io.tl_h_i(1).a_data.poke(10.U)

      // Host 3 sending a PutPartial
      c.io.tl_h_i(2).a_opcode.poke(TL_A_Opcode.putPartialData)
      c.io.tl_h_i(2).a_valid.poke(true.B)
      c.io.tl_h_i(2).a_param.poke(0.U)
      c.io.tl_h_i(2).a_size.poke(0.U)
      c.io.tl_h_i(2).a_source.poke(0.U)
      c.io.tl_h_i(2).a_address.poke(1.U)
      c.io.tl_h_i(2).a_mask.poke("b0001".U)
      c.io.tl_h_i(2).a_data.poke(2.U)

      c.io.tl_d_o.a_opcode.expect(TL_A_Opcode.get)
      c.io.tl_d_o.a_data.expect(0.U)
    }}
  }

  // Test Case: 6 (Hosts = 3)
  it should "Connect host(1) with the device when host(0) does not access bus but host(2) is accessing the bus" in {
    test(new TLSocketM_1(3)) {c => {
      // Host 1 sending a GET
      c.io.tl_h_i(0).a_opcode.poke(TL_A_Opcode.get)
      c.io.tl_h_i(0).a_valid.poke(false.B)
      c.io.tl_h_i(0).a_param.poke(0.U)
      c.io.tl_h_i(0).a_size.poke(2.U)
      c.io.tl_h_i(0).a_source.poke(0.U)
      c.io.tl_h_i(0).a_address.poke(0.U)
      c.io.tl_h_i(0).a_mask.poke("b1111".U)
      c.io.tl_h_i(0).a_data.poke(0.U)

      // Host 2 sending a PUT
      c.io.tl_h_i(1).a_opcode.poke(TL_A_Opcode.putFullData)
      c.io.tl_h_i(1).a_valid.poke(true.B)
      c.io.tl_h_i(1).a_param.poke(0.U)
      c.io.tl_h_i(1).a_size.poke(2.U)
      c.io.tl_h_i(1).a_source.poke(0.U)
      c.io.tl_h_i(1).a_address.poke(0.U)
      c.io.tl_h_i(1).a_mask.poke("b1111".U)
      c.io.tl_h_i(1).a_data.poke(10.U)

      // Host 3 sending a PutPartial
      c.io.tl_h_i(2).a_opcode.poke(TL_A_Opcode.putPartialData)
      c.io.tl_h_i(2).a_valid.poke(true.B)
      c.io.tl_h_i(2).a_param.poke(0.U)
      c.io.tl_h_i(2).a_size.poke(0.U)
      c.io.tl_h_i(2).a_source.poke(0.U)
      c.io.tl_h_i(2).a_address.poke(1.U)
      c.io.tl_h_i(2).a_mask.poke("b0001".U)
      c.io.tl_h_i(2).a_data.poke(2.U)

      c.io.tl_d_o.a_opcode.expect(TL_A_Opcode.putFullData)
      c.io.tl_d_o.a_data.expect(10.U)
    }}
  }
}
