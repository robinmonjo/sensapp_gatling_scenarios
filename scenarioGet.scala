package sensapp.continu

import com.excilys.ebi.gatling.core.Predef._
import com.excilys.ebi.gatling.http.Predef._
import com.excilys.ebi.gatling.jdbc.Predef._
import com.excilys.ebi.gatling.http.Headers.Names._
import akka.util.duration._
import bootstrap._


object scenarioGet {
  
  val headers = Map("Content-Type" -> "application/json", "Accept" -> "text/plain,application/json")
  
  val sensorGet = 
    scenario("Getting data from database")
  	  .exec { (session: Session) => // Preparing the session
  		session.setAttribute("sensorId", RandomSensor())
  	  }
  	  .exec{
		  http("Getting random data")
		    .get("http://"+Target.serverName+"/databases/raw/data/${sensorId}")
		  	.headers(headers)
	}			
}
