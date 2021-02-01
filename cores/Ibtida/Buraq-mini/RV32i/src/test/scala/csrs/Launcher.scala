package csrs

import chisel3.iotesters.{Driver, TesterOptionsManager}
import main.scala.core.csrs.CsrRegisterFile
import utils.TutorialRunner

object Launcher {
  val examples = Map(

    "CsrRegisterFile" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new CsrRegisterFile(), manager) {
        (c) => new CsrRegisterFileTests(c)
      }
    }
  )
  def main(args: Array[String]): Unit = {
    TutorialRunner("examples", examples, args)
  }
}