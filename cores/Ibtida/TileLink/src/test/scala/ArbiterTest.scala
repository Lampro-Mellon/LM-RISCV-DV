package tilelink
import org.scalatest._
import chiseltest._
import chisel3._
import merl.uit.tilelink.{Arbiter, TLConfiguration}

class ArbiterTest extends FlatSpec with ChiselScalatestTester with Matchers {
  implicit val tl_conf = TLConfiguration()
  behavior of "Arbiter connecting multiple hosts to single device"

  it should "connect host 0 with device" in {
    test(new Arbiter(2)) { c =>
      c.io.req_i(0).poke(false.B)
      c.io.req_i(1).poke(true.B)

      // Host 1 data
      c.io.data_i(0).a_data.poke(0.U)
      c.io.data_i(0).a_mask.poke("b1111".U)
      c.io.data_i(0).a_address.poke(0.U)
      c.io.data_i(0).a_source.poke(0.U)
      c.io.data_i(0).a_size.poke(2.U)
      c.io.data_i(0).a_param.poke(0.U)
      c.io.data_i(0).a_opcode.poke(4.U)
      c.io.data_i(0).a_valid.poke(true.B)
      c.io.data_i(0).d_ready.poke(true.B)

      // Host 2 data
      c.io.data_i(1).a_data.poke(10.U)
      c.io.data_i(1).a_mask.poke("b1111".U)
      c.io.data_i(1).a_address.poke(4.U)
      c.io.data_i(1).a_source.poke(0.U)
      c.io.data_i(1).a_size.poke(2.U)
      c.io.data_i(1).a_param.poke(0.U)
      c.io.data_i(1).a_opcode.poke(1.U)
      c.io.data_i(1).a_valid.poke(true.B)
      c.io.data_i(1).d_ready.poke(true.B)

      // the slave is ready to accept the data
      c.io.ready_i.poke(true.B)

      c.io.gnt_o(0).expect(false.B)
      c.io.gnt_o(1).expect(true.B)
      c.io.valid_o.expect(true.B)
      c.io.data_o.a_opcode.expect(1.U)
    }
  }
}
