package sensapp.continu

import com.excilys.ebi.gatling.core.Predef._
import com.excilys.ebi.gatling.http.Predef._
import com.excilys.ebi.gatling.jdbc.Predef._
import com.excilys.ebi.gatling.http.Headers.Names._
import akka.util.duration._
import bootstrap._

class testbenchGet extends Simulation {

	def apply = {
		val nbUsers = Integer.getInteger("users", 1)
		val myRamp : Int = Integer.getInteger("ramp", 0)
		List(scenarioGet.sensorGet.configure.users(nbUsers).ramp(myRamp))
	}
}
