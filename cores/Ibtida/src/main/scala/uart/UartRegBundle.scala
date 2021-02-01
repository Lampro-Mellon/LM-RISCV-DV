package uart
import chisel3._

class UartReg2HW extends Bundle {
  val intr_state = new Bundle {
    val tx_empty = new Bundle {
      val q = Output(Bool())
    }
    val rx_overflow = new Bundle {
      val q = Output(Bool())
    }
    val rx_frame_err = new Bundle {
      val q = Output(Bool())
    }
    val rx_break_err = new Bundle {
      val q = Output(Bool())
    }
    val rx_parity_err = new Bundle {
      val q = Output(Bool())
    }
  }

  val intr_enable = new Bundle {
    val tx_empty = new Bundle {
      val q = Output(Bool())
    }
    val rx_overflow = new Bundle {
      val q = Output(Bool())
    }
    val rx_frame_err = new Bundle {
      val q = Output(Bool())
    }
    val rx_break_err = new Bundle {
      val q = Output(Bool())
    }
    val rx_parity_err = new Bundle {
      val q = Output(Bool())
    }
  }

  val intr_test = new Bundle {
    val tx_empty = new Bundle {
      val q = Output(Bool())
      val qe = Output(Bool())
    }
    val rx_overflow = new Bundle {
      val q = Output(Bool())
      val qe = Output(Bool())
    }
    val rx_frame_err = new Bundle {
      val q = Output(Bool())
      val qe = Output(Bool())
    }
    val rx_break_err = new Bundle {
      val q = Output(Bool())
      val qe = Output(Bool())
    }
    val rx_parity_err = new Bundle {
      val q = Output(Bool())
      val qe = Output(Bool())
    }
  }

  val ctrl = new Bundle {
    val tx = new Bundle {
      val q = Output(Bool())
    }
    val rx = new Bundle {
      val q = Output(Bool())
    }
    val slpbk = new Bundle {  // system loop-back enable
      val q = Output(Bool())
    }
    val llpbk = new Bundle {
      val q = Output(Bool())
    }
    val parity_en = new Bundle {
      val q = Output(Bool())
    }
    val parity_odd = new Bundle {
      val q = Output(Bool())
    }
    val rxblvl = new Bundle { // trigger level for rx break detection
      val q = Output(Bool())
    }
    val nco = new Bundle {    // baud clock rate control
      val q = Output(UInt(16.W))
    }
  }

  val status = new Bundle {
    val txfull = new Bundle {
      val q = Output(Bool())
      val re = Output(Bool())
    }
    val rxfull = new Bundle {
      val q = Output(Bool())
      val re = Output(Bool())
    }
    val txempty = new Bundle {
      val q = Output(Bool())
      val re = Output(Bool())
    }
    val txidle = new Bundle {
      val q = Output(Bool())
      val re = Output(Bool())
    }
    val rxidle = new Bundle {
      val q = Output(Bool())
      val re = Output(Bool())
    }
    val rxempty = new Bundle {
      val q = Output(Bool())
      val re = Output(Bool())
    }
  }

  val rdata = new Bundle {
    val q = Output(UInt(8.W))
    val re = Output(Bool())
  }

  val wdata = new Bundle {
    val q = Output(UInt(8.W))
    val qe = Output(Bool())
  }

  val fifo_ctrl = new Bundle {
    val rxrst = new Bundle {  // RX fifo reset
      val q = Output(Bool())
      val qe = Output(Bool())
    }
    val txrst = new Bundle {
      val q = Output(Bool())
      val qe = Output(Bool())
    }
  }

  val ovrd = new Bundle {
    val txen = new Bundle {
      val q = Output(Bool())
    }
    val txval = new Bundle {
      val q = Output(Bool())
    }
  }
}

class UartHw2Reg extends Bundle {
  val intr_state = new Bundle {
    val tx_empty = new Bundle {
      val d = Input(Bool())
      val de = Input(Bool())
    }
    val rx_overflow = new Bundle {
      val d = Input(Bool())
      val de = Input(Bool())
    }
    val rx_frame_err = new Bundle {
      val d = Input(Bool())
      val de = Input(Bool())
    }
    val rx_break_err = new Bundle {
      val d = Input(Bool())
      val de = Input(Bool())
    }
    val rx_parity_err = new Bundle {
      val d = Input(Bool())
      val de = Input(Bool())
    }
  }

  val status = new Bundle {
    val txfull = new Bundle {
      val d = Input(Bool())
    }
    val rxfull = new Bundle {
      val d = Input(Bool())
    }
    val txempty = new Bundle {
      val d = Input(Bool())
    }
    val txidle = new Bundle {
      val d = Input(Bool())
    }
    val rxidle = new Bundle {
      val d = Input(Bool())
    }
    val rxempty = new Bundle {
      val d = Input(Bool())
    }
  }

  val rdata = new Bundle {
    val d = Input(UInt(8.W))
  }

  val fifo_status = new Bundle {
    val txlvl = new Bundle {
      val d = Input(UInt(6.W))
    }
    val rxlvl = new Bundle {
      val d = Input(UInt(6.W))
    }
  }
}
