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

  val speedCnt = RegInit(0.U(27.W))

  when(io.resetSpeed) {
    speedCnt := 0.U
  }.otherwise {
    speedCnt := speedCnt + 1.U
  }

  def saturatingSub(a: UInt, b: UInt): UInt = Mux(a > b, a - b, 0.U) //Vigtig for underflow

  val timeInSeconds = speedCnt >> 6 // ca. 1/s
  val scaledTime = timeInSeconds >> 2

  val rawSpeed = MuxLookup(io.level, 5.S)(Seq(
    1.U -> (2.S + scaledTime.asSInt),
    2.U -> (3.S + scaledTime.asSInt * 2.S),
    3.U -> (5.S + scaledTime.asSInt * 3.S)
  ))
  val speedCap = MuxLookup(io.level, 10.S)(Seq(
    1.U -> 8.S,
    2.U -> 12.S,
    3.U -> 16.S
  ))
  io.speed := Mux(rawSpeed > speedCap, speedCap, rawSpeed)

  val rawSpawn = MuxLookup(io.level, 30.U)(Seq(
    1.U -> saturatingSub(80.U, timeInSeconds),
    2.U -> saturatingSub(60.U, timeInSeconds * 2.U),
    3.U -> saturatingSub(40.U, timeInSeconds * 3.U)
  ))
  io.spawnInterval := Mux(rawSpawn < 10.U, 10.U, rawSpawn)

  val scoreMultiplier = MuxLookup(io.level, 1.U)(Seq(
    1.U -> 1.U,
    2.U -> 3.U,
    3.U -> 5.U
  ))
  io.score := timeInSeconds * scoreMultiplier
}