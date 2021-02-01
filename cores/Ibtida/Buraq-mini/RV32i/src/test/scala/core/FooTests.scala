package core
import chisel3.iotesters.PeekPokeTester

class FooTests(c: Foo) extends PeekPokeTester(c) {
    poke(c.io.in, 2)
    step(1)
}