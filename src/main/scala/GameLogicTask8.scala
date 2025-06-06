//////////////////////////////////////////////////////////////////////////////
// Authors: Luca Pezzarossa
// Copyright: Technical University of Denmark - 2025
// Comments:
// This file contains the game logic. Implement yours here.
//////////////////////////////////////////////////////////////////////////////

import chisel3._
import chisel3.util._

class GameLogicTask8(SpriteNumber: Int, BackTileNumber: Int, TuneNumber: Int) extends Module {
  val io = IO(new Bundle {
    //Buttons
    val btnC = Input(Bool())
    val btnU = Input(Bool())
    val btnL = Input(Bool())
    val btnR = Input(Bool())
    val btnD = Input(Bool())

    //Switches
    val sw = Input(Vec(8, Bool()))

    //Leds
    val led = Output(Vec(8, Bool()))

    //GraphicEngineVGA
    //Sprite control input
    val spriteXPosition = Output(Vec(SpriteNumber, SInt(11.W))) //-1024 to 1023
    val spriteYPosition = Output(Vec(SpriteNumber, SInt(10.W))) //-512 to 511
    val spriteVisible = Output(Vec(SpriteNumber, Bool()))
    val spriteFlipHorizontal = Output(Vec(SpriteNumber, Bool()))
    val spriteFlipVertical = Output(Vec(SpriteNumber, Bool()))
    val spriteScaleUpHorizontal = Output(Vec(SpriteNumber, Bool()))
    val spriteScaleDownHorizontal = Output(Vec(SpriteNumber, Bool()))
    val spriteScaleUpVertical = Output(Vec(SpriteNumber, Bool()))
    val spriteScaleDownVertical = Output(Vec(SpriteNumber, Bool()))

    //Viewbox control output
    val viewBoxX = Output(UInt(10.W)) //0 to 640
    val viewBoxY = Output(UInt(9.W)) //0 to 480

    //Background buffer output
    val backBufferWriteData = Output(UInt(log2Up(BackTileNumber).W))
    val backBufferWriteAddress = Output(UInt(11.W))
    val backBufferWriteEnable = Output(Bool())

    //Status
    val newFrame = Input(Bool())
    val frameUpdateDone = Output(Bool())

    //Sound
    val startTune = Output(Vec(TuneNumber, Bool()))
    val stopTune = Output(Vec(TuneNumber, Bool()))
    val pauseTune = Output(Vec(TuneNumber, Bool()))
    val playingTune = Input(Vec(TuneNumber, Bool()))
    val tuneId = Output(UInt(log2Up(TuneNumber).W))
  })

  // Setting all led outputs to zero
  // It can be done by the single expression below...
  io.led := Seq.fill(8)(false.B)

  // Or one by one...
  //io.led(0) := false.B
  //io.led(0) := false.B
  //io.led(1) := false.B
  //io.led(2) := false.B
  //io.led(3) := false.B
  //io.led(4) := false.B
  //io.led(5) := false.B
  //io.led(6) := false.B
  //io.led(7) := false.B

  // Or with a for loop.
  //for (i <- 0 until 8) {
  //  io.led(i) := false.B
  //}

  //Setting all sprite control outputs to zero
  io.spriteXPosition := Seq.fill(SpriteNumber)(0.S)
  io.spriteYPosition := Seq.fill(SpriteNumber)(0.S)
  io.spriteVisible := Seq.fill(SpriteNumber)(false.B)
  io.spriteFlipHorizontal := Seq.fill(SpriteNumber)(false.B)
  io.spriteFlipVertical := Seq.fill(SpriteNumber)(false.B)
  io.spriteScaleUpHorizontal := Seq.fill(SpriteNumber)(false.B)
  io.spriteScaleDownHorizontal := Seq.fill(SpriteNumber)(false.B)
  io.spriteScaleUpVertical := Seq.fill(SpriteNumber)(false.B)
  io.spriteScaleDownVertical := Seq.fill(SpriteNumber)(false.B)

  //Setting the viewbox control outputs to zero
  io.viewBoxX := 0.U
  io.viewBoxY := 0.U

  //Setting the background buffer outputs to zero
  io.backBufferWriteData := 0.U
  io.backBufferWriteAddress := 0.U
  io.backBufferWriteEnable := false.B

  //Setting frame done to zero
  io.frameUpdateDone := false.B

  //Setting sound engine outputs to zero
  io.startTune := Seq.fill(TuneNumber)(false.B)
  io.stopTune := Seq.fill(TuneNumber)(false.B)
  io.pauseTune := Seq.fill(TuneNumber)(false.B)
  io.tuneId := 0.U

