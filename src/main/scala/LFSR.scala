import chisel3._
import chisel3.util._

class LFSR extends Module {
  val io = IO(new Bundle {
    val out = Output(Vec(30, UInt(9.W)))
  })

  // 64-bit LFSR register
  val reg = RegInit(0x123456789ABCDEFL.U(64.W))
  
  // Using taps at positions 64, 63, 61, 60 (maximal length sequence)
  val feedback = reg(63) ^ reg(62) ^ reg(60) ^ reg(59)
  
  // Shift register with feedback
  reg := Cat(reg(62, 0), feedback)

  // Extract 9-bit value from bits [17:9] of the 64-bit register
  val current_output = reg(17, 9)

  // History buffer for last 30 values
  val history = RegInit(VecInit(Seq.fill(30)(0.U(9.W))))
  
  // Shift history buffer
  for (i <- 0 until 29) {
    history(i) := history(i + 1)
  }
  history(29) := current_output
  
  io.out := history
}