package main.scala.core.csrs
import chisel3._

object CsrAddressMap {
  // machine information registers
  val MVENDORID        = "hF11".U
  val MARCHID          = "hF12".U
  val MIMPID           = "hF13".U
  val MHARTID          = "hF14".U

  // Machine trap setup
  val MSTATUS          = "h300".U
  val MISA             = "h301".U
  val MIE              = "h304".U
  val MTVEC            = "h305".U

  // Machine trap handling
  val MSCRATCH         = "h340".U
  val MEPC             = "h341".U
  val MCAUSE           = "h342".U
  val MTVAL            = "h343".U
  val MIP              = "h344".U

  // Debug trigger
  val TSELECT          = "h7A0".U
  val TDATA1           = "h7A1".U
  val TDATA2           = "h7A2".U
  val TDATA3           = "h7A3".U
  val MCONTEXT         = "h7A8".U
  val SCONTEXT         = "h7AA".U

  // Debug/trace
  val DCSR             = "h7b0".U
  val DPC              = "h7b1".U

  // Debug
  val DSCRATCH0        = "h7b2".U // optional
  val DSCRATCH1        = "h7b3".U // optional

  // Machine Counter/Timers
  val MCOUNTINHIBIT    = "h320".U
  val MHPMEVENT3       = "h323".U
  val MHPMEVENT4       = "h324".U
  val MHPMEVENT5       = "h325".U
  val MHPMEVENT6       = "h326".U
  val MHPMEVENT7       = "h327".U
  val MHPMEVENT8       = "h328".U
  val MHPMEVENT9       = "h329".U
  val MHPMEVENT10      = "h32A".U
  val MHPMEVENT11      = "h32B".U
  val MHPMEVENT12      = "h32C".U
  val MHPMEVENT13      = "h32D".U
  val MHPMEVENT14      = "h32E".U
  val MHPMEVENT15      = "h32F".U
  val MHPMEVENT16      = "h330".U
  val MHPMEVENT17      = "h331".U
  val MHPMEVENT18      = "h332".U
  val MHPMEVENT19      = "h333".U
  val MHPMEVENT20      = "h334".U
  val MHPMEVENT21      = "h335".U
  val MHPMEVENT22      = "h336".U
  val MHPMEVENT23      = "h337".U
  val MHPMEVENT24      = "h338".U
  val MHPMEVENT25      = "h339".U
  val MHPMEVENT26      = "h33A".U
  val MHPMEVENT27      = "h33B".U
  val MHPMEVENT28      = "h33C".U
  val MHPMEVENT29      = "h33D".U
  val MHPMEVENT30      = "h33E".U
  val MHPMEVENT31      = "h33F".U
  val MCYCLE           = "hB00".U
  val MINSTRET         = "hB02".U
  val MHPMCOUNTER3     = "hB03".U
  val MHPMCOUNTER4     = "hB04".U
  val MHPMCOUNTER5     = "hB05".U
  val MHPMCOUNTER6     = "hB06".U
  val MHPMCOUNTER7     = "hB07".U
  val MHPMCOUNTER8     = "hB08".U
  val MHPMCOUNTER9     = "hB09".U
  val MHPMCOUNTER10    = "hB0A".U
  val MHPMCOUNTER11    = "hB0B".U
  val MHPMCOUNTER12    = "hB0C".U
  val MHPMCOUNTER13    = "hB0D".U
  val MHPMCOUNTER14    = "hB0E".U
  val MHPMCOUNTER15    = "hB0F".U
  val MHPMCOUNTER16    = "hB10".U
  val MHPMCOUNTER17    = "hB11".U
  val MHPMCOUNTER18    = "hB12".U
  val MHPMCOUNTER19    = "hB13".U
  val MHPMCOUNTER20    = "hB14".U
  val MHPMCOUNTER21    = "hB15".U
  val MHPMCOUNTER22    = "hB16".U
  val MHPMCOUNTER23    = "hB17".U
  val MHPMCOUNTER24    = "hB18".U
  val MHPMCOUNTER25    = "hB19".U
  val MHPMCOUNTER26    = "hB1A".U
  val MHPMCOUNTER27    = "hB1B".U
  val MHPMCOUNTER28    = "hB1C".U
  val MHPMCOUNTER29    = "hB1D".U
  val MHPMCOUNTER30    = "hB1E".U
  val MHPMCOUNTER31    = "hB1F".U
  val MCYCLEH          = "hB80".U
  val MINSTRETH        = "hB82".U
  val MHPMCOUNTER3H    = "hB83".U
  val MHPMCOUNTER4H    = "hB84".U
  val MHPMCOUNTER5H    = "hB85".U
  val MHPMCOUNTER6H    = "hB86".U
  val MHPMCOUNTER7H    = "hB87".U
  val MHPMCOUNTER8H    = "hB88".U
  val MHPMCOUNTER9H    = "hB89".U
  val MHPMCOUNTER10H   = "hB8A".U
  val MHPMCOUNTER11H   = "hB8B".U
  val MHPMCOUNTER12H   = "hB8C".U
  val MHPMCOUNTER13H   = "hB8D".U
  val MHPMCOUNTER14H   = "hB8E".U
  val MHPMCOUNTER15H   = "hB8F".U
  val MHPMCOUNTER16H   = "hB90".U
  val MHPMCOUNTER17H   = "hB91".U
  val MHPMCOUNTER18H   = "hB92".U
  val MHPMCOUNTER19H   = "hB93".U
  val MHPMCOUNTER20H   = "hB94".U
  val MHPMCOUNTER21H   = "hB95".U
  val MHPMCOUNTER22H   = "hB96".U
  val MHPMCOUNTER23H   = "hB97".U
  val MHPMCOUNTER24H   = "hB98".U
  val MHPMCOUNTER25H   = "hB99".U
  val MHPMCOUNTER26H   = "hB9A".U
  val MHPMCOUNTER27H   = "hB9B".U
  val MHPMCOUNTER28H   = "hB9C".U
  val MHPMCOUNTER29H   = "hB9D".U
  val MHPMCOUNTER30H   = "hB9E".U
  val MHPMCOUNTER31H   = "hB9F".U
}
