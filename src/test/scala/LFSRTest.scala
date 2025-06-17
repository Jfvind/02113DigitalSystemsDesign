import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class LFSRTest extends AnyFlatSpec with ChiselScalatestTester {

  "LFSRTest" should "pass" in {
    test(new LFSR) { dut =>
      println("Running the LFSR Tester")

      dut.clock.setTimeout(0)

      println(dut.io.out)
      dut.clock.step(1)

      println(dut.io.out)
      dut.clock.step(1)

      println("End of LFSR Tester")
    }
  }
}

//////////////////////////////////////////////////////////////////////////////
// End of file
//////////////////////////////////////////////////////////////////////////////