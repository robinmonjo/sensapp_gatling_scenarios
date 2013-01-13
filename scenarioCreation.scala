package sensapp.continu

import com.excilys.ebi.gatling.core.Predef._
import com.excilys.ebi.gatling.http.Predef._
import com.excilys.ebi.gatling.jdbc.Predef._
import com.excilys.ebi.gatling.http.Headers.Names._
import akka.util.duration._
import bootstrap._

object scenarioCreation {

    val headers = Map("Content-Type" -> "application/json", "Accept" -> "text/plain,application/json")
  
    val sensorTest = scenario("Test sensors creation")
        .exec { (session: Session) => // Preparing the session
	    session.setAttribute("sensorId", RandomSensor())
	      .setAttribute("stamp", (System.currentTimeMillis / 1000)) 
        }
        .exec {  // 1. Creating the sensors
        http("Creating the sensor")
          .post("http://"+Target.serverName+"/registry/sensors")
          .headers(headers)
          .body("{ \"id\": \"${sensorId}\", \"descr\": \"Capteur de test\", \"schema\": { \"backend\": \"raw\", \"template\": \"Numerical\"} }")
        }.pause(100 milliseconds, 200 milliseconds)
	.exec {
	http("Deleting the sensor")
		.delete("http://"+Target.serverName+"/registry/sensors/${sensorId}")
	}
}
