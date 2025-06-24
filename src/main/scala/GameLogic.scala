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

  //sound stop
  val stopTune0Pulse = WireDefault(false.B)
  val stopTune1Pulse = WireDefault(false.B)

  //Setting sound engine outputs to zero
  io.startTune := Seq.fill(TuneNumber)(false.B)
  io.stopTune := Seq.fill(TuneNumber)(false.B)
  io.pauseTune := Seq.fill(TuneNumber)(false.B)
  io.tuneId := 0.U
  io.stopTune(0) := stopTune0Pulse
  io.stopTune(1) := stopTune1Pulse

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
      (3, 320, 240), // Cursor
      (7, 256, 300), // Lvl 1 button
      (8, 256, 300), // Lvl 1 button #2
      (9, 304, 300), // Lvl 2 button
      (10, 304, 300), // Lvl 2 button #2
      (11, 352, 300), // Lvl 3 button
      (12, 352, 300), // Lvl 3 button #2
      (13, 320, 240), // not used
      (14, 608, 240), // Spaceship
      (16, 360, 20), // Seagull x10
      (17, 20, 50), (18, 20, 80), (19, 20, 110), (20, 20, 140), (21, 20, 170),
      (22, 20, 200), (23, 20, 230), (24, 20, 260), (25, 20, 290),
      (26, 20, 290), //Satelite x10
      (27, 20, 290), (28, 20, 290), (29, 20, 290), (30, 20, 290), (31, 20, 290),
      (32, 20, 290), (33, 20, 290), (34, 20, 290), (35, 20, 290),
      (36, 20, 290), //Meteor x10
      (37, 20, 290), (38, 20, 290), (39, 20, 290), (40, 20, 290), (41, 20, 290),
      (42, 20, 290), (43, 20, 290), (44, 20, 290), (45, 20, 290),
      (46, 224, 200), //Gameover x6
      (47, 256, 200), (48, 288, 200), (49, 320, 200), (50, 352, 200), (51, 384, 200),
      (52, 272, 260), //Return x6
      (53, 304, 260), (54, 336, 260), (55, 272, 260), (56, 304, 260), (57, 336, 260),
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
  for (i <- 16 to 45) {
    val index = if (i < 26) i - 16 else if (i < 36) i - 26 else i - 36
    io.spriteScaleUpHorizontal(i) := (spriteScaleTypeRegs(index) === 1.U)
    io.spriteScaleUpVertical(i) := (spriteScaleTypeRegs(index) === 1.U)
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
  val highScore = RegInit(VecInit(Seq.fill(3)(0.U(16.W))))
  val digits = Wire(Vec(4, UInt(4.W))) // 1000, 100, 10, 1's 
  val scoreWriteActive = RegInit(false.B) // er vi igang med at skrive?
  val scoreWriteCounter = RegInit(0.U(2.W)) // Værdier 0-3

  digits(0) := scoreReg / 1000.U
  digits(1) := (scoreReg % 1000.U) / 100.U
  digits(2) := (scoreReg % 100.U)   / 10.U
  digits(3) :=  scoreReg % 10.U

  //Liv Reg
  val livesReg = RegInit(3.U(3.W)) // Start med 3 liv

  //Extra life (power-up) counter
  val extraLifeCnt = RegInit(0.U(10.W))
  val shootingStarCnt = RegInit(0.U(10.W))
  val slowdownTimer = RegInit(0.U(9.W)) // Tæller op til 300 (≈ 5 sekunder ved 60Hz)
  difficulty.io.slowMode := false.B

  //When game is over and return is pressed
  val gameOverReturnPressed = RegInit(false.B)

  //nulstil speed
  difficulty.io.resetSpeed := gameOverReturnPressed

  //First time spawning sprites registers
  val spawnDelayCounter = RegInit(0.U(8.W))
  val nextSpriteToSpawn = RegInit(0.U(6.W)) // Tracks which sprite to spawn next

  //Controls stars sparkling
  val starCnt = RegInit(0.U(10.W))

  //Collision and blinking af collision registers
  val collisionDetected = RegInit(false.B)
  val blinkCounter = RegInit(0.U(8.W)) // Enough for 1 second at 60Hz (0-59)
  val blinkTimes = RegInit(0.U(2.W)) // Counts up to 3 blinks
  val isBlinking = RegInit(false.B)

  //Counts how many cycles are spent in move state
  val moveCnt = RegInit(0.U(5.W))

  //LFSR for pseudo random numberselection
  val lfsr = Module(new LFSR)

  //sound Reg
  // Sound control for tune 0 (life pickup)
  val tune0Active   = RegInit(false.B)
  val tune0Counter  = RegInit(0.U(6.W))

  // Sound control for tune 1 (asteroid hit)
  val tune1Active   = RegInit(false.B)
  val tune1Counter  = RegInit(0.U(6.W))

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

  val goWriteActive   = RegInit(false.B)   // skriver vi HS lige nu?
  val goWriteCounter  = RegInit(0.U(3.W))  // 0..4  (tile-3 + 4 cifre)

  // 35 / 615 / 635  (tile-3 kommer her)
  // 36–39 / 616–619 / 636–639  (cifrene)
  def hsBaseAddr(level: UInt): UInt = MuxLookup(level, 35.U)(Seq(
    1.U -> 427.U,
    2.U -> 1007.U,
    3.U -> 1027.U
  ))

  def hsRestoreTile(level: UInt): UInt = MuxLookup(level, 10.U)(Seq(
    1.U -> 10.U,
    2.U -> 21.U,
    3.U -> 29.U
  ))



  // 4 cifre fra highScore for aktuelt level – bruges i gameOver
  val hsVecIdx   = Mux(lvlReg === 0.U, 0.U, lvlReg - 1.U)   // lvlReg 1|2|3 → 0|1|2
  val curHiScore = highScore(hsVecIdx)

  val hiDigits = Wire(Vec(4, UInt(4.W)))
  hiDigits(0) := curHiScore / 1000.U
  hiDigits(1) := (curHiScore % 1000.U) / 100.U
  hiDigits(2) := (curHiScore % 100.U)  / 10.U
  hiDigits(3) :=  curHiScore % 10.U


  //?==========================================
  // -----------Helperfunktioner -------
  //===========================================

  def resetGame(): Unit = {
    lvlReg := 0.U
    livesReg := 3.U
    scoreReg := 0.U
    spawnDelayCounter := 0.U
    nextSpriteToSpawn := 0.U
    extraLifeCnt := 0.U
    shootingStarCnt := 0.U
    starCnt := 0.U
    collisionDetected := false.B
    isBlinking := false.B
    blinkCounter := 0.U
    blinkTimes := 0.U
    initializePositions := true.B

    // Reset spaceship og cursor position (valgfrit, hvis ikke initPositions klarer det)
    spriteVisibleRegs(3) := true.B // cursor
    spriteVisibleRegs(14) := false.B // spaceship

    // Skjul alle forhindringer
    for (i <- 16 to 45) {
      spriteVisibleRegs(i) := false.B
    }

    // Skjul game over og return sprites
    for (i <- 46 to 57) {
      spriteVisibleRegs(i) := false.B
    }
  }

  // Moves the sprite with the given index in all four directions based on button inputs
  def moveAllround(spriteIdx: Int): Unit = {
    when(io.btnD) {
      when(spriteYRegs(spriteIdx) < (480 - 32).S) {
        spriteYRegs(spriteIdx) := spriteYRegs(spriteIdx) + 2.S
      }
    }.elsewhen(io.btnU) {
      when(spriteYRegs(spriteIdx) > 32.S) {
        spriteYRegs(spriteIdx) := spriteYRegs(spriteIdx) - 2.S
      }
    }
    when(io.btnR) {
      when(spriteXRegs(spriteIdx) < (640 - 32).S) {
        spriteXRegs(spriteIdx) := spriteXRegs(spriteIdx) + 2.S
      }
    }.elsewhen(io.btnL) {
      when(spriteXRegs(spriteIdx) > 32.S) {
        spriteXRegs(spriteIdx) := spriteXRegs(spriteIdx) - 2.S
      }
    }
  }

  //Helpfunction: converting digits 0-9 to the correct tile position
  def mapDigitToTile(digit: UInt): UInt = {
    MuxLookup(digit, 5.U)(Seq(
      0.U -> 5.U,   // Digit 0  → Backtile 5
      1.U -> 7.U,   // Digit 1  → Backtile 7
      2.U -> 8.U,   // Digit 2  → Backtile 8
      3.U -> 9.U,   // Digit 3  → Backtile 9
      4.U -> 6.U,   // Digit 4  → Backtile 6
      5.U -> 59.U,  // Digit 5  → Backtile 59
      6.U -> 60.U,  // Digit 6  → Backtile 60
      7.U -> 61.U,  // Digit 7  → Backtile 61
      8.U -> 62.U,  // Digit 8  → Backtile 62
      9.U -> 63.U   // Digit 9  → Backtile 63
    ))
  } 

  // Base backtile adresses depending on the active lvl
  val baseAddress = MuxLookup(lvlReg, 36.U)(Seq(
    1.U -> 36.U,   // Level 1: tiles 36–39
    2.U -> 616.U,  // Level 2: tiles 616–619
    3.U -> 636.U   // Level 3: tiles 636–639
  ))


  //===========================================
  //===========STATE MACHINE===================
  //===========================================

  switch(stateReg) {
    is(idle) {
      when(io.newFrame) {
        when(gameOverReturnPressed) {
          // før resetGame()
          io.backBufferWriteEnable  := true.B
          io.backBufferWriteAddress := hsBaseAddr(lvlReg)
          io.backBufferWriteData    := hsRestoreTile(lvlReg)

          resetGame()
          gameOverReturnPressed := false.B
          stateReg := menu // or autonomousMove if you want to skip menu
        }.elsewhen(livesReg === 0.U) {
          stateReg := gameOver
        }.otherwise {
          stateReg := autonomousMove
        }
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
            spriteYRegs(i) := (lfsr.io.out(i - 16) + 60.U).asSInt

            spriteScaleTypeRegs(index) := lfsr.io.out(index + 10)(0)

          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }

          // Logik for selveste skaleringen
          when(spriteScaleTypeRegs(index) === 0.U) {
            io.spriteScaleUpHorizontal(i) := false.B // Ingen skalering i x-retning
            io.spriteScaleUpVertical(i) := false.B // Ingen skalering i y-retning
          }.otherwise {
            io.spriteScaleUpHorizontal(i) := true.B // 2x skalering i x-retning
            io.spriteScaleUpVertical(i) := true.B // 2x skalering i y-retning
          }
        }
        //lvl2 obstacles
        for (i <- 26 to 35) {
          val index = i - 26

          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (lfsr.io.out(i - 26) + 60.U).asSInt

            spriteScaleTypeRegs(index) := lfsr.io.out(index + 10)(0)

          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }

          // Logik for selveste skaleringen
          when(spriteScaleTypeRegs(index) === 0.U) {
            io.spriteScaleUpHorizontal(i) := false.B // ingen skalering i x-retning
            io.spriteScaleUpVertical(i) := false.B // ingen skalering i y-retning
          }.otherwise {
            io.spriteScaleUpHorizontal(i) := true.B // 2x skalering i x-retning
            io.spriteScaleUpVertical(i) := true.B // 2x skalering i y-retning
          }
        }
        //lvl3 obstacles
        for (i <- 36 to 45) {
          val index = i - 36

          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (lfsr.io.out(i - 16) + 60.U).asSInt


            spriteScaleTypeRegs(index) := lfsr.io.out(index + 10)(0)

          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }

          // Logik for selveste skaleringen
          when(spriteScaleTypeRegs(index) === 0.U) {
            io.spriteScaleUpHorizontal(i) := false.B // ingen skalering i x-retning
            io.spriteScaleUpVertical(i) := false.B // ingen skalering i y-retning
          }.otherwise {
            io.spriteScaleUpHorizontal(i) := true.B // 2x skalering i x-retning
            io.spriteScaleUpVertical(i) := true.B // 2x skalering i y-retning
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

        when(shootingStarCnt === 800.U) {
          spriteXRegs(6) := -32.S
          spriteVisibleRegs(6) := true.B
          spriteYRegs(6) := (lfsr.io.out(0)).asSInt
          shootingStarCnt := 0.U
        }.otherwise {
          shootingStarCnt := shootingStarCnt + 1.U
        }

        when(spriteVisibleRegs(6)) {
          spriteXRegs(6) := spriteXRegs(6) + 2.S
        }
        when(spriteXRegs(6) >= 640.S) {
          spriteVisibleRegs(6) := false.B
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
          val index = i - 16
          val baseWidth = 26.U
          val baseHeight = 15.U
          val obstacleWidth = Mux(spriteScaleTypeRegs(index) === 1.U, baseWidth * 2.U, baseWidth)
          val obstacleHeight = Mux(spriteScaleTypeRegs(index) === 1.U, baseHeight * 2.U, baseHeight)

          when(
            spriteVisibleRegs(i) && (spriteXRegs(i) <= 640.S) &&
              (spriteXRegs(14) < spriteXRegs(i) + obstacleWidth.asSInt) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
              (spriteYRegs(14) < spriteYRegs(i) + obstacleHeight.asSInt) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
          ) {
            collisionDetected := true.B
          }
        }
      }
      //lvl2 obstacles
      when(!isBlinking) {
        for (i <- 26 to 35) {
          val index = i - 26
          val baseWidth = 29.U
          val baseHeight = 15.U
          val obstacleWidth = Mux(spriteScaleTypeRegs(index) === 1.U, baseWidth * 2.U, baseWidth)
          val obstacleHeight = Mux(spriteScaleTypeRegs(index) === 1.U, baseHeight * 2.U, baseHeight)

          when(
            spriteVisibleRegs(i) &&
              (spriteXRegs(14) < spriteXRegs(i) + obstacleWidth.asSInt) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
              (spriteYRegs(14) < spriteYRegs(i) + obstacleHeight.asSInt) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
          ) {
            collisionDetected := true.B
          }
        }
      }
      //lvl3 obstacles
      when(!isBlinking) {
        for (i <- 36 to 45) {
          val index = i - 36
          val baseWidth = 32.U
          val baseHeight = 15.U
          val obstacleWidth = Mux(spriteScaleTypeRegs(index) === 1.U, baseWidth * 2.U, baseWidth)
          val obstacleHeight = Mux(spriteScaleTypeRegs(index) === 1.U, baseHeight * 2.U, baseHeight)
          when(
            spriteVisibleRegs(i) &&
              (spriteXRegs(14) < spriteXRegs(i) + obstacleWidth.asSInt) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
              (spriteYRegs(14) < spriteYRegs(i) + obstacleHeight.asSInt) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
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
          io.tuneId := 0.U
          io.startTune(0) := true.B
          tune0Active := true.B
          tune0Counter := 0.U
        }
      }

      when(
        spriteVisibleRegs(6) &&
          (spriteXRegs(14) < spriteXRegs(6) + 22.S) && (spriteXRegs(6) < spriteXRegs(14) + 8.S) &&
          (spriteYRegs(14) < spriteYRegs(6) + 22.S) && (spriteYRegs(6) < spriteYRegs(14) + 11.S)
      ) {
        spriteVisibleRegs(6) := false.B
        slowdownTimer := 300.U // Aktiver 5 sekunder slow mode
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
          io.tuneId := 1.U
          io.startTune(1) := true.B
          tune1Active := true.B
          tune1Counter := 0.U
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

      when(slowdownTimer =/= 0.U) {
        slowdownTimer := slowdownTimer - 1.U
      }

      difficulty.io.slowMode := slowdownTimer =/= 0.U

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

      spriteXRegs(14) := (640 - 32).S
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
        when(io.btnD) {
          when(spriteYRegs(14) < (480 - 32).S) {
            spriteYRegs(14) := spriteYRegs(14) + 2.S
          }
        }.elsewhen(io.btnU) {
          when(spriteYRegs(14) > 32.S) {
            spriteYRegs(14) := spriteYRegs(14) - 2.S
          }
        }
      }.otherwise {
        //Moving all four directions for foot-cursor
        moveAllround(3)
      }

      when(livesReg === 0.U) {
        stateReg := gameOver
      }.otherwise {
        stateReg := slut
      }
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
      val cursorOnReturn = (spriteXRegs(3) + 28.S) >= 272.S && (spriteXRegs(3) + 28.S) <= 368.S &&
        (spriteYRegs(3) + 7.S) >= 260.S && (spriteYRegs(3) + 7.S) <= 292.S

      spriteVisibleRegs(52) := !cursorOnReturn
      spriteVisibleRegs(53) := !cursorOnReturn
      spriteVisibleRegs(54) := !cursorOnReturn
      spriteVisibleRegs(55) := cursorOnReturn
      spriteVisibleRegs(56) := cursorOnReturn
      spriteVisibleRegs(57) := cursorOnReturn

      // Cursor tilbage til aktiv
      spriteVisibleRegs(3) := true.B

      moveAllround(3)

      when(cursorOnReturn && io.btnC) {
        gameOverReturnPressed := true.B
      }
      when(scoreReg > highScore(lvlReg - 1.U)) {
        highScore(lvlReg - 1.U) := scoreReg
      }

      // Start sekvensen en gang når vi går ind i gameOver
      when(!goWriteActive) {
        goWriteActive  := true.B
        goWriteCounter := 0.U
      }

      // Selve skrivet
      when(goWriteActive) {
        io.backBufferWriteEnable := true.B
        io.backBufferWriteAddress := hsBaseAddr(lvlReg) + goWriteCounter

        io.backBufferWriteData :=
          Mux(goWriteCounter === 0.U,        // første step = tile-3
            3.U,                           // tile-id 3  (HS-ikon)
            mapDigitToTile(hiDigits(goWriteCounter - 1.U)) // ellers cifre
          )

        goWriteCounter := goWriteCounter + 1.U
        when(goWriteCounter === 4.U) {       // vi har skrevet 0..4
          goWriteActive  := false.B
          goWriteCounter := 0.U
        }
      }


      stateReg := slut
    }
    is(slut) {
      io.frameUpdateDone := true.B
      stateReg := idle
    }
  }

  // Trigger: start skrivning af score én gang hver frame i alle states
  when(io.newFrame && !scoreWriteActive && lvlReg =/= 0.U && stateReg =/= gameOver){
    scoreWriteCounter := 0.U
    scoreWriteActive  := true.B
  }


  // Global logic controlling the write of the score to the backbuffer
  when(scoreWriteActive && lvlReg =/= 0.U && stateReg =/= gameOver){
    // Activate backbuffer-write
    io.backBufferWriteEnable := true.B

    // Find tile-placement for current numbertype (1000, 100, 10 and 1's)
    io.backBufferWriteData := mapDigitToTile(digits(scoreWriteCounter))

    // Determine the adress for the respective level, depending on numbertype position
    io.backBufferWriteAddress := baseAddress + scoreWriteCounter

    // Go to the next number in the next cycle
    scoreWriteCounter := scoreWriteCounter + 1.U

    // Stop writing, if we have just written the last number in a score "sequence"
    when (scoreWriteCounter === 3.U) {
      scoreWriteActive := false.B
      scoreWriteCounter := 0.U
    }
  }
  when(tune0Active) {
    tune0Counter := tune0Counter + 1.U
    when(tune0Counter === 30.U) {
      stopTune0Pulse := true.B
      tune0Active := false.B
    }
  }

  when(tune1Active) {
    tune1Counter := tune1Counter + 1.U
    when(tune1Counter === 30.U) {
      stopTune1Pulse := true.B
      tune1Active := false.B
    }
  }
}

//////////////////////////////////////////////////////////////////////////////
// End of file
//////////////////////////////////////////////////////////////////////////////