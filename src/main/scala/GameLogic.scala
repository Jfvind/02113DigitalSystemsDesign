//////////////////////////////////////////////////////////////////////////////
// Authors: Luca Pezzarossa
// Copyright: Technical University of Denmark - 2025
// Comments:
// This file contains the game logic. Implement yours here.
//////////////////////////////////////////////////////////////////////////////

import chisel3._
import chisel3.util._

class GameLogic(SpriteNumber: Int, BackTileNumber: Int, TuneNumber: Int) extends Module {
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
  val idle :: autonomousMove :: menu :: lvl1 :: lvl2 :: lvl3 :: move :: slut :: Nil = Enum(8)
  val stateReg = RegInit(idle)

  //Two registers holding the sprite sprite X and Y with the sprite initial position
  val sprite3XReg = RegInit(320.S(11.W)) //Cursor
  val sprite3YReg = RegInit(240.S(10.W))
  val sprite7XReg = RegInit(256.S(11.W)) //Lvl 1 button
  val sprite7YReg = RegInit(300.S(10.W))
  val sprite8XReg = RegInit(256.S(11.W)) //Lvl 1 button #2
  val sprite8YReg = RegInit(300.S(10.W))
  val sprite9XReg = RegInit(304.S(11.W)) //Lvl 2 button 
  val sprite9YReg = RegInit(300.S(10.W))
  val sprite10XReg = RegInit(304.S(11.W)) //Lvl 2 button #2
  val sprite10YReg = RegInit(300.S(10.W))
  val sprite11XReg = RegInit(352.S(11.W)) //Lvl 3 button
  val sprite11YReg = RegInit(300.S(10.W))
  val sprite12XReg = RegInit(352.S(11.W)) //Lvl 3 button #2
  val sprite12YReg = RegInit(300.S(10.W))
  val sprite13XReg = RegInit(320.S(11.W)) //not used
  val sprite13YReg = RegInit(240.S(10.W))
  val sprite14XReg = RegInit(320.S(11.W)) //Spaceship
  val sprite14YReg = RegInit(240.S(10.W))
  val sprite16XReg = RegInit(20.S(11.W)) //Seagull
  val sprite16YReg = RegInit(20.S(10.W))
  val sprite17XReg = RegInit(20.S(11.W))
  val sprite17YReg = RegInit(50.S(10.W))
  val sprite18XReg = RegInit(20.S(11.W))
  val sprite18YReg = RegInit(80.S(10.W))
  val sprite19XReg = RegInit(20.S(11.W))
  val sprite19YReg = RegInit(110.S(10.W))
  val sprite20XReg = RegInit(20.S(11.W))
  val sprite20YReg = RegInit(140.S(10.W))

  //A registers holding the sprite horizontal flip
  val sprite3FlipHorizontalReg = RegInit(false.B)
  val sprite7FlipHorizontalReg = RegInit(false.B)
  val sprite8FlipHorizontalReg = RegInit(false.B)
  val sprite9FlipHorizontalReg = RegInit(false.B)
  val sprite10FlipHorizontalReg = RegInit(false.B)
  val sprite11FlipHorizontalReg = RegInit(false.B)
  val sprite12FlipHorizontalReg = RegInit(false.B)
  val sprite13FlipHorizontalReg = RegInit(false.B)
  val sprite14FlipHorizontalReg = RegInit(false.B)
  val sprite16FlipHorizontalReg = RegInit(false.B)
  val sprite17FlipHorizontalReg = RegInit(false.B)
  val sprite18FlipHorizontalReg = RegInit(false.B)
  val sprite19FlipHorizontalReg = RegInit(false.B)
  val sprite20FlipHorizontalReg = RegInit(false.B)

  //Registers controlling vertical flip
  val sprite3FlipVerticalReg = RegInit(false.B)
  val sprite7FlipVerticalReg = RegInit(false.B)
  val sprite8FlipVerticalReg = RegInit(false.B)
  val sprite9FlipVerticalReg = RegInit(false.B)
  val sprite10FlipVerticalReg = RegInit(false.B)
  val sprite11FlipVerticalReg = RegInit(false.B)
  val sprite12FlipVerticalReg = RegInit(false.B)
  val sprite13FlipVerticalReg = RegInit(false.B)
  val sprite14FlipVerticalReg = RegInit(false.B)
  val sprite16FlipVerticalReg = RegInit(false.B)
  val sprite17FlipVerticalReg = RegInit(false.B)
  val sprite18FlipVerticalReg = RegInit(false.B)
  val sprite19FlipVerticalReg = RegInit(false.B)
  val sprite20FlipVerticalReg = RegInit(false.B)

