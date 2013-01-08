package sensapp.continu

import com.excilys.ebi.gatling.core.Predef._
import com.excilys.ebi.gatling.http.Predef._
import com.excilys.ebi.gatling.jdbc.Predef._
import com.excilys.ebi.gatling.http.Headers.Names._
import akka.util.duration._
import bootstrap._

class testbenchCreation extends Simulation {

	def apply = {
		val nbUsers = Integer.getInteger("users", 600)
		val myRamp : Int = Integer.getInteger("ramp", 0)
		List(scenarioCreation.sensorTest.configure.users(nbUsers).ramp(myRamp))
	}
}
