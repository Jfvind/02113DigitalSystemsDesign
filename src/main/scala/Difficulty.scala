import chisel3._
import chisel3.util._

class Difficulty extends Module {
  val io = IO(new Bundle {
    val level = Input(UInt(2.W)) // input fra vores FSM (0,1,2) lvl-1
    val spawnEnable = Output(Bool()) // Signal til at spawn nyt objekt
    val speed = Output(UInt(27.W))
    val damage = Output(UInt(8.W)) // pr meteor
  })

    val lfsr = Module(new LFSR)

    val x = RegInit(1.U(7.W))
    val y = RegInit(0.U(27.W))
    val spawnCnt = RegInit(0.U(27.W))
    val spawn = RegInit(false.B)
    
    when(spawnCnt === 100000000.U) {
        spawnCnt := 0.U
        spawn := true.B
    }.otherwise {
        spawnCnt := spawnCnt + 1.U
        spawn := false.B
        x := x + 1.U
    }
    val fherjk = lfsr.io.out

    io.spawnEnable := spawn
    io.speed := io.level * x
    io.damage := 1.U
}