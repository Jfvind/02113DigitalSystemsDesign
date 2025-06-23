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
  val scaledTime = timeInSeconds >> 4

  val speedFactor = MuxLookup(io.level, 0.S)(Seq(
    1.U -> 1.S,
    2.U -> 1.S,
    3.U -> 2.S
  ))
  val rawSpeed = 1.S + (scaledTime.asSInt * speedFactor)

  val speedCap = MuxLookup(io.level, 10.S)(Seq(
    1.U -> 3.S,
    2.U -> 5.S,
    3.U -> 8.S
  ))
  io.speed := Mux(rawSpeed > speedCap, speedCap, rawSpeed)

  val rawSpawn = MuxLookup(io.level, 80.U)(Seq(
    1.U -> saturatingSub(100.U, timeInSeconds),
    2.U -> saturatingSub(80.U, timeInSeconds * 2.U),
    3.U -> saturatingSub(60.U, timeInSeconds * 3.U)
  ))
  io.spawnInterval := Mux(rawSpawn < 20.U, 20.U, rawSpawn)

  val scoreMultiplier = MuxLookup(io.level, 1.U)(Seq(
    1.U -> 1.U,
    2.U -> 3.U,
    3.U -> 5.U
  ))
  io.score := timeInSeconds * scoreMultiplier
}