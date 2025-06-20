import chisel3._
import chisel3.util._

class Difficulty extends Module {
  val io = IO(new Bundle {
    val level = Input(UInt(2.W)) // input fra vores FSM (0,1,2) lvl-1
    val speed = Output(SInt(27.W))
    val damage = Output(UInt(8.W)) // pr meteor
    val spawnInterval = Output(UInt(8.W))
  })

  val x = RegInit(1.S(7.W))
  val xDone = RegInit(false.B)
  val speedCnt = RegInit(0.U(27.W))

  io.speed := MuxLookup(io.level, 5.S) (Seq(
    1.U -> 3.S, // Ezzzz
    2.U -> 5.S, // Med
    3.U -> 7.S, // svær
  ))

  io.damage := MuxLookup(io.level, 1.U) (Seq(
    1.U -> 1.U,
    2.U -> 2.U,
    3.U -> 3.U,
  ))

  io.spawnInterval := MuxLookup(io.level, 30.U) (Seq(
    1.U -> 60.U,
    2.U -> 40.U,
    3.U -> 15.U
  ))

 //Husk Liv
}