package sensapp.continu

import com.excilys.ebi.gatling.core.Predef._
import com.excilys.ebi.gatling.http.Predef._
import com.excilys.ebi.gatling.jdbc.Predef._
import com.excilys.ebi.gatling.http.Headers.Names._
import akka.util.duration._
import bootstrap._

object scenarTest {

    val freq: Int = Integer.getInteger("period", 1000) // fréquence (en KHz, 1/période)
    val duree: Int = Integer.getInteger("duration", 30) // en secondes, variable à modifier
    val taille: Int = Integer.getInteger("size", 1) // taille
    val times: Float = (1000*duree:Float)/freq

    val headers = Map("Content-Type" -> "application/json", "Accept" -> "text/plain,application/json")
  
    val sensorTest = scenario("GPS sensor pushing data every second")
        .exec { (session: Session) => // Preparing the session
	    session.setAttribute("sensorId", RandomSensor())
	      .setAttribute("stamp", (System.currentTimeMillis / 1000)) 
        }
        .repeat(times.toInt) { // Pushing data
            exec { session: Session => 
              session.setAttribute("data", RandomData(session.getAttribute("sensorId").asInstanceOf[String], 
              					 	    			  session.getAttribute("stamp").asInstanceOf[Long],taille))
            }.exec {
              http("Pushing data from sensors")
                .put("http://"+Target.serverName+"/dispatch")
              	.headers(headers).body("${data}")
            }.exec { (session: Session) => 
              session.setAttribute("stamp", session.getAttribute("stamp").asInstanceOf[Long] + 1)
            }.pause(freq milliseconds)
        }
}
