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
  val idle :: autonomousMove :: menu :: lvlInit :: move :: slut :: gameOver :: Nil = Enum(7)
  val stateReg = RegInit(idle)

  //===========================================
  //===========INITALIZATIONS==================
  //===========================================

  //TRegisters holding X,Y positions and visibility and flips of the sprites
  // Register that represents the scaletype of the respective obstacles
  val spriteXRegs = RegInit(VecInit(Seq.fill(64)(0.S(11.W))))
  val spriteYRegs = RegInit(VecInit(Seq.fill(64)(0.S(10.W))))
  val spriteFlipHorizontalRegs = RegInit(VecInit(Seq.fill(64)(false.B)))
  val spriteFlipVerticalRegs = RegInit(VecInit(Seq.fill(64)(false.B)))
  val spriteVisibleRegs = RegInit(VecInit(Seq.fill(64)(false.B)))
  val spriteScaleTypeRegs = RegInit(VecInit(Seq.fill(30)(0.U(1.W)))) // 30 registers, type 0/1 --> scale 1x/2x



  // Define initial positions as a lookup table
  val initializePositions = RegInit(true.B)
  when(initializePositions) {
    val initialPositions = Seq(
    (3, 320, 240),   // Cursor
    (7, 256, 300),   // Lvl 1 button
    (8, 256, 300),   // Lvl 1 button #2
    (9, 304, 300),   // Lvl 2 button
    (10, 304, 300),  // Lvl 2 button #2
    (11, 352, 300),  // Lvl 3 button
    (12, 352, 300),  // Lvl 3 button #2
    (13, 320, 240),  // not used
    (14, 608, 240),  // Spaceship
    (16, 360, 20),   // Seagull x10
    (17, 20, 50), (18, 20, 80), (19, 20, 110), (20, 20, 140), (21, 20, 170),
    (22, 20, 200), (23, 20, 230), (24, 20, 260), (25, 20, 290),
    (26, 20, 290), //Satelite x10
    (27, 20, 290), (28, 20, 290), (29, 20, 290), (30, 20, 290), (31, 20, 290),
    (32, 20, 290), (33, 20, 290), (34, 20, 290), (35, 20, 290),
    (36, 20, 290), //Meteor x10
    (37, 20, 290), (38, 20, 290), (39, 20, 290), (40, 20, 290), (41, 20, 290),
    (42, 20, 290), (43, 20, 290), (44, 20, 290), (45, 20, 290),
    (46, 20, 290), //Gameover x6
    (47, 20, 290), (48, 20, 290), (49, 20, 290), (50, 20, 290), (51, 20, 290),
    (52, 20, 290), //Return x6
    (53, 20, 290), (54, 20, 290), (55, 20, 290), (56, 20, 290), (57, 20, 290),
    (58, 320, 20), (59, 500, 70), (60, 150, 100), //star x3
    (61, 20, 20), (62, 60, 20), (63, 100, 20) //heart 3x
    ).map { case (id, x, y) => (id.U, x.S, y.S) }

    // Initialize in a loop
    for ((id, x, y) <- initialPositions) {
      spriteXRegs(id) := x
      spriteYRegs(id) := y
    }
    initializePositions := false.B
  }

  //Scalint registers
  val sprite58ScaleUpHorizontal = RegInit(false.B)
  val sprite58ScaleUpVertical = RegInit(false.B)
  val sprite59ScaleUpHorizontal = RegInit(false.B)
  val sprite59ScaleUpVertical = RegInit(false.B)
  val sprite60ScaleUpHorizontal = RegInit(false.B)
  val sprite60ScaleUpVertical = RegInit(false.B)

  //Connecting registers to outputs
  for (i <- 3 to 63) {
    io.spriteVisible(i) := spriteVisibleRegs(i)
  }
  for (i <- 3 to 63) {
    io.spriteXPosition(i) := spriteXRegs(i)
    io.spriteYPosition(i) := spriteYRegs(i)
    io.spriteFlipHorizontal(i) := spriteFlipHorizontalRegs(i)
    io.spriteFlipVertical(i) := spriteFlipVerticalRegs(i)
  }

  //Connecting scaling
  io.spriteScaleUpHorizontal(58) := sprite58ScaleUpHorizontal
  io.spriteScaleUpVertical(58) := sprite58ScaleUpVertical
  io.spriteScaleUpHorizontal(59) := sprite59ScaleUpHorizontal
  io.spriteScaleUpVertical(59) := sprite59ScaleUpVertical
  io.spriteScaleUpHorizontal(60) := sprite60ScaleUpHorizontal
  io.spriteScaleUpVertical(60) := sprite60ScaleUpVertical

  //Two registers holding the view box X and Y
  val viewBoxXReg = RegInit(0.U(10.W))
  val viewBoxYReg = RegInit(0.U(9.W))

  //Connecting registers to the graphic engine
  io.viewBoxX := viewBoxXReg
  io.viewBoxY := viewBoxYReg

  //Dificulty control variables
  val difficulty = Module(new Difficulty)
  val speed = difficulty.io.speed
  val lvlReg = RegInit(0.U(2.W))
  difficulty.io.level := lvlReg
  val spawnCounter = RegInit(0.U(8.W))
  val spawnReady = spawnCounter >= difficulty.io.spawnInterval


  //Score Register
  val scoreReg = RegInit(0.U(16.W))
  val currentScore = difficulty.io.score

  //Liv Reg
  val livesReg = RegInit(3.U(3.W)) // Start med 3 liv

  //Extra life (power-up) counter
  val extraLifeCnt = RegInit(0.U(10.W))

  //nulstil speed
  difficulty.io.resetSpeed := (stateReg === menu && livesReg === 3.U)

  //First time spawning sprites registers
  val spawnDelayCounter = RegInit(0.U(8.W))
  val nextSpriteToSpawn = RegInit(0.U(6.W)) // Tracks which sprite to spawn next

  //Controls stars sparkling
  val starCnt = RegInit(0.U(10.W))

  //Collision and blinking af collision registers
  val collisionDetected = RegInit(false.B)
  val blinkCounter = RegInit(0.U(8.W)) // Enough for 1 second at 60Hz (0-59)
  val blinkTimes = RegInit(0.U(2.W))   // Counts up to 3 blinks
  val isBlinking = RegInit(false.B)

  //Counts how many cycles are spent in move state
  val moveCnt = RegInit(0.U(5.W))

  //LFSR for pseudo random numberselection
  val lfsr = Module(new LFSR)

  //=================Score and health=================
  when(lvlReg =/= 0.U) {
    when(livesReg === 3.U) {
      spriteVisibleRegs(61) := true.B
      spriteVisibleRegs(62) := true.B
      spriteVisibleRegs(63) := true.B
    }.elsewhen(livesReg === 2.U) {
      spriteVisibleRegs(61) := true.B
      spriteVisibleRegs(62) := true.B
      spriteVisibleRegs(63) := false.B
    }.elsewhen(livesReg === 1.U) {
      spriteVisibleRegs(61) := true.B
      spriteVisibleRegs(62) := false.B
      spriteVisibleRegs(63) := false.B
    }.otherwise {
      spriteVisibleRegs(61) := false.B
      spriteVisibleRegs(62) := false.B
      spriteVisibleRegs(63) := false.B
    }
  }.otherwise {
    spriteVisibleRegs(61) := false.B
    spriteVisibleRegs(62) := false.B
    spriteVisibleRegs(63) := false.B
  }

  //===========================================
  //===========STATE MACHINE===================
  //===========================================

  switch(stateReg) {
    is(idle) {
      when(io.newFrame) {
        stateReg := autonomousMove
      }
    }

    is(autonomousMove) {
      //=================OBSTACLES RANDOM RESPAWNING + RAND SCALE===================
      //Scoring
      scoreReg := currentScore
      // Spawn logic
      spawnCounter := Mux(spawnReady, 0.U, spawnCounter + 1.U)
      val spawnConditions = (lvlReg =/= 0.U) //&& spawnReady

      when(spawnConditions) {
        //Sprites respawning on the left side, when exiting viewbox on the right side and move logic
        //lvl1 obstacles
        for (i <- 16 to 25) {
          val index = i - 16

          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (100.U + (lfsr.io.out(i - 16) % 240.U)).asSInt

            spriteScaleTypeRegs(index) := lfsr.io.out(index)(8)
           
          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }

          // Logik for selveste skaleringen
          when(spriteScaleTypeRegs(index) === 0.U) {
            io.spriteScaleUpHorizontal(i) := false.B // Ingen skalering i x-retning
            io.spriteScaleUpVertical(i) := false.B // Ingen skalering i y-retning
          } .otherwise {
            io.spriteScaleUpHorizontal(i) := true.B // 2x skalering i x-retning
            io.spriteScaleUpVertical(i) := true.B // 2x skalering i y-retning
          }
        }
        //lvl2 obstacles
        for (i <- 26 to 35) {
          val index = i - 26

          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (100.U + (lfsr.io.out(i - 26) % 240.U)).asSInt

            spriteScaleTypeRegs(index) := lfsr.io.out(index)(8)

          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }

          // Logik for selveste skaleringen
          when(spriteScaleTypeRegs(index) === 0.U) {
            io.spriteScaleUpHorizontal(i) := false.B // ingen skalering i x-retning
            io.spriteScaleUpVertical(i) := false.B // ingen skalering i y-retning
          } .otherwise {
            io.spriteScaleUpHorizontal(i) := true.B // 2x skalering i x-retning
            io.spriteScaleUpVertical(i) := true.B // 2x skalering i y-retning
          }
        }
        //lvl3 obstacles
        for (i <- 36 to 45) {
          val index = i - 36

          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (100.U + (lfsr.io.out(i - 16) % 240.U)).asSInt


            spriteScaleTypeRegs(index) := lfsr.io.out(index)(8)

          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }

          // Logik for selveste skaleringen
          when (spriteScaleTypeRegs(index) === 0.U) {
            io.spriteScaleUpHorizontal(i) := false.B // ingen skalering i x-retning
            io.spriteScaleUpVertical(i) := false.B // ingen skalering i y-retning
          } .otherwise {
            io.spriteScaleUpHorizontal(i) := true.B // 2x skalering i x-retning
            io. spriteScaleUpVertical(i) := true.B // 2x skalering i y-retning
          }
        }

        //spawning extra life
        when(extraLifeCnt === 600.U) {
          spriteXRegs(13) := -32.S
          spriteVisibleRegs(13) := true.B
          spriteYRegs(13) := (lfsr.io.out(0)).asSInt
          extraLifeCnt := 0.U
        }.otherwise {
          extraLifeCnt := extraLifeCnt + 1.U
        }
        when(spriteVisibleRegs(13)) {
          spriteXRegs(13) := spriteXRegs(13) + 2.S
        }
        when(spriteXRegs(13) >= 640.S) {
          spriteVisibleRegs(13) := false.B
        }
      }

      //==============OBSTACLES FIRST SPAWN===============
      when(lvlReg === 1.U) {
        // Spawn sprites 16-25 with delay
        when(spawnDelayCounter === 0.U && nextSpriteToSpawn < 10.U) {
          spriteVisibleRegs(16.U + nextSpriteToSpawn) := true.B
          nextSpriteToSpawn := nextSpriteToSpawn + 1.U
          spawnDelayCounter := 30.U // 30 frame delay between spawns
        }.elsewhen(spawnDelayCounter > 0.U) {
          spawnDelayCounter := spawnDelayCounter - 1.U
        }
      }.elsewhen(lvlReg === 2.U) {
        // Similar logic for level 2 sprites (26-35)
        when(spawnDelayCounter === 0.U && nextSpriteToSpawn < 10.U) {
          spriteVisibleRegs(26.U + nextSpriteToSpawn) := true.B
          nextSpriteToSpawn := nextSpriteToSpawn + 1.U
          spawnDelayCounter := 25.U // Faster spawning for level 2
        }.elsewhen(spawnDelayCounter > 0.U) {
          spawnDelayCounter := spawnDelayCounter - 1.U
        }
      }.elsewhen(lvlReg === 3.U) {
        // Logic for level 3 sprites (36-45)
        when(spawnDelayCounter === 0.U && nextSpriteToSpawn < 10.U) {
          spriteVisibleRegs(36.U + nextSpriteToSpawn) := true.B
          nextSpriteToSpawn := nextSpriteToSpawn + 1.U
          spawnDelayCounter := 20.U // Even faster spawning for level 3
        }.elsewhen(spawnDelayCounter > 0.U) {
          spawnDelayCounter := spawnDelayCounter - 1.U
        }
      }

      //==================SPACESHIP COLLISION==================
      // Collision detection for sprites 16 to 45
      //lvl1 obstacles
      when(!isBlinking) {
        for (i <- 16 to 25) {
          when(
            spriteVisibleRegs(i) && (spriteXRegs(i) <= 640.S) &&
              (spriteXRegs(14) < spriteXRegs(i) + 26.S) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
              (spriteYRegs(14) < spriteYRegs(i) + 15.S) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
          ) {
            collisionDetected := true.B
          }
        }
      }
      //lvl2 obstacles
      when(!isBlinking) {
        for (i <- 26 to 35) {
          when(
            spriteVisibleRegs(i) &&
              (spriteXRegs(14) < spriteXRegs(i) + 29.S) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
              (spriteYRegs(14) < spriteYRegs(i) + 15.S) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
          ) {
            collisionDetected := true.B
          }
        }
      }
      //lvl3 obstacles
      when(!isBlinking) {
        for (i <- 36 to 45) {
          when(
            spriteVisibleRegs(i) &&
              (spriteXRegs(14) < spriteXRegs(i) + 32.S) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
              (spriteYRegs(14) < spriteYRegs(i) + 15.S) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
          ) {
            collisionDetected := true.B
          }
        }
      }

      //extra life collision
      when(
        spriteVisibleRegs(13) &&
        (spriteXRegs(14) < spriteXRegs(13) + 22.S) && (spriteXRegs(13) < spriteXRegs(14) + 8.S) &&
        (spriteYRegs(14) < spriteYRegs(13) + 22.S) && (spriteYRegs(13) < spriteYRegs(14) + 11.S)
      ) {
        spriteVisibleRegs(13) := false.B
        when(livesReg < 3.U) {
          livesReg := livesReg + 1.U
        }
      }

      // Start blinking if collision detected and not already blinking
      when(collisionDetected && !isBlinking) {
        isBlinking := true.B
        blinkCounter := 0.U
        blinkTimes := 0.U
      }

      // Blinking logic: 3 times within a second (assuming 60Hz frame rate)
      when(isBlinking) {
        // Toggle visibility every 10 frames (~6 times per second)
        when(blinkCounter < 10.U) {
          spriteVisibleRegs(14) := false.B
        }.elsewhen(blinkCounter < 20.U) {
          spriteVisibleRegs(14) := true.B
        }
        blinkCounter := blinkCounter + 1.U
        when(blinkCounter === 20.U) {
          blinkCounter := 0.U
          blinkTimes := blinkTimes + 1.U
        }
        when(blinkTimes === 3.U) {
          isBlinking := false.B
          spriteVisibleRegs(14) := true.B
          when(livesReg <= 1.U) {
            livesReg := 0.U
            stateReg := gameOver
          }.otherwise {
            livesReg := livesReg - 1.U
          }
          collisionDetected := false.B
        }
      }


      //==================STAR SPRITES(lvl3)==================
      // Multiplexer controlling visibility of the stars (only visible in lvl3)
      when(lvlReg === 3.U) {
        spriteVisibleRegs(58) := true.B
        spriteVisibleRegs(59) := true.B
        spriteVisibleRegs(60) := true.B
      }.otherwise {
        spriteVisibleRegs(58) := false.B
        spriteVisibleRegs(59) := false.B
        spriteVisibleRegs(60) := false.B
      }

      // Mux to make stars blink and switch positions (switch colours) in lvl3
      when(starCnt === 0.U) {
        spriteXRegs(58) := RegNext(spriteXRegs(59) - 16.S)
        spriteYRegs(58) := RegNext(spriteYRegs(59) - 16.S)
        spriteXRegs(59) := RegNext(spriteXRegs(60) - 16.S)
        spriteYRegs(59) := RegNext(spriteYRegs(60) - 16.S)
        spriteXRegs(60) := RegNext(spriteXRegs(58) - 16.S)
        spriteYRegs(60) := RegNext(spriteYRegs(58) - 16.S)
        sprite58ScaleUpHorizontal := true.B
        sprite59ScaleUpHorizontal := true.B
        sprite60ScaleUpHorizontal := true.B
        sprite58ScaleUpVertical := true.B
        sprite59ScaleUpVertical := true.B
        sprite60ScaleUpVertical := true.B
        starCnt := starCnt + 1.U
      }.elsewhen(starCnt === 60.U) {
        sprite58ScaleUpHorizontal := false.B
        sprite59ScaleUpHorizontal := false.B
        sprite60ScaleUpHorizontal := false.B
        sprite58ScaleUpVertical := false.B
        sprite59ScaleUpVertical := false.B
        sprite60ScaleUpVertical := false.B
        spriteXRegs(58) := spriteXRegs(58) + 16.S
        spriteXRegs(59) := spriteXRegs(59) + 16.S
        spriteXRegs(60) := spriteXRegs(60) + 16.S
        spriteYRegs(58) := spriteYRegs(58) + 16.S
        spriteYRegs(59) := spriteYRegs(59) + 16.S
        spriteYRegs(60) := spriteYRegs(60) + 16.S
        starCnt := starCnt + 1.U
      }.elsewhen(starCnt === 120.U) {
        spriteXRegs(58) := RegNext(spriteXRegs(59) - 16.S)
        spriteYRegs(58) := RegNext(spriteYRegs(59) - 16.S)
        spriteXRegs(59) := RegNext(spriteXRegs(60) - 16.S)
        spriteYRegs(59) := RegNext(spriteYRegs(60) - 16.S)
        spriteXRegs(60) := RegNext(spriteXRegs(58) - 16.S)
        spriteYRegs(60) := RegNext(spriteYRegs(58) - 16.S)
        sprite58ScaleUpHorizontal := true.B
        sprite59ScaleUpHorizontal := true.B
        sprite60ScaleUpHorizontal := true.B
        sprite58ScaleUpVertical := true.B
        sprite59ScaleUpVertical := true.B
        sprite60ScaleUpVertical := true.B
        starCnt := starCnt + 1.U
      }.elsewhen(starCnt === 180.U) {
        sprite58ScaleUpHorizontal := false.B
        sprite59ScaleUpHorizontal := false.B
        sprite60ScaleUpHorizontal := false.B
        sprite58ScaleUpVertical := false.B
        sprite59ScaleUpVertical := false.B
        sprite60ScaleUpVertical := false.B
        spriteXRegs(58) := spriteXRegs(58) + 16.S
        spriteXRegs(59) := spriteXRegs(59) + 16.S
        spriteXRegs(60) := spriteXRegs(60) + 16.S
        spriteYRegs(58) := spriteYRegs(58) + 16.S
        spriteYRegs(59) := spriteYRegs(59) + 16.S
        spriteYRegs(60) := spriteYRegs(60) + 16.S
        starCnt := starCnt + 1.U
      }.elsewhen(starCnt === 240.U) {
        spriteXRegs(58) := RegNext(spriteXRegs(59) - 16.S)
        spriteYRegs(58) := RegNext(spriteYRegs(59) - 16.S)
        spriteXRegs(59) := RegNext(spriteXRegs(60) - 16.S)
        spriteYRegs(59) := RegNext(spriteYRegs(60) - 16.S)
        spriteXRegs(60) := RegNext(spriteXRegs(58) - 16.S)
        spriteYRegs(60) := RegNext(spriteYRegs(58) - 16.S)
        sprite58ScaleUpHorizontal := true.B
        sprite59ScaleUpHorizontal := true.B
        sprite60ScaleUpHorizontal := true.B
        sprite58ScaleUpVertical := true.B
        sprite59ScaleUpVertical := true.B
        sprite60ScaleUpVertical := true.B
        starCnt := starCnt + 1.U
      }.elsewhen(starCnt === 300.U) {
        sprite58ScaleUpHorizontal := false.B
        sprite59ScaleUpHorizontal := false.B
        sprite60ScaleUpHorizontal := false.B
        sprite58ScaleUpVertical := false.B
        sprite59ScaleUpVertical := false.B
        sprite60ScaleUpVertical := false.B
        spriteXRegs(58) := spriteXRegs(58) + 16.S
        spriteXRegs(59) := spriteXRegs(59) + 16.S
        spriteXRegs(60) := spriteXRegs(60) + 16.S
        spriteYRegs(58) := spriteYRegs(58) + 16.S
        spriteYRegs(59) := spriteYRegs(59) + 16.S
        spriteYRegs(60) := spriteYRegs(60) + 16.S
        starCnt := starCnt + 1.U
      }.elsewhen(starCnt === 360.U) {
        starCnt := 0.U
      }.otherwise {
        starCnt := starCnt + 1.U
      }

      when(livesReg > 0.U) {
        stateReg := menu
      }
    }

    is(menu) {
      when(lvlReg =/= 0.U) {
        stateReg := move
      }.otherwise {
        // Collision detection for level selection buttons, and lvl select
        spriteVisibleRegs(3) := true.B
        spriteVisibleRegs(7) := true.B
        spriteVisibleRegs(8) := false.B
        spriteVisibleRegs(9) := true.B
        spriteVisibleRegs(10) := false.B
        spriteVisibleRegs(11) := true.B
        spriteVisibleRegs(12) := false.B

        when(spriteXRegs(3) > 227.S && spriteXRegs(3) < 259.S && spriteYRegs(3) > 300.S && spriteYRegs(3) < 332.S) {
          spriteVisibleRegs(7) := false.B
          spriteVisibleRegs(8) := true.B
          when(io.btnC) {
            lvlReg := 1.U
            stateReg := lvlInit
          }.otherwise {
            stateReg := move
          }
        }.elsewhen(spriteXRegs(3) > 275.S && spriteXRegs(3) < 307.S && spriteYRegs(3) > 300.S && spriteYRegs(3) < 332.S) {
          spriteVisibleRegs(9) := false.B
          spriteVisibleRegs(10) := true.B
          when(io.btnC) {
            lvlReg := 2.U
            stateReg := lvlInit
          }.otherwise {
            stateReg := move
          }
        }.elsewhen(spriteXRegs(3) > 323.S && spriteXRegs(3) < 355.S && spriteYRegs(3) > 300.S && spriteYRegs(3) < 332.S) {
          spriteVisibleRegs(11) := false.B
          spriteVisibleRegs(12) := true.B
          when(io.btnC) {
            lvlReg := 3.U
            stateReg := lvlInit
          }.otherwise {
            stateReg := move
          }
        }.otherwise {
          stateReg := move
        }
      }
    }

    is(lvlInit) {
      nextSpriteToSpawn := 0.U
      spawnDelayCounter := 0.U

      spriteXRegs(14) := (640-32).S
      spriteYRegs(14) := 320.S
      spriteVisibleRegs(3) := false.B
      spriteVisibleRegs(7) := false.B
      spriteVisibleRegs(8) := false.B
      spriteVisibleRegs(9) := false.B
      spriteVisibleRegs(10) := false.B
      spriteVisibleRegs(11) := false.B
      spriteVisibleRegs(12) := false.B
      spriteVisibleRegs(14) := true.B
      spriteVisibleRegs(61) := true.B
      spriteVisibleRegs(62) := true.B
      spriteVisibleRegs(63) := true.B
      when(lvlReg === 1.U) {
        viewBoxXReg := 640.U
        viewBoxYReg := 0.U
      }.elsewhen(lvlReg === 2.U) {
        viewBoxXReg := 0.U
        viewBoxYReg := 480.U
      }.elsewhen(lvlReg === 3.U) {
        viewBoxXReg := 640.U
        viewBoxYReg := 480.U
      }
      stateReg := move
    }

    is(move) {
      //Moving up and down for spaceship
      when(lvlReg =/= 0.U) {
        when(io.btnD){
          when(spriteYRegs(14) < (480 - 32).S) {
            spriteYRegs(14) := spriteYRegs(14) + 2.S
          }
        } .elsewhen(io.btnU){
          when(spriteYRegs(14) > 32.S) {
            spriteYRegs(14) := spriteYRegs(14) - 2.S
          }
        }
      }.otherwise {
        //Moving all four directions for foot-cursor
        when(io.btnD){
          when(spriteYRegs(3) < (480 - 32).S) {
            spriteYRegs(3) := spriteYRegs(3) + 2.S
          }
        } .elsewhen(io.btnU){
          when(spriteYRegs(3) > 32.S) {
            spriteYRegs(3) := spriteYRegs(3) - 2.S
          }
        }
        when(io.btnR) {
          when(spriteXRegs(3) < (640 - 32).S) {
            spriteXRegs(3) := spriteXRegs(3) + 2.S
          }
        } .elsewhen(io.btnL){
          when(spriteXRegs(3) > 32.S) {
            spriteXRegs(3) := spriteXRegs(3) - 2.S
          }
        }
      }
      stateReg := slut
    }
    is(gameOver) {
      // Deaktiver spilaktiviteter og vis game over-sprites
      spriteVisibleRegs(14) := false.B // skjul spiller

      // Game Over tekst
      spriteVisibleRegs(46) := true.B
      spriteVisibleRegs(47) := true.B
      spriteVisibleRegs(48) := true.B
      spriteVisibleRegs(49) := true.B
      spriteVisibleRegs(50) := true.B
      spriteVisibleRegs(51) := true.B
      // Return-knap
      spriteVisibleRegs(52) := true.B
      spriteVisibleRegs(53) := true.B
      spriteVisibleRegs(54) := true.B
      spriteVisibleRegs(55) := true.B
      spriteVisibleRegs(56) := true.B
      spriteVisibleRegs(57) := true.B

      // Cursor tilbage til aktiv
      spriteVisibleRegs(3)  := true.B

      // Hvis spilleren trykker knap, og cursor peger på return
      when(spriteXRegs(3) > 260.S && spriteXRegs(3) < 380.S && spriteYRegs(3) > 290.S && spriteYRegs(3) < 340.S && io.btnC) {
        stateReg := menu
        lvlReg := 0.U
        livesReg := 3.U
        scoreReg := 0.U
      }.otherwise {
        stateReg := move
      }
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