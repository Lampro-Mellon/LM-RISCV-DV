package ibtida_soc
import scala.io.Source
import chisel3._
import chisel3.iotesters.Driver.execute
import chisel3.iotesters._
import merl.uit.tilelink.TLConfiguration

class IbtidaTest(c: Ibtida_top_dffram_cv, filePath: String) extends PeekPokeTester(c) {
  /** Initializing GPIO input pins */
 // poke(c.io.gpio_i, 0xffffffff)
 poke(c.io.CLK_PER_BIT, 4.U)
  val bufferedSource =  Source.fromFile(filePath)
  val fileData = bufferedSource.getLines.toArray
  // We create an array insts by reading the lines from the text file and parsing the string
  // as hexadecimal. The parse function does not accept 0x literals so we used substring(2)
  // to get rid of the first two characters which are 0x finally "yielding" it into an array.
//  val insts = for (i <- fileData) yield java.lang.Long.parseLong(i, 16)
  val insts = for (i <- fileData) yield java.lang.Long.parseLong(i.substring(2), 16)
  // closing the opened file
  bufferedSource.close

  poke(c.io.rx_i, 1)
  step(10)
  for (inst <- insts) {
    val half_byte1 = inst & 0x0f  // 3
    val half_byte2 = (inst & 0xf0) >> 4 // 1
    val byte1 = (half_byte2 << 4) | half_byte1 // 0x13

    val half_byte3 = (inst & 0xf00) >> 8  // 1
    val half_byte4 = (inst & 0xf000) >> 12  // 0
    val byte2 = (half_byte4 << 4) | half_byte3  // 0x01

    val half_byte5 = (inst & 0xf0000) >> 16 // 0
    val half_byte6 = (inst & 0xf00000) >> 20  // 2
    val byte3 = (half_byte6 << 4) | half_byte5  // 0x20

    val half_byte7 = (inst & 0xf000000) >> 24 // 0
    val half_byte8 = (inst & 0xf0000000) >> 28  // 0
    val byte4 = (half_byte8 << 4) | half_byte7  // 0x00

    //printf("The instruction is %x".format(byte4))
    pokeUart(byte1.toInt)
    pokeUart(byte2.toInt)
    pokeUart(byte3.toInt)
    pokeUart(byte4.toInt)
  }

  def pokeUart(value: Int): Unit = {

    // start bit
    poke(c.io.rx_i, 0)
    step(4)
    // 8 data bits
    for (i <- 0 until 8) {
      poke(c.io.rx_i, (value >> i) & 0x01)
      step(4)
    }
    // stop bit
    poke(c.io.rx_i, 1)
    step(4)
  }
  step(200)
}

object IbtidaTestDriver extends App {
  implicit val conf = TLConfiguration()
//  Driver(() => new ShaheenTop) {c => new ShaheenTest(c)}
  execute(Array("--generate-vcd-output", "on"), () => new Ibtida_top_dffram_cv()) { c => new IbtidaTest(c, "/Users/mbp/Desktop/instructions.txt")}
}