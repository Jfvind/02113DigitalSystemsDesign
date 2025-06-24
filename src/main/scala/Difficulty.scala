import chisel3._
import chisel3.util._

class Difficulty extends Module {
  val io = IO(new Bundle {
    val level = Input(UInt(2.W)) // input fra vores FSM (0,1,2) lvl-1
    val speed = Output(SInt(27.W))
    val spawnInterval = Output(UInt(8.W))
    val resetSpeed = Input(Bool())
    val score = Output(UInt(16.W))
    val slowMode = Input(Bool())
  })

  val speedCnt = RegInit(0.U(27.W))

  // Real-time divider for 100 MHz clock to 60 Hz
  val frameDivider = RegInit(0.U(27.W)) // Increased width to 27 bits
  val tick = Wire(Bool())

  val framesPerSecond = 60.U
  val dividerMax = (100000000 / 60).U  // 100 MHz / 60 ≈ 1666666

  tick := false.B
  when(frameDivider === dividerMax) {
    frameDivider := 0.U
    tick := true.B
  }.otherwise {
    frameDivider := frameDivider + 1.U
  }

  // Increment speedCnt only on tick
  when(io.resetSpeed) {
    speedCnt := 0.U
  }.elsewhen(tick) {
    speedCnt := speedCnt + 1.U
  }

  def saturatingSub(a: UInt, b: UInt): UInt = Mux(a >= b, a - b, 0.U) //Vigtig for underflow

  val timeInSeconds = speedCnt >> 5
  val scaledTime = timeInSeconds >> 3

  val speedFactor = MuxLookup(io.level, 0.S)(Seq(
    1.U -> 1.S,
    2.U -> 1.S,
    3.U -> 2.S
  ))
  val progression = scaledTime * 2.U
  val rawSpeed = 2.S + (progression.asSInt * speedFactor)

  val speedCap = MuxLookup(io.level, 10.S)(Seq(
    1.U -> 12.S,
    2.U -> 16.S,
    3.U -> 22.S
  ))
  val effectiveSpeed = Mux(rawSpeed > speedCap, speedCap, rawSpeed)
  val finalSpeed = Mux(io.slowMode, 1.S, effectiveSpeed)
  io.speed := finalSpeed

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
  val dynamicMultiplier = Mux(timeInSeconds > 30.U, scoreMultiplier + 2.U, scoreMultiplier)
  io.score := timeInSeconds * dynamicMultiplier
}