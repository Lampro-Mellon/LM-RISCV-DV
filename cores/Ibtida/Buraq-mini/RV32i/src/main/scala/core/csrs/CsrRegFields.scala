package main.scala.core.csrs
import chisel3._

object MSTAT_BITS{
  val MIE      = 3
  val MPIE     = 7
  val MPP_LOW  = 11
  val MPP_HIGH = 12
  val MPRV     = 17
  val TW       = 21
}

// machine interrupt enable/pening bits
// X notation is used because both registers mie and mip have
// same bits for interrupt enable/pending
object MIX_BITS{
  val MSIX      = 3
  val MTIX      = 7
  val MEIX      = 11
  //  val M FIX_LOW  = 16
  //  val MFIX_HIGH = 30
}
