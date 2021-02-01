package common


import chisel3._
import chisel3.util._

class ALU_operations_Sel(func3 : UInt, func7 : UInt, AluOp : UInt)
{
     def JAL    : Bool  = { AluOp === "b0011".U  }
     def LUI    : Bool  = { AluOp === "b0110".U  }
     def AUIPC  : Bool  = { AluOp === "b0111".U  }
     def ADDI   : Bool  = { func3 === "b000".U  && AluOp==="b0001".U  }
     def SLTI   : Bool  = { func3 === "b010".U  && AluOp==="b0001".U  }
     def SLTIU  : Bool  = { func3 === "b011".U  && AluOp==="b0001".U  }
     def XORI   : Bool  = { func3 === "b100".U  && AluOp==="b0001".U  }
     def ORI    : Bool  = { func3 === "b110".U  && AluOp==="b0001".U  }
     def ANDI   : Bool  = { func3 === "b111".U  && AluOp==="b0001".U  }
     def BEQ    : Bool  = { func3 === "b000".U  && AluOp==="b0010".U  }
     def BNE    : Bool  = { func3 === "b001".U  && AluOp==="b0010".U  }
     def BLT    : Bool  = { func3 === "b100".U  && AluOp==="b0010".U  }
     def BGE    : Bool  = { func3 === "b101".U  && AluOp==="b0010".U  }
     def BLTU   : Bool  = { func3 === "b110".U  && AluOp==="b0010".U  }
     def BGEU   : Bool  = { func3 === "b111".U  && AluOp==="b0010".U  }
     def JALR   : Bool  = { func3 === "b000".U  && AluOp==="b0011".U  }
     def LB     : Bool  = { func3 === "b000".U  && AluOp==="b0100".U  }
     def LH     : Bool  = { func3 === "b001".U  && AluOp==="b0100".U  }
     def LW     : Bool  = { func3 === "b010".U  && AluOp==="b0100".U  }
     def LBU    : Bool  = { func3 === "b100".U  && AluOp==="b0100".U  }
     def LHU    : Bool  = { func3 === "b101".U  && AluOp==="b0100".U  }
     def LWU    : Bool  = { func3 === "b110".U  && AluOp==="b0100".U  }
     def SB     : Bool  = { func3 === "b000".U  && AluOp==="b0101".U  }
     def SH     : Bool  = { func3 === "b001".U  && AluOp==="b0101".U  }
     def SW     : Bool  = { func3 === "b010".U  && AluOp==="b0101".U  }
     def SLLI   : Bool  = { func3 === "b001".U  && AluOp==="b0001".U  && func7 === "b0000000".U}
     def SRLI   : Bool  = { func3 === "b101".U  && AluOp==="b0001".U  && func7 === "b0000000".U}
     def SRAI   : Bool  = { func3 === "b101".U  && AluOp==="b0001".U  && func7 === "b0100000".U}
     def ADD    : Bool  = { func3 === "b000".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def SUB    : Bool  = { func3 === "b000".U  && AluOp==="b0000".U  && func7 === "b0100000".U}
     def SLL    : Bool  = { func3 === "b001".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def SLT    : Bool  = { func3 === "b010".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def SLTU   : Bool  = { func3 === "b011".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def XOR    : Bool  = { func3 === "b100".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def SRL    : Bool  = { func3 === "b101".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def SRA    : Bool  = { func3 === "b101".U  && AluOp==="b0000".U  && func7 === "b0100000".U}
     def OR     : Bool  = { func3 === "b110".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def AND    : Bool  = { func3 === "b111".U  && AluOp==="b0000".U  && func7 === "b0000000".U}
     def MUL    : Bool  = { func3 === "b000".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def MULH   : Bool  = { func3 === "b001".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def MULHSU : Bool  = { func3 === "b010".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def MULHU  : Bool  = { func3 === "b011".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def DIV    : Bool  = { func3 === "b100".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def DIVU   : Bool  = { func3 === "b101".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def REM    : Bool  = { func3 === "b110".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def REMU   : Bool  = { func3 === "b111".U  && AluOp==="b1001".U  && func7 === "b0000001".U}
     def CSRRW  : Bool  = { func3 === "b001".U  && AluOp==="b1000".U}
     def CSRRS  : Bool  = { func3 === "b010".U  && AluOp==="b1000".U}
     def CSRRC  : Bool  = { func3 === "b011".U  && AluOp==="b1000".U}
     def CSRRWI : Bool  = { func3 === "b101".U  && AluOp==="b1000".U}
     def CSRRSI : Bool  = { func3 === "b110".U  && AluOp==="b1000".U}
     def CSRRCI : Bool  = { func3 === "b111".U  && AluOp==="b1000".U}
}
