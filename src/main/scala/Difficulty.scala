import chisel3._
import chisel3.util._

class Difficulty extends Module {
  val io = IO(new Bundle {
    val level = Input(UInt(2.W)) // input fra vores FSM (0,1,2) lvl-1
    val speed = Output(SInt(27.W))
    val spawnInterval = Output(UInt(8.W))
    val resetSpeed = Input(Bool())
    val score = Output(UInt(16.W))
  })

  val x = RegInit(1.S(7.W))
  val xDone = RegInit(false.B)
  val speedCnt = RegInit(0.U(27.W))

  when(io.resetSpeed) {
    speedCnt := 0.U
  }.otherwise {
    speedCnt := speedCnt + 1.U
  }

  val timeInSeconds = speedCnt >> 6 // ≈ /64, giver os ca 1 inkremering i sek

  val scoreBase = MuxLookup(io.level, 1.U)(Seq(
    1.U -> 1.U,
    2.U -> 2.U,
    3.U -> 3.U
  ))

  io.score := timeInSeconds * scoreBase

  val rawSpeed = MuxLookup(io.level, 5.S)(Seq(
    1.U -> (3.S + timeInSeconds.asSInt * 1.S),
    2.U -> (5.S + timeInSeconds.asSInt * 2.S),
    3.U -> (7.S + timeInSeconds.asSInt * 3.S)
  ))

  io.speed := Mux(rawSpeed > 20.S, 20.S, rawSpeed)

  io.spawnInterval := MuxLookup(io.level, 30.U) (Seq(
    1.U -> 60.U,
    2.U -> 40.U,
    3.U -> 15.U
  ))

  //Husk Liv
}