  //Visibility registers
  val sprite3Visible = RegInit(true.B)
  val sprite7Visible = RegInit(false.B)
  val sprite8Visible = RegInit(false.B)
  val sprite9Visible = RegInit(false.B)
  val sprite10Visible = RegInit(false.B)
  val sprite11Visible = RegInit(false.B)
  val sprite12Visible = RegInit(false.B)
  val sprite13Visible = RegInit(false.B)
  val sprite14Visible = RegInit(false.B)
  val sprite16Visible = RegInit(false.B)
  val sprite17Visible = RegInit(false.B)
  val sprite18Visible = RegInit(false.B)
  val sprite19Visible = RegInit(false.B)
  val sprite20Visible = RegInit(false.B)

  // Connecting visibility registers to the graphic engine
  io.spriteVisible(3) := sprite3Visible
  io.spriteVisible(7) := sprite7Visible
  io.spriteVisible(8) := sprite8Visible
  io.spriteVisible(9) := sprite9Visible
  io.spriteVisible(10) := sprite10Visible
  io.spriteVisible(11) := sprite11Visible
  io.spriteVisible(12) := sprite12Visible
  io.spriteVisible(13) := sprite13Visible
  io.spriteVisible(14) := sprite14Visible
  io.spriteVisible(16) := sprite16Visible
  io.spriteVisible(17) := sprite17Visible
  io.spriteVisible(18) := sprite18Visible
  io.spriteVisible(19) := sprite19Visible
  io.spriteVisible(20) := sprite20Visible

  //Connecting resiters to the graphic engine
  io.spriteXPosition(3) := sprite3XReg
  io.spriteYPosition(3) := sprite3YReg
  io.spriteFlipHorizontal(3) := sprite3FlipHorizontalReg
  io.spriteFlipVertical(3) := sprite3FlipVerticalReg
  io.spriteXPosition(7) := sprite7XReg
  io.spriteYPosition(7) := sprite7YReg
  io.spriteFlipHorizontal(7) := sprite7FlipHorizontalReg
  io.spriteFlipVertical(7) := sprite7FlipVerticalReg
  io.spriteXPosition(8) := sprite8XReg
  io.spriteYPosition(8) := sprite8YReg
  io.spriteFlipHorizontal(8) := sprite8FlipHorizontalReg
  io.spriteFlipVertical(8) := sprite8FlipVerticalReg
  io.spriteXPosition(9) := sprite9XReg
  io.spriteYPosition(9) := sprite9YReg
  io.spriteFlipHorizontal(9) := sprite9FlipHorizontalReg
  io.spriteFlipVertical(9) := sprite9FlipVerticalReg
  io.spriteXPosition(10) := sprite10XReg
  io.spriteYPosition(10) := sprite10YReg
  io.spriteFlipHorizontal(10) := sprite10FlipHorizontalReg
  io.spriteFlipVertical(10) := sprite10FlipVerticalReg
  io.spriteXPosition(11) := sprite11XReg
  io.spriteYPosition(11) := sprite11YReg
  io.spriteFlipHorizontal(11) := sprite11FlipHorizontalReg
  io.spriteFlipVertical(11) := sprite11FlipVerticalReg
  io.spriteXPosition(12) := sprite12XReg
  io.spriteYPosition(12) := sprite12YReg
  io.spriteFlipHorizontal(12) := sprite12FlipHorizontalReg
  io.spriteFlipVertical(12) := sprite12FlipVerticalReg
  io.spriteXPosition(13) := sprite13XReg
  io.spriteYPosition(13) := sprite13YReg
  io.spriteFlipHorizontal(13) := sprite13FlipHorizontalReg
  io.spriteFlipVertical(13) := sprite13FlipVerticalReg
  io.spriteXPosition(14) := sprite3XReg
  io.spriteYPosition(14) := sprite3YReg
  io.spriteFlipHorizontal(14) := sprite14FlipHorizontalReg
  io.spriteFlipVertical(14) := sprite14FlipVerticalReg
  io.spriteXPosition(16) := sprite16XReg
  io.spriteYPosition(16) := sprite16YReg
  io.spriteFlipHorizontal(16) := sprite16FlipHorizontalReg
  io.spriteFlipVertical(16) := sprite16FlipVerticalReg
  io.spriteXPosition(17) := sprite17XReg
  io.spriteYPosition(17) := sprite17YReg
  io.spriteFlipHorizontal(17) := sprite17FlipHorizontalReg
  io.spriteFlipVertical(17) := sprite17FlipVerticalReg
  io.spriteXPosition(18) := sprite18XReg
  io.spriteYPosition(18) := sprite18YReg
  io.spriteFlipHorizontal(18) := sprite18FlipHorizontalReg
  io.spriteFlipVertical(18) := sprite18FlipVerticalReg
  io.spriteXPosition(19) := sprite19XReg
  io.spriteYPosition(19) := sprite19YReg
  io.spriteFlipHorizontal(19) := sprite19FlipHorizontalReg
  io.spriteFlipVertical(19) := sprite19FlipVerticalReg
  io.spriteXPosition(20) := sprite20XReg
  io.spriteYPosition(20) := sprite20YReg
  io.spriteFlipHorizontal(20) := sprite20FlipHorizontalReg
  io.spriteFlipVertical(20) := sprite20FlipVerticalReg

