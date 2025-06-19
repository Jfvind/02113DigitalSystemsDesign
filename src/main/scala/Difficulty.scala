import chisel3._
import chisel3.util._

class Difficulty extends Module {
  val io = IO(new Bundle {
    val level = Input(UInt(2.W)) // input fra vores FSM (0,1,2) lvl-1
    val spawnEnable = Output(Bool()) // Signal til at spawn nyt objekt
    val speed = Output(SInt(27.W))
    val damage = Output(UInt(8.W)) // pr meteor
  })

    val lfsr = Module(new LFSR)

    val x = RegInit(1.S(7.W))
    val xDone = RegInit(false.B)
    val spawnCnt = RegInit(0.U(27.W))
    val spawn = RegInit(false.B)
    
    when(spawnCnt === 100000000.U) {
        spawnCnt := 0.U
        spawn := true.B
        when(~xDone) {
            x := x + 1.S
        }
    }.otherwise {
        spawnCnt := spawnCnt + 1.U
        spawn := false.B
    }

    when(io.level === 1.U) {
        when(x === 15.S) {
            x := 15.S
            xDone := true.B
        }
    }.elsewhen(io.level === 2.U) {
        when(x === 50.S) {
            x := 50.S
            xDone := true.B
        }
    }.elsewhen(io.level === 3.U) {
        when(x === 70.S) {
            x := 70.S
            xDone := true.B
        }
    }.otherwise {
        xDone := false.B
        x := 0.S
    }

    val fherjk = lfsr.io.out

    io.spawnEnable := spawn
    io.speed := io.level * x
    io.damage := 1.U
}