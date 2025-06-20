import chisel3._
import chisel3.util._

class LFSR extends Module {
  val io = IO(new Bundle {
    val out = Output(Vec(30, UInt(8.W)))
  })

  val reg = RegInit(23.U(8.W))
  val feedback = reg(7) ^ reg(5) ^ reg(4) ^ reg(3)
  reg := Cat(reg(6, 0), feedback)

  // History buffer
  val history = RegInit(VecInit(Seq.fill(30)(0.U(8.W))))
  for (i <- 0 until 29) {
    history(i) := history(i + 1)
  }
  history(29) := reg
  io.out := history
}
