import chisel13._
import chisel3.util_

/*
*┌─────────┐       level      ┌───────────────┐        spawnEn, fallSpeed, damage
│  FSM    │ ─────────────────▶│ Difficulty    │─────────────────────────────────▶  Datapath
│ (Level “state”)│            │  (GameLogic)  │
└─────────┘       ◀─ spawnAck └───────────────┘
       ▲
       │  events (collision, timeout, osv.)
       └─────────────────────────────────────────────┐
                                                     │
                                                Resten af
                                                game‐datapath
 */
/**
 * Difficulty module
 * - genererer spawn-puls for hvert level med glidende sværhedsgrad
 * - nulstiller tæller ved level-skift
 * - tilføjer adaptiv jitter (mindre jitter i højere levels)
 * - Udnytter nikos LSFR til spawn placering i top
 * - Computer skade pr meteor
 * - Computer hastigheden af faldende i tkat med man flyver højrere i lvl
 */

class Difficulty extends GameLogic {
  val io = IO(new Module {
    val level = Input(UInt(2.W)) // input fra vores FSM (0,1,2) lvl-1
    val spawnEn = Output(Bool()) // Signal til at spawn nyt objekt
    val fallSpeed = Output(SInt(10.W))
    val damage = Output(UInt(8.W)) // pr meteor
  })
  //==========================================================

  // LSFR submodule
  val lfsr = Module(new LSFR)

  // Base-params
  val baseParams = VecInit(
    // MeteorParams(spawnInterval, direction, styrke)
    MeteorParams(30.U, 1.S, 1.U), // Level 0: standardfart=1, skade=1
    MeteorParams(20.U, 2.S, 2.U), // Level 1: standardfart=2, skade=2
    MeteorParams(10.U, 3.S, 3.U) // Level 2: standardfart=3, skade=3
  )
  val p = baseParams(io.level)

  // Counter
  val cnt = RegInit(0.U(32.W)) // 32-bit counter til spawn-timing
  val prevLevel = RegInit(io.level) // register til at huske forrige level

  // Hvis level ændrer sig, nulstilles tælleren, ellers tæller vi op
  when(prevLevel =/= io.level) {
    cnt := 0.U
    prevLevel := io.level // opdaterer prevLevel efter reset
  }.otherwise {
    cnt := cnt + 1.U
  }

  // -------------------------------------------------------------------------
  // Smooth sværheds-kurve (bit-shift baseret) + cap på minimum interval
  val BASE_INTERVAL = 30.U // Start-interval for level 0 (taktcyklusser)
  val SHIFT_FACTOR = 1.U // Hvor hurtigt vi skruer ned per level
  val MIN_INTERVAL = 8.U // Laveste tilladte interval (for gennemførlighed)

  // Rå kurve: dividerer interval med 2^level
  val rawCurve = (BASE_INTERVAL >> (io.level * SHIFT_FACTOR))
  // Sørger for ikke at gå under MIN_INTERVAL
  val intervalNoJitter = rawCurve.max(MIN_INTERVAL)

  // -------------------------------------------------------------------------
  // 5) Adaptiv jitter: mindre amplituder i højere levels
  val jitterAmps = VecInit(5.U, 3.U, 1.U) // jitter-amp per level
  val rnd5 = lfsr.io.out(4, 0) // 5-bit pseudo-random fra LSFR
  val varStp = rnd5 % jitterAmps(io.level) // jitter mellem 0 og amplitude

  // Dynamisk interval = base-curve + jitter
  val dynInt = intervalNoJitter + varStp

  // -------------------------------------------------------------------------
  // 6) Output: spawn-enable, fart (med ekstra fart-jitter), og skade
  io.spawnEn := (cnt % dynInt) === 0.U
  // Faldhastighed med lidt tilfældig offset: nederste 3 bit delt med 2
  io.fallSpeed := p.fallSpeed + (lfsr.io.out(2, 0).asSInt) / 2.S
  io.damage := p.damage
}