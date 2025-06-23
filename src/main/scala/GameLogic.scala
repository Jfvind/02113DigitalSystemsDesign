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

  //===========================================
  //===========INITALIZATIONS==================
  //===========================================

  //Two registers holding the sprite sprite X and Y with the sprite initial position
  /*val sprite3XReg = RegInit(320.S(11.W)) //Cursor
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
  val sprite16XReg = RegInit(360.S(11.W)) //Seagull
  val sprite16YReg = RegInit(20.S(10.W))
  val sprite17XReg = RegInit(20.S(11.W))
  val sprite17YReg = RegInit(50.S(10.W))
  val sprite18XReg = RegInit(20.S(11.W))
  val sprite18YReg = RegInit(80.S(10.W))
  val sprite19XReg = RegInit(20.S(11.W))
  val sprite19YReg = RegInit(110.S(10.W))
  val sprite20XReg = RegInit(20.S(11.W))
  val sprite20YReg = RegInit(140.S(10.W))
  val sprite21XReg = RegInit(20.S(11.W))
  val sprite21YReg = RegInit(170.S(10.W))
  val sprite22XReg = RegInit(20.S(11.W))
  val sprite22YReg = RegInit(200.S(10.W))
  val sprite23XReg = RegInit(20.S(11.W))
  val sprite23YReg = RegInit(230.S(10.W))
  val sprite24XReg = RegInit(20.S(11.W))
  val sprite24YReg = RegInit(260.S(10.W))
  val sprite25XReg = RegInit(20.S(11.W))
  val sprite25YReg = RegInit(290.S(10.W))
  val sprite26XReg = RegInit(20.S(11.W))
  val sprite26YReg = RegInit(290.S(10.W))
  val sprite27XReg = RegInit(20.S(11.W))
  val sprite27YReg = RegInit(290.S(10.W))
  val sprite28XReg = RegInit(20.S(11.W))
  val sprite28YReg = RegInit(290.S(10.W))
  val sprite29XReg = RegInit(20.S(11.W))
  val sprite29YReg = RegInit(290.S(10.W))
  val sprite30XReg = RegInit(20.S(11.W))
  val sprite30YReg = RegInit(290.S(10.W))
  val sprite31XReg = RegInit(20.S(11.W))
  val sprite31YReg = RegInit(290.S(10.W))
  val sprite32XReg = RegInit(20.S(11.W))
  val sprite32YReg = RegInit(290.S(10.W))
  val sprite33XReg = RegInit(20.S(11.W))
  val sprite33YReg = RegInit(290.S(10.W))
  val sprite34XReg = RegInit(20.S(11.W))
  val sprite34YReg = RegInit(290.S(10.W))
  val sprite35XReg = RegInit(20.S(11.W))
  val sprite35YReg = RegInit(290.S(10.W))
  val sprite36XReg = RegInit(20.S(11.W))
  val sprite36YReg = RegInit(290.S(10.W))
  val sprite37XReg = RegInit(20.S(11.W))
  val sprite37YReg = RegInit(290.S(10.W))
  val sprite38XReg = RegInit(20.S(11.W))
  val sprite38YReg = RegInit(290.S(10.W))
  val sprite39XReg = RegInit(20.S(11.W))
  val sprite39YReg = RegInit(290.S(10.W))
  val sprite40XReg = RegInit(20.S(11.W))
  val sprite40YReg = RegInit(290.S(10.W))
  val sprite41XReg = RegInit(20.S(11.W))
  val sprite41YReg = RegInit(290.S(10.W))
  val sprite42XReg = RegInit(20.S(11.W))
  val sprite42YReg = RegInit(290.S(10.W))
  val sprite43XReg = RegInit(20.S(11.W))
  val sprite43YReg = RegInit(290.S(10.W))
  val sprite44XReg = RegInit(20.S(11.W))
  val sprite44YReg = RegInit(290.S(10.W))
  val sprite45XReg = RegInit(20.S(11.W))
  val sprite45YReg = RegInit(290.S(10.W))
  val sprite46XReg = RegInit(20.S(11.W))
  val sprite46YReg = RegInit(290.S(10.W))
  val sprite47XReg = RegInit(20.S(11.W))
  val sprite47YReg = RegInit(290.S(10.W))
  val sprite48XReg = RegInit(20.S(11.W))
  val sprite48YReg = RegInit(290.S(10.W))
  val sprite49XReg = RegInit(20.S(11.W))
  val sprite49YReg = RegInit(290.S(10.W))
  val sprite50XReg = RegInit(20.S(11.W))
  val sprite50YReg = RegInit(290.S(10.W))
  val sprite51XReg = RegInit(20.S(11.W))
  val sprite51YReg = RegInit(290.S(10.W))
  val sprite52XReg = RegInit(20.S(11.W))
  val sprite52YReg = RegInit(290.S(10.W))
  val sprite53XReg = RegInit(20.S(11.W))
  val sprite53YReg = RegInit(290.S(10.W))
  val sprite54XReg = RegInit(20.S(11.W))
  val sprite54YReg = RegInit(290.S(10.W))
  val sprite55XReg = RegInit(20.S(11.W))
  val sprite55YReg = RegInit(290.S(10.W))
  val sprite56XReg = RegInit(20.S(11.W))
  val sprite56YReg = RegInit(290.S(10.W))
  val sprite57XReg = RegInit(20.S(11.W))
  val sprite57YReg = RegInit(290.S(10.W))
  val sprite58XReg = RegInit(320.S(11.W))
  val sprite58YReg = RegInit(20.S(10.W))
  val sprite59XReg = RegInit(500.S(11.W))
  val sprite59YReg = RegInit(70.S(10.W))
  val sprite60XReg = RegInit(150.S(11.W))
  val sprite60YReg = RegInit(100.S(10.W))

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
  val sprite21FlipHorizontalReg = RegInit(false.B)
  val sprite22FlipHorizontalReg = RegInit(false.B)
  val sprite23FlipHorizontalReg = RegInit(false.B)
  val sprite24FlipHorizontalReg = RegInit(false.B)
  val sprite25FlipHorizontalReg = RegInit(false.B)
  val sprite26FlipHorizontalReg = RegInit(false.B)
  val sprite27FlipHorizontalReg = RegInit(false.B)
  val sprite28FlipHorizontalReg = RegInit(false.B)
  val sprite29FlipHorizontalReg = RegInit(false.B)
  val sprite30FlipHorizontalReg = RegInit(false.B)
  val sprite31FlipHorizontalReg = RegInit(false.B)
  val sprite32FlipHorizontalReg = RegInit(false.B)
  val sprite33FlipHorizontalReg = RegInit(false.B)
  val sprite34FlipHorizontalReg = RegInit(false.B)
  val sprite35FlipHorizontalReg = RegInit(false.B)
  val sprite36FlipHorizontalReg = RegInit(false.B)
  val sprite37FlipHorizontalReg = RegInit(false.B)
  val sprite38FlipHorizontalReg = RegInit(false.B)
  val sprite39FlipHorizontalReg = RegInit(false.B)
  val sprite40FlipHorizontalReg = RegInit(false.B)
  val sprite41FlipHorizontalReg = RegInit(false.B)
  val sprite42FlipHorizontalReg = RegInit(false.B)
  val sprite43FlipHorizontalReg = RegInit(false.B)
  val sprite44FlipHorizontalReg = RegInit(false.B)
  val sprite45FlipHorizontalReg = RegInit(false.B)
  val sprite46FlipHorizontalReg = RegInit(false.B)
  val sprite47FlipHorizontalReg = RegInit(false.B)
  val sprite48FlipHorizontalReg = RegInit(false.B)
  val sprite49FlipHorizontalReg = RegInit(false.B)
  val sprite50FlipHorizontalReg = RegInit(false.B)
  val sprite51FlipHorizontalReg = RegInit(false.B)
  val sprite52FlipHorizontalReg = RegInit(false.B)
  val sprite53FlipHorizontalReg = RegInit(false.B)
  val sprite54FlipHorizontalReg = RegInit(false.B)
  val sprite55FlipHorizontalReg = RegInit(false.B)
  val sprite56FlipHorizontalReg = RegInit(false.B)
  val sprite57FlipHorizontalReg = RegInit(false.B)
  val sprite58FlipHorizontalReg = RegInit(false.B)
  val sprite59FlipHorizontalReg = RegInit(false.B)
  val sprite60FlipHorizontalReg = RegInit(false.B)

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
  val sprite21FlipVerticalReg = RegInit(false.B)
  val sprite22FlipVerticalReg = RegInit(false.B)
  val sprite23FlipVerticalReg = RegInit(false.B)
  val sprite24FlipVerticalReg = RegInit(false.B)
  val sprite25FlipVerticalReg = RegInit(false.B)
  val sprite26FlipVerticalReg = RegInit(false.B)
  val sprite27FlipVerticalReg = RegInit(false.B)
  val sprite28FlipVerticalReg = RegInit(false.B)
  val sprite29FlipVerticalReg = RegInit(false.B)
  val sprite30FlipVerticalReg = RegInit(false.B)
  val sprite31FlipVerticalReg = RegInit(false.B)
  val sprite32FlipVerticalReg = RegInit(false.B)
  val sprite33FlipVerticalReg = RegInit(false.B)
  val sprite34FlipVerticalReg = RegInit(false.B)
  val sprite35FlipVerticalReg = RegInit(false.B)
  val sprite36FlipVerticalReg = RegInit(false.B)
  val sprite37FlipVerticalReg = RegInit(false.B)
  val sprite38FlipVerticalReg = RegInit(false.B)
  val sprite39FlipVerticalReg = RegInit(false.B)
  val sprite40FlipVerticalReg = RegInit(false.B)
  val sprite41FlipVerticalReg = RegInit(false.B)
  val sprite42FlipVerticalReg = RegInit(false.B)
  val sprite43FlipVerticalReg = RegInit(false.B)
  val sprite44FlipVerticalReg = RegInit(false.B)
  val sprite45FlipVerticalReg = RegInit(false.B)
  val sprite46FlipVerticalReg = RegInit(false.B)
  val sprite47FlipVerticalReg = RegInit(false.B)
  val sprite48FlipVerticalReg = RegInit(false.B)
  val sprite49FlipVerticalReg = RegInit(false.B)
  val sprite50FlipVerticalReg = RegInit(false.B)
  val sprite51FlipVerticalReg = RegInit(false.B)
  val sprite52FlipVerticalReg = RegInit(false.B)
  val sprite53FlipVerticalReg = RegInit(false.B)
  val sprite54FlipVerticalReg = RegInit(false.B)
  val sprite55FlipVerticalReg = RegInit(false.B)
  val sprite56FlipVerticalReg = RegInit(false.B)
  val sprite57FlipVerticalReg = RegInit(false.B)
  val sprite58FlipVerticalReg = RegInit(false.B)
  val sprite59FlipVerticalReg = RegInit(false.B)
  val sprite60FlipVerticalReg = RegInit(false.B)

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
  val sprite21Visible = RegInit(false.B)
  val sprite22Visible = RegInit(false.B)
  val sprite23Visible = RegInit(false.B)
  val sprite24Visible = RegInit(false.B)
  val sprite25Visible = RegInit(false.B)
  val sprite26Visible = RegInit(false.B)
  val sprite27Visible = RegInit(false.B)
  val sprite28Visible = RegInit(false.B)
  val sprite29Visible = RegInit(false.B)
  val sprite30Visible = RegInit(false.B)
  val sprite31Visible = RegInit(false.B)
  val sprite32Visible = RegInit(false.B)
  val sprite33Visible = RegInit(false.B)
  val sprite34Visible = RegInit(false.B)
  val sprite35Visible = RegInit(false.B)
  val sprite36Visible = RegInit(false.B)
  val sprite37Visible = RegInit(false.B)
  val sprite38Visible = RegInit(false.B)
  val sprite39Visible = RegInit(false.B)
  val sprite40Visible = RegInit(false.B)
  val sprite41Visible = RegInit(false.B)
  val sprite42Visible = RegInit(false.B)
  val sprite43Visible = RegInit(false.B)
  val sprite44Visible = RegInit(false.B)
  val sprite45Visible = RegInit(false.B)
  val sprite46Visible = RegInit(false.B)
  val sprite47Visible = RegInit(false.B)
  val sprite48Visible = RegInit(false.B)
  val sprite49Visible = RegInit(false.B)
  val sprite50Visible = RegInit(false.B)
  val sprite51Visible = RegInit(false.B)
  val sprite52Visible = RegInit(false.B)
  val sprite53Visible = RegInit(false.B)
  val sprite54Visible = RegInit(false.B)
  val sprite55Visible = RegInit(false.B)
  val sprite56Visible = RegInit(false.B)
  val sprite57Visible = RegInit(false.B)
  val sprite58Visible = RegInit(false.B)
  val sprite59Visible = RegInit(false.B)
  val sprite60Visible = RegInit(false.B)*/
  val spriteXRegs = RegInit(VecInit(Seq.fill(61)(0.S(11.W))))
  val spriteYRegs = RegInit(VecInit(Seq.fill(61)(0.S(10.W))))
  val spriteFlipHorizontalRegs = RegInit(VecInit(Seq.fill(61)(false.B)))
  val spriteFlipVerticalRegs = RegInit(VecInit(Seq.fill(61)(false.B)))
  val spriteVisibleRegs = RegInit(VecInit(Seq.fill(61)(false.B)))

  // Define initial positions as a lookup table
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
    (17, 20, 50),
    (18, 20, 80),
    (19, 20, 110),
    (20, 20, 140),
    (21, 20, 170),
    (22, 20, 200),
    (23, 20, 230),
    (24, 20, 260),
    (25, 20, 290),
    (26, 20, 290), //Satelite x10
    (27, 20, 290),
    (28, 20, 290),
    (29, 20, 290),
    (30, 20, 290),
    (31, 20, 290),
    (32, 20, 290),
    (33, 20, 290),
    (34, 20, 290),
    (35, 20, 290),
    (36, 20, 290), //Meteor x10
    (37, 20, 290),
    (38, 20, 290),
    (39, 20, 290),
    (40, 20, 290),
    (41, 20, 290),
    (42, 20, 290),
    (43, 20, 290),
    (44, 20, 290),
    (45, 20, 290),
    (46, 20, 290), //Gameover x6
    (47, 20, 290),
    (48, 20, 290),
    (49, 20, 290),
    (50, 20, 290),
    (51, 20, 290),
    (52, 20, 290), //Return x6
    (53, 20, 290),
    (54, 20, 290),
    (55, 20, 290),
    (56, 20, 290),
    (57, 20, 290),
    (58, 320, 20), //Star x3
    (59, 500, 70),
    (60, 150, 100)
  ).map { case (id, x, y) => (id.U, x.S, y.S) }

  // Initialize in a loop
  for ((id, x, y) <- initialPositions) {
    spriteXRegs(id) := x
    spriteYRegs(id) := y
  }

  //Scalint registers
  val sprite58ScaleUpHorizontal = RegInit(false.B)
  val sprite58ScaleUpVertical = RegInit(false.B)
  val sprite59ScaleUpHorizontal = RegInit(false.B)
  val sprite59ScaleUpVertical = RegInit(false.B)
  val sprite60ScaleUpHorizontal = RegInit(false.B)
  val sprite60ScaleUpVertical = RegInit(false.B)

  // Connecting visibility registers to the graphic engine
  /*io.spriteVisible(3) := spriteVisibleRegs(4)
  io.spriteVisible(7) := spriteVisibleRegs(5)
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
  io.spriteVisible(21) := sprite21Visible
  io.spriteVisible(22) := sprite22Visible
  io.spriteVisible(23) := sprite23Visible
  io.spriteVisible(24) := sprite24Visible
  io.spriteVisible(25) := sprite25Visible
  io.spriteVisible(26) := sprite26Visible
  io.spriteVisible(27) := sprite27Visible
  io.spriteVisible(28) := sprite28Visible
  io.spriteVisible(29) := sprite29Visible
  io.spriteVisible(30) := sprite30Visible
  io.spriteVisible(31) := sprite31Visible
  io.spriteVisible(32) := sprite32Visible
  io.spriteVisible(33) := sprite33Visible
  io.spriteVisible(34) := sprite34Visible
  io.spriteVisible(35) := sprite35Visible
  io.spriteVisible(36) := sprite36Visible
  io.spriteVisible(37) := sprite37Visible
  io.spriteVisible(38) := sprite38Visible
  io.spriteVisible(39) := sprite39Visible
  io.spriteVisible(40) := sprite40Visible
  io.spriteVisible(41) := sprite41Visible
  io.spriteVisible(42) := sprite42Visible
  io.spriteVisible(43) := sprite43Visible
  io.spriteVisible(44) := sprite44Visible
  io.spriteVisible(45) := sprite45Visible
  io.spriteVisible(46) := sprite46Visible
  io.spriteVisible(47) := sprite47Visible
  io.spriteVisible(48) := sprite48Visible
  io.spriteVisible(49) := sprite49Visible
  io.spriteVisible(50) := sprite50Visible
  io.spriteVisible(51) := sprite51Visible
  io.spriteVisible(52) := sprite52Visible
  io.spriteVisible(53) := sprite53Visible
  io.spriteVisible(54) := sprite54Visible
  io.spriteVisible(55) := sprite55Visible
  io.spriteVisible(56) := sprite56Visible
  io.spriteVisible(57) := sprite57Visible
  io.spriteVisible(58) := sprite58Visible
  io.spriteVisible(59) := sprite59Visible
  io.spriteVisible(60) := sprite60Visible

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
  io.spriteXPosition(21) := sprite21XReg
  io.spriteYPosition(21) := sprite21YReg
  io.spriteFlipHorizontal(21) := sprite21FlipHorizontalReg
  io.spriteFlipVertical(21) := sprite21FlipVerticalReg
  io.spriteXPosition(22) := sprite22XReg
  io.spriteYPosition(22) := sprite22YReg
  io.spriteFlipHorizontal(22) := sprite22FlipHorizontalReg
  io.spriteFlipVertical(22) := sprite22FlipVerticalReg
  io.spriteXPosition(23) := sprite23XReg
  io.spriteYPosition(23) := sprite23YReg
  io.spriteFlipHorizontal(23) := sprite23FlipHorizontalReg
  io.spriteFlipVertical(23) := sprite23FlipVerticalReg
  io.spriteXPosition(24) := sprite24XReg
  io.spriteYPosition(24) := sprite24YReg
  io.spriteFlipHorizontal(24) := sprite24FlipHorizontalReg
  io.spriteFlipVertical(24) := sprite24FlipVerticalReg
  io.spriteXPosition(25) := sprite25XReg
  io.spriteYPosition(25) := sprite25YReg
  io.spriteFlipHorizontal(25) := sprite25FlipHorizontalReg
  io.spriteFlipVertical(25) := sprite25FlipVerticalReg
  io.spriteXPosition(26) := sprite26XReg
  io.spriteYPosition(26) := sprite26YReg
  io.spriteFlipHorizontal(26) := sprite26FlipHorizontalReg
  io.spriteFlipVertical(26) := sprite26FlipVerticalReg
  io.spriteXPosition(27) := sprite27XReg
  io.spriteYPosition(27) := sprite27YReg
  io.spriteFlipHorizontal(27) := sprite27FlipHorizontalReg
  io.spriteFlipVertical(27) := sprite27FlipVerticalReg
  io.spriteXPosition(28) := sprite28XReg
  io.spriteYPosition(28) := sprite28YReg
  io.spriteFlipHorizontal(28) := sprite28FlipHorizontalReg
  io.spriteFlipVertical(28) := sprite28FlipVerticalReg
  io.spriteXPosition(29) := sprite29XReg
  io.spriteYPosition(29) := sprite29YReg
  io.spriteFlipHorizontal(29) := sprite29FlipHorizontalReg
  io.spriteFlipVertical(29) := sprite29FlipVerticalReg
  io.spriteXPosition(30) := sprite30XReg
  io.spriteYPosition(30) := sprite30YReg
  io.spriteFlipHorizontal(30) := sprite30FlipHorizontalReg
  io.spriteFlipVertical(30) := sprite30FlipVerticalReg
  io.spriteXPosition(31) := sprite31XReg
  io.spriteYPosition(31) := sprite31YReg
  io.spriteFlipHorizontal(31) := sprite31FlipHorizontalReg
  io.spriteFlipVertical(31) := sprite31FlipVerticalReg
  io.spriteXPosition(32) := sprite32XReg
  io.spriteYPosition(32) := sprite32YReg
  io.spriteFlipHorizontal(32) := sprite32FlipHorizontalReg
  io.spriteFlipVertical(32) := sprite32FlipVerticalReg
  io.spriteXPosition(33) := sprite33XReg
  io.spriteYPosition(33) := sprite33YReg
  io.spriteFlipHorizontal(33) := sprite33FlipHorizontalReg
  io.spriteFlipVertical(33) := sprite33FlipVerticalReg
  io.spriteXPosition(34) := sprite34XReg
  io.spriteYPosition(34) := sprite34YReg
  io.spriteFlipHorizontal(34) := sprite34FlipHorizontalReg
  io.spriteFlipVertical(34) := sprite34FlipVerticalReg
  io.spriteXPosition(35) := sprite35XReg
  io.spriteYPosition(35) := sprite35YReg
  io.spriteFlipHorizontal(35) := sprite35FlipHorizontalReg
  io.spriteFlipVertical(35) := sprite35FlipVerticalReg
  io.spriteXPosition(36) := sprite36XReg
  io.spriteYPosition(36) := sprite36YReg
  io.spriteFlipHorizontal(36) := sprite36FlipHorizontalReg
  io.spriteFlipVertical(36) := sprite36FlipVerticalReg
  io.spriteXPosition(37) := sprite37XReg
  io.spriteYPosition(37) := sprite37YReg
  io.spriteFlipHorizontal(37) := sprite37FlipHorizontalReg
  io.spriteFlipVertical(37) := sprite37FlipVerticalReg
  io.spriteXPosition(38) := sprite38XReg
  io.spriteYPosition(38) := sprite38YReg
  io.spriteFlipHorizontal(38) := sprite38FlipHorizontalReg
  io.spriteFlipVertical(38) := sprite38FlipVerticalReg
  io.spriteXPosition(39) := sprite39XReg
  io.spriteYPosition(39) := sprite39YReg
  io.spriteFlipHorizontal(39) := sprite39FlipHorizontalReg
  io.spriteFlipVertical(39) := sprite39FlipVerticalReg
  io.spriteXPosition(40) := sprite40XReg
  io.spriteYPosition(40) := sprite40YReg
  io.spriteFlipHorizontal(40) := sprite40FlipHorizontalReg
  io.spriteFlipVertical(40) := sprite40FlipVerticalReg
  io.spriteXPosition(41) := sprite41XReg
  io.spriteYPosition(41) := sprite41YReg
  io.spriteFlipHorizontal(41) := sprite41FlipHorizontalReg
  io.spriteFlipVertical(41) := sprite41FlipVerticalReg
  io.spriteXPosition(42) := sprite42XReg
  io.spriteYPosition(42) := sprite42YReg
  io.spriteFlipHorizontal(42) := sprite42FlipHorizontalReg
  io.spriteFlipVertical(42) := sprite42FlipVerticalReg
  io.spriteXPosition(43) := sprite43XReg
  io.spriteYPosition(43) := sprite43YReg
  io.spriteFlipHorizontal(43) := sprite43FlipHorizontalReg
  io.spriteFlipVertical(43) := sprite43FlipVerticalReg
  io.spriteXPosition(44) := sprite44XReg
  io.spriteYPosition(44) := sprite44YReg
  io.spriteFlipHorizontal(44) := sprite44FlipHorizontalReg
  io.spriteFlipVertical(44) := sprite44FlipVerticalReg
  io.spriteXPosition(45) := sprite45XReg
  io.spriteYPosition(45) := sprite45YReg
  io.spriteFlipHorizontal(45) := sprite45FlipHorizontalReg
  io.spriteFlipVertical(45) := sprite45FlipVerticalReg
  io.spriteXPosition(46) := sprite46XReg
  io.spriteYPosition(46) := sprite46YReg
  io.spriteFlipHorizontal(46) := sprite46FlipHorizontalReg
  io.spriteFlipVertical(46) := sprite46FlipVerticalReg
  io.spriteXPosition(47) := sprite47XReg
  io.spriteYPosition(47) := sprite47YReg
  io.spriteFlipHorizontal(47) := sprite47FlipHorizontalReg
  io.spriteFlipVertical(47) := sprite47FlipVerticalReg
  io.spriteXPosition(48) := sprite48XReg
  io.spriteYPosition(48) := sprite48YReg
  io.spriteFlipHorizontal(48) := sprite48FlipHorizontalReg
  io.spriteFlipVertical(48) := sprite48FlipVerticalReg
  io.spriteXPosition(49) := sprite49XReg
  io.spriteYPosition(49) := sprite49YReg
  io.spriteFlipHorizontal(49) := sprite49FlipHorizontalReg
  io.spriteFlipVertical(49) := sprite49FlipVerticalReg
  io.spriteXPosition(50) := sprite50XReg
  io.spriteYPosition(50) := sprite50YReg
  io.spriteFlipHorizontal(50) := sprite50FlipHorizontalReg
  io.spriteFlipVertical(50) := sprite50FlipVerticalReg
  io.spriteXPosition(51) := sprite51XReg
  io.spriteYPosition(51) := sprite51YReg
  io.spriteFlipHorizontal(51) := sprite51FlipHorizontalReg
  io.spriteFlipVertical(51) := sprite51FlipVerticalReg
  io.spriteXPosition(52) := sprite52XReg
  io.spriteYPosition(52) := sprite52YReg
  io.spriteFlipHorizontal(52) := sprite52FlipHorizontalReg
  io.spriteFlipVertical(52) := sprite52FlipVerticalReg
  io.spriteXPosition(53) := sprite53XReg
  io.spriteYPosition(53) := sprite53YReg
  io.spriteFlipHorizontal(53) := sprite53FlipHorizontalReg
  io.spriteFlipVertical(53) := sprite53FlipVerticalReg
  io.spriteXPosition(54) := sprite54XReg
  io.spriteYPosition(54) := sprite54YReg
  io.spriteFlipHorizontal(54) := sprite54FlipHorizontalReg
  io.spriteFlipVertical(54) := sprite54FlipVerticalReg
  io.spriteXPosition(55) := sprite55XReg
  io.spriteYPosition(55) := sprite55YReg
  io.spriteFlipHorizontal(55) := sprite55FlipHorizontalReg
  io.spriteFlipVertical(55) := sprite55FlipVerticalReg
  io.spriteXPosition(56) := sprite56XReg
  io.spriteYPosition(56) := sprite56YReg
  io.spriteFlipHorizontal(56) := sprite56FlipHorizontalReg
  io.spriteFlipVertical(56) := sprite56FlipVerticalReg
  io.spriteXPosition(57) := sprite57XReg
  io.spriteYPosition(57) := sprite57YReg
  io.spriteFlipHorizontal(57) := sprite57FlipHorizontalReg
  io.spriteFlipVertical(57) := sprite57FlipVerticalReg
  io.spriteXPosition(58) := sprite58XReg
  io.spriteYPosition(58) := sprite58YReg
  io.spriteFlipHorizontal(58) := sprite58FlipHorizontalReg
  io.spriteFlipVertical(58) := sprite58FlipVerticalReg
  io.spriteXPosition(59) := sprite59XReg
  io.spriteYPosition(59) := sprite59YReg
  io.spriteFlipHorizontal(59) := sprite59FlipHorizontalReg
  io.spriteFlipVertical(59) := sprite59FlipVerticalReg
  io.spriteXPosition(60) := sprite60XReg
  io.spriteYPosition(60) := sprite60YReg
  io.spriteFlipHorizontal(60) := sprite60FlipHorizontalReg
  io.spriteFlipVertical(60) := sprite60FlipVerticalReg*/
  for (i <- 3 to 60) {
    io.spriteVisible(i) := spriteVisibleRegs(i)
  }

  // Connect sprite position and flip registers to the graphic engine
  for (i <- 3 to 60) {
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
  val damage = difficulty.io.damage
  val lvlReg = RegInit(0.U(2.W))
  difficulty.io.level := lvlReg
  val spawnCounter = RegInit(0.U(8.W))
  val spawnReady = spawnCounter === difficulty.io.spawnInterval


  //Score Register
  val scoreReg = RegInit(0.U(16.W))

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

      //=================OBSTACLES RANDOM RESPAWNING===================
      // Spawn logic
      spawnCounter := Mux(spawnReady, 0.U, spawnCounter + 1.U)
      val spawnConditions = (lvlReg =/= 0.U) //&& spawnReady

      when(spawnConditions) {
        //Sprites respawning on the left side, when exiting viewbox on the right side and move logic
        /*when(sprite16XReg >= 640.S) {
          sprite16XReg := -32.S
          sprite16YReg := (lfsr.io.out(0) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite16Visible) {
          sprite16XReg := sprite16XReg + speed
        }
        when(sprite17XReg >= 640.S) {
          sprite17XReg := -32.S
          sprite17YReg := (lfsr.io.out(1) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite17Visible) {
          sprite17XReg := sprite17XReg + speed
        }
        when(sprite18XReg >= 640.S) {
          sprite18XReg := -32.S
          sprite18YReg := (lfsr.io.out(2) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite18Visible) {
          sprite18XReg := sprite18XReg + speed
        }
        when(sprite19XReg >= 640.S) {
          sprite19XReg := -32.S
          sprite19YReg := (lfsr.io.out(3) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite19Visible) {
          sprite19XReg := sprite19XReg + speed
        }
        when(sprite20XReg >= 640.S) {
          sprite20XReg := -32.S
          sprite20YReg := (lfsr.io.out(4) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite20Visible) {
          sprite20XReg := sprite20XReg + speed
        }
        when(sprite21XReg >= 640.S) {
          sprite21XReg := -32.S
          sprite21YReg := (lfsr.io.out(5) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite21Visible) {
          sprite21XReg := sprite21XReg + speed
        }
        when(sprite22XReg >= 640.S) {
          sprite22XReg := -32.S
          sprite22YReg := (lfsr.io.out(6) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite22Visible) {
          sprite22XReg := sprite22XReg + speed
        }
        when(sprite23XReg >= 640.S) {
          sprite23XReg := -32.S
          sprite23YReg := (lfsr.io.out(7) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite23Visible) {
          sprite23XReg := sprite23XReg + speed
        }
        when(sprite24XReg >= 640.S) {
          sprite24XReg := -32.S
          sprite24YReg := (lfsr.io.out(8) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite24Visible) {
          sprite24XReg := sprite24XReg + speed
        }
        when(sprite25XReg >= 640.S) {
          sprite25XReg := -32.S
          sprite25YReg := (lfsr.io.out(9) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite25Visible) {
          sprite25XReg := sprite25XReg + speed
        }
        when(sprite26XReg >= 640.S) {
          sprite26XReg := -32.S
          sprite26YReg := (lfsr.io.out(0) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite26Visible) {
          sprite26XReg := sprite26XReg + speed
        }
        when(sprite27XReg >= 640.S) {
          sprite27XReg := -32.S
          sprite27YReg := (lfsr.io.out(1) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite27Visible) {
          sprite27XReg := sprite27XReg + speed
        }
        when(sprite28XReg >= 640.S) {
          sprite28XReg := -32.S
          sprite28YReg := (lfsr.io.out(2) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite28Visible) {
          sprite28XReg := sprite28XReg + speed
        }
        when(sprite29XReg >= 640.S) {
          sprite29XReg := -32.S
          sprite29YReg := (lfsr.io.out(3) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite29Visible) {
          sprite29XReg := sprite29XReg + speed
        }
        when(sprite30XReg >= 640.S) {
          sprite30XReg := -32.S
          sprite30YReg := (lfsr.io.out(4) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite30Visible) {
          sprite30XReg := sprite30XReg + speed
        }
        when(sprite31XReg >= 640.S) {
          sprite31XReg := -32.S
          sprite31YReg := (lfsr.io.out(5) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite31Visible) {
          sprite31XReg := sprite31XReg + speed
        }
        when(sprite32XReg >= 640.S) {
          sprite32XReg := -32.S
          sprite32YReg := (lfsr.io.out(6) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite32Visible) {
          sprite32XReg := sprite32XReg + speed
        }
        when(sprite33XReg >= 640.S) {
          sprite33XReg := -32.S
          sprite33YReg := (lfsr.io.out(7) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite33Visible) {
          sprite33XReg := sprite33XReg + speed
        }
        when(sprite34XReg >= 640.S) {
          sprite34XReg := -32.S
          sprite34YReg := (lfsr.io.out(8) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite34Visible) {
          sprite34XReg := sprite34XReg + speed
        }
        when(sprite35XReg >= 640.S) {
          sprite35XReg := -32.S
          sprite35YReg := (lfsr.io.out(9) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite35Visible) {
          sprite35XReg := sprite35XReg + speed
        }
        when(sprite36XReg >= 640.S) {
          sprite36XReg := -32.S
          sprite36YReg := (lfsr.io.out(20) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite36Visible) {
          sprite36XReg := sprite36XReg + speed
        }
        when(sprite37XReg >= 640.S) {
          sprite37XReg := -32.S
          sprite37YReg := (lfsr.io.out(21) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite37Visible) {
          sprite37XReg := sprite37XReg + speed
        }
        when(sprite38XReg >= 640.S) {
          sprite38XReg := -32.S
          sprite38YReg := (lfsr.io.out(22) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite38Visible) {
          sprite38XReg := sprite38XReg + speed
        }
        when(sprite39XReg >= 640.S) {
          sprite39XReg := -32.S
          sprite39YReg := (lfsr.io.out(23) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite39Visible) {
          sprite39XReg := sprite39XReg + speed
        }
        when(sprite40XReg >= 640.S) {
          sprite40XReg := -32.S
          sprite40YReg := (lfsr.io.out(24) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite40Visible) {
          sprite40XReg := sprite40XReg + speed
        }
        when(sprite41XReg >= 640.S) {
          sprite41XReg := -32.S
          sprite41YReg := (lfsr.io.out(25) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite41Visible) {
          sprite41XReg := sprite41XReg + speed
        }
        when(sprite42XReg >= 640.S) {
          sprite42XReg := -32.S
          sprite42YReg := (lfsr.io.out(26) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite42Visible) {
          sprite42XReg := sprite42XReg + speed
        }
        when(sprite43XReg >= 640.S) {
          sprite43XReg := -32.S
          sprite43YReg := (lfsr.io.out(27) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite43Visible) {
          sprite43XReg := sprite43XReg + speed
        }
        when(sprite44XReg >= 640.S) {
          sprite44XReg := -32.S
          sprite44YReg := (lfsr.io.out(28) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite44Visible) {
          sprite44XReg := sprite44XReg + speed
        }
        when(sprite45XReg >= 640.S) {
          sprite45XReg := -32.S
          sprite45YReg := (lfsr.io.out(29) * 2.U).asSInt
          scoreReg := scoreReg + lvlReg
        }.elsewhen(sprite45Visible) {
          sprite45XReg := sprite45XReg + speed
        }*/
        for (i <- 16 to 25) {
          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (lfsr.io.out(i - 16) * 2.U).asSInt
            scoreReg := scoreReg + lvlReg
          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }
        }
        for (i <- 26 to 35) {
          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (lfsr.io.out(i - 26) * 2.U).asSInt
            scoreReg := scoreReg + lvlReg
          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }
        }
        for (i <- 36 to 45) {
          when(spriteXRegs(i) >= 640.S) {
            spriteXRegs(i) := -32.S
            spriteYRegs(i) := (lfsr.io.out(i - 16) * 2.U).asSInt
            scoreReg := scoreReg + lvlReg
          }.elsewhen(spriteVisibleRegs(i)) {
            spriteXRegs(i) := spriteXRegs(i) + speed
          }
        }
      }

      //==============OBSTACLES FIRST SPAWN===============
      when(lvlReg === 1.U) {
        // Spawn sprites 16-25 with delay
        /*when(spawnDelayCounter === 0.U && nextSpriteToSpawn < 10.U) {
          switch(nextSpriteToSpawn) {
            is(0.U) { sprite16Visible := true.B }
            is(1.U) { sprite17Visible := true.B }
            is(2.U) { sprite18Visible := true.B }
            is(3.U) { sprite19Visible := true.B }
            is(4.U) { sprite20Visible := true.B }
            is(5.U) { sprite21Visible := true.B }
            is(6.U) { sprite22Visible := true.B }
            is(7.U) { sprite23Visible := true.B }
            is(8.U) { sprite24Visible := true.B }
            is(9.U) { sprite25Visible := true.B }
          }
          nextSpriteToSpawn := nextSpriteToSpawn + 1.U
          spawnDelayCounter := 30.U // 30 frame delay between spawns
        }.elsewhen(spawnDelayCounter > 0.U) {
          spawnDelayCounter := spawnDelayCounter - 1.U
        }
      }.elsewhen(lvlReg === 2.U) {
        // Similar logic for level 2 sprites (26-35)
        when(spawnDelayCounter === 0.U && nextSpriteToSpawn < 10.U) {
          switch(nextSpriteToSpawn) {
            is(0.U) { sprite26Visible := true.B }
            is(1.U) { sprite27Visible := true.B }
            is(2.U) { sprite28Visible := true.B }
            is(3.U) { sprite29Visible := true.B }
            is(4.U) { sprite30Visible := true.B }
            is(5.U) { sprite31Visible := true.B }
            is(6.U) { sprite32Visible := true.B }
            is(7.U) { sprite33Visible := true.B }
            is(8.U) { sprite34Visible := true.B }
            is(9.U) { sprite35Visible := true.B }
          }
          nextSpriteToSpawn := nextSpriteToSpawn + 1.U
          spawnDelayCounter := 25.U // Faster spawning for level 2
        }.elsewhen(spawnDelayCounter > 0.U) {
          spawnDelayCounter := spawnDelayCounter - 1.U
        }
      }.elsewhen(lvlReg === 3.U) {
        // Logic for level 3 sprites (36-45)
        when(spawnDelayCounter === 0.U && nextSpriteToSpawn < 10.U) {
          switch(nextSpriteToSpawn) {
            is(0.U) { sprite36Visible := true.B }
            is(1.U) { sprite37Visible := true.B }
            is(2.U) { sprite38Visible := true.B }
            is(3.U) { sprite39Visible := true.B }
            is(4.U) { sprite40Visible := true.B }
            is(5.U) { sprite41Visible := true.B }
            is(6.U) { sprite42Visible := true.B }
            is(7.U) { sprite43Visible := true.B }
            is(8.U) { sprite44Visible := true.B }
            is(9.U) { sprite45Visible := true.B }
          }
          nextSpriteToSpawn := nextSpriteToSpawn + 1.U
          spawnDelayCounter := 20.U // Even faster spawning for level 3
        }.elsewhen(spawnDelayCounter > 0.U) {
          spawnDelayCounter := spawnDelayCounter - 1.U
        }*/
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
      /*when(
        sprite16Visible && (sprite16XReg <= 640.S) && 
        (sprite14XReg < sprite16XReg + 26.S) && (sprite16XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite16YReg + 15.S) && (sprite16YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite17Visible &&
        (sprite14XReg < sprite17XReg + 26.S) && (sprite17XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite17YReg + 15.S) && (sprite17YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite18Visible &&
        (sprite14XReg < sprite18XReg + 26.S) && (sprite18XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite18YReg + 15.S) && (sprite18YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite19Visible &&
        (sprite14XReg < sprite19XReg + 26.S) && (sprite19XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite19YReg + 15.S) && (sprite19YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite20Visible &&
        (sprite14XReg < sprite20XReg + 26.S) && (sprite20XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite20YReg + 15.S) && (sprite20YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite21Visible &&
        (sprite14XReg < sprite21XReg + 26.S) && (sprite21XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite21YReg + 15.S) && (sprite21YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite22Visible &&
        (sprite14XReg < sprite22XReg + 26.S) && (sprite22XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite22YReg + 15.S) && (sprite22YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite23Visible &&
        (sprite14XReg < sprite23XReg + 26.S) && (sprite23XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite23YReg + 15.S) && (sprite23YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite24Visible &&
        (sprite14XReg < sprite24XReg + 26.S) && (sprite24XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite24YReg + 15.S) && (sprite24YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite25Visible &&
        (sprite14XReg < sprite25XReg + 26.S) && (sprite25XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite25YReg + 15.S) && (sprite25YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite26Visible &&
        (sprite14XReg < sprite26XReg + 29.S) && (sprite26XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite26YReg + 15.S) && (sprite26YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite27Visible &&
        (sprite14XReg < sprite27XReg + 29.S) && (sprite27XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite27YReg + 15.S) && (sprite27YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite28Visible &&
        (sprite14XReg < sprite28XReg + 29.S) && (sprite28XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite28YReg + 15.S) && (sprite28YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite29Visible &&
        (sprite14XReg < sprite29XReg + 29.S) && (sprite29XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite29YReg + 15.S) && (sprite29YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite30Visible &&
        (sprite14XReg < sprite30XReg + 29.S) && (sprite30XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite30YReg + 15.S) && (sprite30YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite31Visible &&
        (sprite14XReg < sprite31XReg + 29.S) && (sprite31XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite31YReg + 15.S) && (sprite31YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite32Visible &&
        (sprite14XReg < sprite32XReg + 29.S) && (sprite32XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite32YReg + 15.S) && (sprite32YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite33Visible &&
        (sprite14XReg < sprite33XReg + 29.S) && (sprite33XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite33YReg + 15.S) && (sprite33YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite34Visible &&
        (sprite14XReg < sprite34XReg + 29.S) && (sprite34XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite34YReg + 15.S) && (sprite34YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite35Visible &&
        (sprite14XReg < sprite35XReg + 29.S) && (sprite35XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite35YReg + 15.S) && (sprite35YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite36Visible &&
        (sprite14XReg < sprite36XReg + 32.S) && (sprite36XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite36YReg + 15.S) && (sprite36YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite37Visible &&
        (sprite14XReg < sprite37XReg + 32.S) && (sprite37XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite37YReg + 15.S) && (sprite37YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite38Visible &&
        (sprite14XReg < sprite38XReg + 32.S) && (sprite38XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite38YReg + 15.S) && (sprite38YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite39Visible &&
        (sprite14XReg < sprite39XReg + 32.S) && (sprite39XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite39YReg + 15.S) && (sprite39YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite40Visible &&
        (sprite14XReg < sprite40XReg + 32.S) && (sprite40XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite40YReg + 15.S) && (sprite40YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite41Visible &&
        (sprite14XReg < sprite41XReg + 32.S) && (sprite41XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite41YReg + 15.S) && (sprite41YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite42Visible &&
        (sprite14XReg < sprite42XReg + 32.S) && (sprite42XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite42YReg + 15.S) && (sprite42YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite43Visible &&
        (sprite14XReg < sprite43XReg + 32.S) && (sprite43XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite43YReg + 15.S) && (sprite43YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite44Visible &&
        (sprite14XReg < sprite44XReg + 32.S) && (sprite44XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite44YReg + 15.S) && (sprite44YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
      }
      when(
        sprite45Visible &&
        (sprite14XReg < sprite45XReg + 32.S) && (sprite45XReg < sprite14XReg + 8.S) &&
        (sprite14YReg < sprite45YReg + 15.S) && (sprite45YReg < sprite14YReg + 11.S)
      ) {
        collisionDetected := true.B
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
          sprite14Visible := false.B
        }.elsewhen(blinkCounter < 20.U) {
          sprite14Visible := true.B
        }
        blinkCounter := blinkCounter + 1.U
        when(blinkCounter === 20.U) {
          blinkCounter := 0.U
          blinkTimes := blinkTimes + 1.U
        }
        when(blinkTimes === 3.U) {
          isBlinking := false.B
          sprite14Visible := true.B
          collisionDetected := false.B
        }
      }*/
      // Collision detection for sprites 16 to 45
      for (i <- 16 to 25) {
        when(
          spriteVisibleRegs(i) && (spriteXRegs(i) <= 640.S) &&
          (spriteXRegs(14) < spriteXRegs(i) + 26.S) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
          (spriteYRegs(14) < spriteYRegs(i) + 15.S) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
        ) {
          collisionDetected := true.B
        }
      }
      for (i <- 26 to 35) {
        when(
          spriteVisibleRegs(i) &&
          (spriteXRegs(14) < spriteXRegs(i) + 29.S) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
          (spriteYRegs(14) < spriteYRegs(i) + 15.S) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
        ) {
          collisionDetected := true.B
        }
      }
      for (i <- 36 to 45) {
        when(
          spriteVisibleRegs(i) &&
          (spriteXRegs(14) < spriteXRegs(i) + 32.S) && (spriteXRegs(i) < spriteXRegs(14) + 8.S) &&
          (spriteYRegs(14) < spriteYRegs(i) + 15.S) && (spriteYRegs(i) < spriteYRegs(14) + 11.S)
        ) {
          collisionDetected := true.B
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

      stateReg := menu
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
            stateReg := lvl1
          }.otherwise {
            stateReg := move
          }
        }.elsewhen(spriteXRegs(3) > 275.S && spriteXRegs(3) < 307.S && spriteYRegs(3) > 300.S && spriteYRegs(3) < 332.S) {
          spriteVisibleRegs(9) := false.B
          spriteVisibleRegs(10) := true.B
          when(io.btnC) {
            lvlReg := 2.U
            stateReg := lvl2
          }.otherwise {
            stateReg := move
          }
        }.elsewhen(spriteXRegs(3) > 323.S && spriteXRegs(3) < 355.S && spriteYRegs(3) > 300.S && spriteYRegs(3) < 332.S) {
          spriteVisibleRegs(11) := false.B
          spriteVisibleRegs(12) := true.B
          when(io.btnC) {
            lvlReg := 3.U
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
      viewBoxXReg := 640.U
      viewBoxYReg := 0.U

      stateReg := move
    }

    is(lvl2) {
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
      viewBoxXReg := 0.U
      viewBoxYReg := 480.U

      stateReg := move
    }

    is(lvl3) {
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
      viewBoxXReg := 640.U
      viewBoxYReg := 480.U

      stateReg := move
    }

    is(move) {
      //Moving up and down for spaceship
      when(moveCnt === 0.U) {
        moveCnt := moveCnt + 1.U
      }.elsewhen(moveCnt < 30.U) {
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
        moveCnt := moveCnt + 1.U
      }.otherwise { // moveCnt === 30.U
        moveCnt := 0.U  // Reset counter
        stateReg := slut
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