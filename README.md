# 02113DigitalSystemsDesign
Project following the DTU course 02113 Digital Systems Design Project, to make a videogame in ChiselHDL.

## Playing game
Download the repo and open the position, use the scala build tool (can be found as 'scala' in VSCode extensions), and type
```
sbt run
```
When run is succesfull, open Xilinx Vivado application and press open project ``..\02113DigitalSystemsDesign\vivado\Basys3Game\Basys3Game.xpr`` (note that if using the Nexys7, open Nexys7Game instead. Possibly you need to add the memory files by hand in vivado when using Nexys7).\
In Vivado press ``generate bitstream`` and ok a couple of times, in approx. 6 minutes the FPGA can be programmed in 'hardware manager' in vivado.

**Sprites:**
- Sprite 3 = Cursor foot
- Sprite 7 = lvl1_1 (1-tal)
- Sprite 8 = lvl1_2 (1-tal)
- Sprite 9 = lvl2_1 (2-tal)
- Sprite 10 = lvl2_2 (2-tal)
- Sprite 11 = lvl3_1 (3-tal)
- Sprite 12 = lvl3_2
- Sprite 13 = Extra life
- Sprite 14 = Rumskib
- Sprite 15 = God skib
- Sprite 16 = Seagul
- Sprite 17 = Seagul
- Sprite 18 = Seagul
- Sprite 19 = Seagul
- Sprite 20 = Seagul
- Sprite 21 = Seagul
- Sprite 22 = Seagul
- Sprite 23 = Seagul
- Sprite 24 = Seagul
- Sprite 25 = Seagul
- Sprite 26 = Satelite
- Sprite 27 = Satelite
- Sprite 28 = Satelite
- Sprite 29 = Satelite
- Sprite 30 = Satelite
- Sprite 31 = Satelite
- Sprite 32 = Satelite
- Sprite 33 = Satelite
- Sprite 34 = Satelite
- Sprite 35 = Satelite
- Sprite 36 = Meteor
- Sprite 37 = Meteor
- Sprite 38 = Meteor
- Sprite 39 = Meteor
- Sprite 40 = Meteor
- Sprite 41 = Meteor
- Sprite 42 = Meteor
- Sprite 43 = Meteor
- Sprite 44 = Meteor
- Sprite 45 = Meteor
- Sprite 46 = Gameover_1
- Sprite 47 = Gameover_2
- Sprite 48 = Gameover_3
- Sprite 49 = Gameover_4
- Sprite 50 = Gameover_5
- Sprite 51 = Gameover_6
- Sprite 52 = Return_1_1
- Sprite 53 = Return_1_2
- Sprite 54 = Return_1_3
- Sprite 55 = Return_2_1
- Sprite 56 = Return_2_2
- Sprite 57 = Return_2_3
- Sprite 58 = Star_1
- Sprite 59 = Star_2
- Sprite 60 = Star_3
- Sprite 61 = Heart
- Sprite 62 = Heart_2
- Sprite 63 = Heart_3

**Backtiles:**
- Backtile 10 = lvl1_1
- Backtile 11 = lvl1_2
- Backtile 12 = lvl1_3
- Backtile 13 = lvl1_4
- Backtile 14 = lvl1_5
- Backtile 15 = lvl1_6
- Backtile 16 = lvl1_7
- Backtile 17 = menu_black
- Backtile 18 = cosm
- Backtile 19 = o_war
- Backtile 20 = s_moon
- Backtile 21 = lvl2_1 (bund)
- Backtile 22 = lvl2_2
- Backtile 23 = lvl2_3
- Backtile 24 = lvl2_4
- Backtile 25 = lvl2_5
- Backtile 26 = lvl2_6
- Backtile 27 = lvl2_7
- Backtile 28 = lvl2_8 (top)
- Backtile 29 = lvl3_1 (bund)
- Backtile 30 = lvl3_2
- Backtile 31 = lvl3_3
- Backtile 32 = lvl3_4
- Backtile 33 = lvl3_5 (top)
- Backtile 34 = Moon_1_1
- Backtile 35 = Moon_1_2
- Backtile 36 = Moon_1_3
- Backtile 37 = Moon_1_4
- Backtile 38 = Moon_1_5
- Backtile 39 = Moon_2_1
- Backtile 40 = Moon_2_2
- Backtile 41 = Moon_2_3
- Backtile 42 = Moon_2_4
- Backtile 43 = Moon_2_5
- Backtile 44 = Moon_3_1
- Backtile 45 = Moon_3_2
- Backtile 46 = Moon_3_3
- Backtile 47 = Moon_3_4
- Backtile 48 = Moon_3_5
- Backtile 49 = Moon_4_1
- Backtile 50 = Moon_4_2
- Backtile 51 = Moon_4_3
- Backtile 52 = Moon_4_4
- Backtile 53 = Moon_4_5
- Backtile 54 = Moon_5_1
- Backtile 55 = Moon_5_2
- Backtile 56 = Moon_5_3
- Backtile 57 = Moon_5_4
- Backtile 58 = Moon_5_5