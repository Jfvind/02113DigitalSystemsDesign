import chisel3._
import chisel3.util._

class LFSR extends Module {
  val io = IO(new Bundle {
    val out = Output(UInt(8.W))
  })

  // 8-bit register med initialværdi 1 (må ikke være 0, ellers stopper sekvensen)
  val reg = RegInit(1.U(8.W))

  // Feedback-bit beregnes som XOR af bit 7 og bit 5 (taps for 8-bit LFSR)
  val feedback = reg(7) ^ reg(5)

  // Shift registeret én til venstre og indsæt feedback som ny LSB
  reg := Cat(reg(6, 0), feedback)

  // Output er hele registeret
  io.out := reg
}