  /////////////////////////////////////////////////////////////////
  // Write here your game logic
  // (you might need to change the initialization values above)
  /////////////////////////////////////////////////////////////////
  val idle :: fishMove :: autonomousMove :: backgroundAnimate :: bubble :: done :: Nil = Enum(6)
  val stateReg = RegInit(idle)

  //Two registers holding the sprite sprite X and Y with the sprite initial position
  val sprite0XReg = RegInit(32.S(11.W))
  val sprite0YReg = RegInit((360-32).S(10.W))
  val sprite1XReg = RegInit(350.S(11.W))
  val sprite1YReg = RegInit(160.S(10.W))
  val sprite2XReg = RegInit(120.S(11.W))
  val sprite2YReg = RegInit((360-128).S(10.W))
  val sprite3XReg = RegInit(247.S(11.W))
  val sprite3YReg = RegInit((360-44).S(10.W))
  val sprite6XReg = RegInit(300.S(11.W))
  val sprite6YReg = RegInit(370.S(10.W))

  //A registers holding the sprite horizontal flip
  val sprite0FlipHorizontalReg = RegInit(false.B)
  val sprite1FlipHorizontalReg = RegInit(false.B)
  val sprite2FlipHorizontalReg = RegInit(false.B)
  val sprite3FlipHorizontalReg = RegInit(false.B)
  val sprite4FlipHorizontalReg = RegInit(false.B)
  val sprite5FlipHorizontalReg = RegInit(false.B)
  val sprite6FlipHorizontalReg = RegInit(false.B)

  //Two registers holding the view box X and Y
  val viewBoxXReg = RegInit(0.U(10.W))
  val viewBoxYReg = RegInit(0.U(9.W))

  //Connecting registers to the graphic engine
  io.viewBoxX := viewBoxXReg
  io.viewBoxY := viewBoxYReg

  //Registers controlling invisibility
  val sprite1Visible = RegInit(true.B)
  val sprite2Visible = RegInit(true.B)
  val sprite3Visible = RegInit(true.B)
  val sprite4Visible = RegInit(false.B)
  val sprite5Visible = RegInit(false.B)
  val sprite6Visible = RegInit(true.B)

  //Connecting invisibility for sprites
  io.spriteVisible(0) := true.B
  io.spriteVisible(1) := sprite1Visible
  io.spriteVisible(2) := sprite2Visible
  io.spriteVisible(3) := sprite3Visible
  io.spriteVisible(4) := sprite4Visible
  io.spriteVisible(5) := sprite5Visible
  io.spriteVisible(6) := sprite6Visible

  //Connecting resiters to the graphic engine
  io.spriteXPosition(0) := sprite0XReg
  io.spriteYPosition(0) := sprite0YReg
  io.spriteFlipHorizontal(0) := sprite0FlipHorizontalReg
  io.spriteXPosition(1) := sprite1XReg
  io.spriteYPosition(1) := sprite1YReg
  io.spriteFlipHorizontal(1) := sprite1FlipHorizontalReg
  io.spriteXPosition(2) := sprite2XReg
  io.spriteYPosition(2) := sprite2YReg
  io.spriteFlipHorizontal(2) := sprite2FlipHorizontalReg
  io.spriteXPosition(3) := sprite3XReg
  io.spriteYPosition(3) := sprite3YReg
  io.spriteFlipHorizontal(3) := sprite3FlipHorizontalReg
  io.spriteXPosition(4) := sprite1XReg
  io.spriteYPosition(4) := sprite1YReg
  io.spriteFlipHorizontal(4) := sprite1FlipHorizontalReg
  io.spriteXPosition(5) := sprite2XReg
  io.spriteYPosition(5) := sprite2YReg
  io.spriteFlipHorizontal(5) := sprite2FlipHorizontalReg
  io.spriteXPosition(6) := sprite6XReg
  io.spriteYPosition(6) := sprite6YReg
  io.spriteFlipHorizontal(6) := sprite6FlipHorizontalReg

  //Counters for autonomous moving
  val cntSprite1 = RegInit(0.U(9.W)) //Moving sprite 1 & 4 (Apple)
  val cntSprite2 = RegInit(0.U(9.W)) //Moving sprite 2 & 5 (Trump)
  val cntSprite6 = RegInit(0.U(9.W)) //Moving sprite 6 (Bubble)

  //Counter for background animations
  val cntBack1 = RegInit(0.U(7.W)) //Animating seagull (changes every 63 frames)

  //Scaling sprites
  io.spriteScaleDownHorizontal(6) := true.B //Bubble sprite scaled down
  io.spriteScaleDownVertical(6) := true.B

