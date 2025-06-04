//////////////////////////////////////////////////////////////////////////////
// Authors: Luca Pezzarossa
// Copyright: Technical University of Denmark - 2025
// Comments:
// The sound engine.
//////////////////////////////////////////////////////////////////////////////

import chisel3._
import chisel3.util._
import org.joda.time.ReadableDuration

class SoundEngine(TuneNumber: Int) extends Module {
  val io = IO(new Bundle {
    val soundOut = Output(Bool())

    val startTune = Input(Vec(TuneNumber, Bool()))
    val stopTune = Input(Vec(TuneNumber, Bool()))
    val pauseTune = Input(Vec(TuneNumber, Bool()))
    val playingTune = Output(Vec(TuneNumber, Bool()))

    val tuneId = Input(UInt(log2Up(TuneNumber).W))
  })

  //Generating tune memories
  val tuneMemories = for (i <- 0 until TuneNumber) yield {
    val tuneMemory = Module(new Memory(28, 8, "memory_init/tune_init_" + i.toString + ".mem"))
    tuneMemory
  }

  //Generating prescaled enable signals (1 cc high every ms and every 32 CC)
  val CLOCK_CYCLES_PER_MS = 100_000
  val CLOCK_CYCLES_PER_32CC = 32
  // 1 ms prescaler
  val counter1msReg = RegInit((CLOCK_CYCLES_PER_MS - 1).U(log2Up(CLOCK_CYCLES_PER_MS - 1).W))
  val enable1ms = counter1msReg === 0.U
  counter1msReg := Mux(counter1msReg === 0.U, (CLOCK_CYCLES_PER_MS - 1).U, counter1msReg - 1.U)
  // 32 cc prescaler
  val counter32ccReg = RegInit((CLOCK_CYCLES_PER_32CC - 1).U(log2Up(CLOCK_CYCLES_PER_32CC - 1).W)) // 6 bits are enough for counting to 32
  val enable32cc = counter32ccReg === 0.U
  counter32ccReg := Mux(counter32ccReg === 0.U, (CLOCK_CYCLES_PER_32CC - 1).U, counter32ccReg - 1.U)


  //Generating registers
  val noteCountReg = RegInit(VecInit(Seq.fill(TuneNumber)(0.U(16.W))))
  val durationCountReg = RegInit(VecInit(Seq.fill(TuneNumber)(0.U(12.W))))

  val noteCountRegEnable = Wire(Vec(TuneNumber, Bool()))
  val noteCountRegLoad = Wire(Vec(TuneNumber, Bool()))
  val noteCountRegLoadValue = Wire(Vec(TuneNumber, UInt(16.W)))
  val noteCountRegDone = Wire(Vec(TuneNumber, Bool()))

  val durationCountRegEnable = Wire(Vec(TuneNumber, Bool()))
  val durationCountRegLoad = Wire(Vec(TuneNumber, Bool()))
  val durationCountRegLoadValue = Wire(Vec(TuneNumber, UInt(12.W)))
  val durationCountRegDone = Wire(Vec(TuneNumber, Bool()))

  val currNoteReg = RegInit(VecInit(Seq.fill(TuneNumber)(0.U(16.W))))
  val currDurationReg = RegInit(VecInit(Seq.fill(TuneNumber)(0.U(12.W))))
  val nextIndexReg = RegInit(VecInit(Seq.fill(TuneNumber)(0.U(8.W))))

  val init0 :: init1 :: init2 :: ready :: Nil = Enum(4)
  val stateReg = RegInit(VecInit(Seq.fill(TuneNumber)(init0)))
  val newNoteLoadReg = RegInit(VecInit(Seq.fill(TuneNumber)(false.B)))
  val audioReg = RegInit(VecInit(Seq.fill(TuneNumber)(false.B)))
  val isPlayingReg = RegInit(VecInit(Seq.fill(TuneNumber)(false.B)))

  for (i <- 0 until TuneNumber) {
    // Connecting memories
    tuneMemories(i).io.enable := true.B
    tuneMemories(i).io.dataWrite := 0.U
    tuneMemories(i).io.writeEnable := false.B
    tuneMemories(i).io.address := nextIndexReg(i)

    noteCountRegEnable(i) := isPlayingReg(i) && enable32cc
    durationCountRegEnable(i) := isPlayingReg(i) && enable1ms

    when(noteCountRegLoad(i)) {
      noteCountReg(i) := noteCountRegLoadValue(i)
    }.elsewhen(noteCountRegEnable(i) && noteCountReg(i) =/= 0.U) {
      noteCountReg(i) := noteCountReg(i) - 1.U
    }
    noteCountRegDone(i)  := (noteCountReg(i) === 0.U)

    when(durationCountRegLoad(i)) {
      durationCountReg(i) := durationCountRegLoadValue(i)
    }.elsewhen(durationCountRegEnable(i) && durationCountReg(i) =/= 0.U) {
      durationCountReg(i) := durationCountReg(i) - 1.U
    }
    durationCountRegDone(i)  := (durationCountReg(i) === 0.U)

    noteCountRegLoad(i) := noteCountRegDone(i) || newNoteLoadReg(i)
    durationCountRegLoad(i) := newNoteLoadReg(i)

    noteCountRegLoadValue(i) := currNoteReg(i)
    durationCountRegLoadValue(i) := currDurationReg(i)

    newNoteLoadReg(i) := false.B

    //FSMD switch
    switch(stateReg(i)) {
      is(init0) {
        nextIndexReg(i) := 0.U
        stateReg(i) := init1
        isPlayingReg(i) := false.B
      }
      is(init1) {
        nextIndexReg(i) := 1.U
        stateReg(i) := init2
      }
      is(init2) {
        when (tuneMemories(i).io.dataRead(12 + 16 - 1, 16) =/= 0.U) {
          stateReg(i) := ready
          currNoteReg(i) := tuneMemories(i).io.dataRead(16-1,0)
          currDurationReg(i) := tuneMemories(i).io.dataRead(12+16-1,16)
          newNoteLoadReg(i) := true.B
        }
      }
      is(ready) {
        when (tuneMemories(i).io.dataRead(12 + 16 - 1, 16) === 0.U) {
          nextIndexReg(i) := 0.U
          //isPlayingReg(i) := false.B
        }.elsewhen(durationCountRegDone(i) && !newNoteLoadReg(i)) {
          currNoteReg(i) := tuneMemories(i).io.dataRead(16 - 1, 0)
          currDurationReg(i) := tuneMemories(i).io.dataRead(12 + 16 - 1, 16)
          newNoteLoadReg(i) := true.B
          nextIndexReg(i) := nextIndexReg(i) + 1.U
          when(nextIndexReg(i) === 0.U){
            isPlayingReg(i) := false.B
          }
        }
        when (io.stopTune(i)) {
          stateReg(i) := init0
        }
        when (io.startTune(i)) {
          isPlayingReg(i) := true.B
        }
        when(io.pauseTune(i)) {
          isPlayingReg(i) := false.B
        }
      }
    }

    //Multiplexing the output between the tunes
    when(isPlayingReg(i) && currNoteReg(i) =/= 0.U) {
      when(noteCountRegDone(i)) {
        audioReg(i) := ! audioReg(i)
      }
    }.otherwise {
      audioReg(i) := false.B
    }

    io.playingTune(i) := isPlayingReg(i)
  }

  io.soundOut := audioReg(io.tuneId)
}

//////////////////////////////////////////////////////////////////////////////
// End of file
//////////////////////////////////////////////////////////////////////////////
