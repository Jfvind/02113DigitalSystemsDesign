import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class LFSRTest extends AnyFlatSpec with ChiselScalatestTester {

  "LFSRTest" should "pass" in {
    test(new LFSR) { dut =>
      println("Running the LFSR Tester")

      dut.clock.setTimeout(0)

    for (i <- 0 until 50 by 1) {
      println(dut.io.out.peek().litValue)
      dut.clock.step(1666667)
    }

      println("End of LFSR Tester")
    }
  }
}

//////////////////////////////////////////////////////////////////////////////
// End of file
//////////////////////////////////////////////////////////////////////////////