  //FSMD switch
  switch(stateReg) {
    is(idle) {
      when(io.newFrame) {
        stateReg := fishMove
      }
    }

    is(fishMove) { //Controls the red fish' movement
      when(io.sw(0)) {
        when(io.btnU) {
          when(viewBoxYReg > 0.U) {
            viewBoxYReg := viewBoxYReg - 2.U
          }
        }
        when(io.btnD) {
          when(viewBoxYReg < 480.U) {
            viewBoxYReg := viewBoxYReg + 2.U
          }
        }
        when(io.btnL) {
          when(viewBoxXReg > 0.U) {
            viewBoxXReg := viewBoxXReg - 2.U
          }
        }
        when(io.btnR) {
          when(viewBoxXReg < 640.U) {
            viewBoxXReg := viewBoxXReg + 2.U
          }
        }
      }.otherwise {
        when(io.btnD){
          when(sprite0YReg < (480 - 32 - 24).S) {
            sprite0YReg := sprite0YReg + 2.S
          }
        } .elsewhen(io.btnU){
          when(sprite0YReg > (96).S) {
            sprite0YReg := sprite0YReg - 2.S
          }
        }
        when(io.btnR) {
          when(sprite0XReg < (640 - 32 - 32).S) {
            sprite0XReg := sprite0XReg + 2.S
            sprite0FlipHorizontalReg := false.B
          }
        } .elsewhen(io.btnL){
          when(sprite0XReg > 32.S) {
            sprite0XReg := sprite0XReg - 2.S
            sprite0FlipHorizontalReg := true.B
          }
        }
      }
      stateReg := autonomousMove
    }

    is(autonomousMove) { //This state controls the autonomous moving sprites and their visibility (sprite 1 & 4 and sprite 2 & 5)
      when(cntSprite1 <= 45.U) {
        sprite1YReg := sprite1YReg - 2.S
        cntSprite1 := cntSprite1 + 1.U
        sprite1Visible := RegNext(true.B)
        sprite4Visible := RegNext(false.B)
      }.elsewhen(cntSprite1 > 45.U && cntSprite1 <= 91.U) {
        sprite1YReg := sprite1YReg + 2.S
        cntSprite1 := cntSprite1 + 1.U
        sprite1Visible := RegNext(false.B)
        sprite4Visible := RegNext(true.B)
      }.otherwise {
        cntSprite1 := 0.U
      }
      when(cntSprite2 <= 200.U) {
        sprite2XReg := sprite2XReg + 2.S
        cntSprite2 := cntSprite2 + 1.U
        sprite2FlipHorizontalReg := false.B
        sprite2Visible := RegNext(true.B)
        sprite5Visible := RegNext(false.B)
      }.elsewhen(cntSprite2 > 200.U && cntSprite2 <= 401.U) {
        sprite2XReg := sprite2XReg - 2.S
        cntSprite2 := cntSprite2 + 1.U
        sprite2FlipHorizontalReg := true.B
        sprite2Visible := RegNext(false.B)
        sprite5Visible := RegNext(true.B)
      }.elsewhen(cntSprite2 === 402.U) {
        cntSprite2 := 0.U
      }

      stateReg := backgroundAnimate
    }

    is(backgroundAnimate) { //Animates the seagull
      when(cntBack1 === 63.U) {
        io.backBufferWriteData := 8.U
        io.backBufferWriteAddress := 42.U
        io.backBufferWriteEnable := true.B
        cntBack1 := cntBack1 + 1.U
      }.elsewhen(cntBack1 === 126.U) {
        io.backBufferWriteData := 7.U
        io.backBufferWriteAddress := 42.U
        io.backBufferWriteEnable := true.B
        cntBack1 := 0.U
      }.otherwise {
        io.backBufferWriteEnable := false.B
        cntBack1 := cntBack1 + 1.U
      }

      stateReg := bubble
    }

    is(bubble) {
      when(cntSprite6 === 411.U) {
        sprite6YReg := 370.S
        sprite6Visible := true.B
        cntSprite6 := 0.U
      }.elsewhen(cntSprite6 < 290.U) {
        sprite6YReg := sprite6YReg - 1.S
        cntSprite6 := cntSprite6 + 1.U
      }.otherwise {
        sprite6Visible := false.B
        cntSprite6 := cntSprite6 + 1.U
      }

      when(sprite0XReg < sprite6XReg + 24.S && sprite6XReg < sprite0XReg + 32.S && sprite0YReg < sprite6YReg + 24.S && sprite6YReg < sprite0YReg + 15.S) {
        sprite6Visible := false.B
      }

      stateReg := done
    }

    is(done) {
      io.frameUpdateDone := true.B
      stateReg := idle
    }
  }

}

//////////////////////////////////////////////////////////////////////////////
// End of file
//////////////////////////////////////////////////////////////////////////////