  //Two registers holding the view box X and Y
  val viewBoxXReg = RegInit(0.U(10.W))
  val viewBoxYReg = RegInit(0.U(9.W))

  //Connecting registers to the graphic engine
  io.viewBoxX := viewBoxXReg
  io.viewBoxY := viewBoxYReg
  
  //Level active signals
  val lvl1Reg = RegInit(false.B)
  val lvl2Reg = RegInit(false.B)
  val lvl3Reg = RegInit(false.B)

  //Dificulty control variables
  val difficulty = Module(new Difficulty)
  val spawnSprite = RegInit(false.B)
  val speed = difficulty.io.speed
  val damage = difficulty.io.damage
  val lvlReg = RegInit(0.U(2.W))
  difficulty.io.level := lvlReg
  when(difficulty.io.spawnEnable) {
    spawnSprite := true.B
  }

  //Controls which sprite to throw
  val spriteCnt = RegInit(16.U(5.W))

  val lfsr = Module(new LFSR)

  switch(stateReg) {
    is(idle) {
      when(io.newFrame) {
        stateReg := autonomousMove
      }
    }

    is(autonomousMove) {
      //mux to control visibility and position of sprites
      when(lvl1Reg || lvl2Reg || lvl3Reg) {
        when(spawnSprite) {
        // Make the current sprite visible
        when(spriteCnt === 16.U && sprite16Visible === false.B) {
          sprite16Visible := true.B
          sprite16XReg := -32.S
          // Use a new random value for Y position each spawn
          sprite16YReg := ((lfsr.io.out * 2.U) % 448.U).asSInt // 448 = 480-32, keeps sprite on screen
        }
        when(spriteCnt === 17.U) {
          sprite17Visible := true.B
        }
        when(spriteCnt === 18.U) {
          sprite18Visible := true.B
        }
        when(spriteCnt === 19.U) {
          sprite19Visible := true.B
        }
        when(spriteCnt === 20.U) {
          sprite20Visible := true.B
          spriteCnt := 15.U
        }
        
        // Increment sprite counter for next spawn
        spriteCnt := spriteCnt + 1.U
        spawnSprite := false.B
        }
      }

      //Controlling movement of sprites
      when(sprite16Visible) {
        sprite16XReg := sprite16XReg + 5.S //difficulty.io.speed
      }

      //Mux controlling collision of sprites
      when(sprite16XReg === 340.S) { //|| (sprite16XReg < sprite14XReg + 32.S && sprite14XReg < sprite16XReg + 32.S && sprite16YReg < sprite14YReg + 32.S && sprite14YReg < sprite16YReg + 32.S)) {
        sprite16Visible := false.B
      }

      stateReg := menu
    }

    is(menu) {
      when(lvl1Reg || lvl2Reg || lvl3Reg) {
        stateReg := move
      }.otherwise {
        sprite7Visible := true.B
        sprite8Visible := false.B
        sprite9Visible := true.B
        sprite10Visible := false.B
        sprite11Visible := true.B
        sprite12Visible := false.B
        when(sprite3XReg > 227.S && sprite3XReg < 259.S && sprite3YReg > 300.S && sprite3YReg < 332.S) {
          sprite7Visible := false.B
          sprite8Visible := true.B
          when(io.btnC) {
            lvl1Reg := true.B
            stateReg := lvl1
          }.otherwise {
            stateReg := move
          }
        }.elsewhen(sprite3XReg > 275.S && sprite3XReg < 307.S && sprite3YReg > 300.S && sprite3YReg < 332.S) {
          sprite9Visible := false.B
          sprite10Visible := true.B
          when(io.btnC) {
            lvl2Reg := true.B
            stateReg := lvl2
          }.otherwise {
            stateReg := move
          }
        }.elsewhen(sprite3XReg > 323.S && sprite3XReg < 355.S && sprite3YReg > 300.S && sprite3YReg < 332.S) {
          sprite11Visible := false.B
          sprite12Visible := true.B
          when(io.btnC) {
            lvl3Reg := true.B
            stateReg := lvl3
          }.otherwise {
            stateReg := move
          }
        }.otherwise {
          stateReg := move
        }
      }
    }

    is(lvl1) {
      sprite3XReg := (640-32).S
      sprite3YReg := 320.S
      sprite3Visible := false.B
      sprite7Visible := false.B
      sprite8Visible := false.B
      sprite9Visible := false.B
      sprite10Visible := false.B
      sprite11Visible := false.B
      sprite12Visible := false.B
      sprite14Visible := true.B
      viewBoxXReg := 640.U
      viewBoxYReg := 0.U
      lvlReg := 1.U

      stateReg := move
    }

    is(lvl2) {
      sprite3XReg := (640-32).S
      sprite3YReg := 320.S
      sprite3Visible := false.B
      sprite7Visible := false.B
      sprite8Visible := false.B
      sprite9Visible := false.B
      sprite10Visible := false.B
      sprite11Visible := false.B
      sprite12Visible := false.B
      sprite14Visible := true.B
      viewBoxXReg := 0.U
      viewBoxYReg := 480.U
      lvlReg := 2.U

      stateReg := move
    }

    is(lvl3) {
      sprite3XReg := (640-32).S
      sprite3YReg := 320.S
      sprite3Visible := false.B
      sprite7Visible := false.B
      sprite8Visible := false.B
      sprite9Visible := false.B
      sprite10Visible := false.B
      sprite11Visible := false.B
      sprite12Visible := false.B
      sprite14Visible := true.B
      viewBoxXReg := 640.U
      viewBoxYReg := 480.U
      lvlReg := 3.U

      stateReg := move
    }

    is(move) {
      when(lvl1Reg || lvl2Reg || lvl3Reg) {
        when(io.btnD){
          when(sprite3YReg < (480 - 32).S) {
            sprite3YReg := sprite3YReg + 2.S
          }
        } .elsewhen(io.btnU){
          when(sprite3YReg > 32.S) {
            sprite3YReg := sprite3YReg - 2.S
          }
        }
      }.otherwise {
        when(io.btnD){
          when(sprite3YReg < (480 - 32).S) {
            sprite3YReg := sprite3YReg + 2.S
          }
        } .elsewhen(io.btnU){
          when(sprite3YReg > 32.S) {
            sprite3YReg := sprite3YReg - 2.S
          }
        }
        when(io.btnR) {
          when(sprite3XReg < (640 - 32).S) {
            sprite3XReg := sprite3XReg + 2.S
          }
        } .elsewhen(io.btnL){
          when(sprite3XReg > 32.S) {
            sprite3XReg := sprite3XReg - 2.S
          }
        }
      }
      stateReg := slut
    }

    is(slut) {
      io.frameUpdateDone := true.B
      stateReg := idle
    }
  }
}

//////////////////////////////////////////////////////////////////////////////
// End of file
//////////////////////////////////////////////////////////////////////////////