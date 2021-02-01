package core
import chisel3.iotesters.PeekPokeTester

class JalrTests(c: Jalr) extends PeekPokeTester(c) {
    poke(c.io.input_a, 2)
    poke(c.io.input_b, 4)
    step(1)
}