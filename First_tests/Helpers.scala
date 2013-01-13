/**
 * This file is part of SensApp [ http://sensapp.modelbased.net ]
 *
 * Copyright (C) 2012-  SINTEF ICT
 * Contact: Sebastien Mosser <sebastien.mosser@sintef.no>
 *
 * Module: net.modelbased.sensapp.backyard.gatling
 *
 * SensApp is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version.
 *
 * SensApp is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General
 * Public License along with SensApp. If not, see
 * <http://www.gnu.org/licenses/>.
 */
package sensapp.continu

import com.excilys.ebi.gatling.core.Predef._
import com.excilys.ebi.gatling.http.Predef._
import com.excilys.ebi.gatling.jdbc.Predef._
import bootstrap._

// Crée le contenu d'un fichier json contenant un push de données
object RandomData {
  private[this] val bag = new scala.util.Random
  private[this] var counter = 0
  def apply(sensorId: String, stamp: Long, size: Int): String = {
    var data: String = ("{\"bn\":\"" + sensorId + "\", \"bt\": " + stamp + ", \"bu\":\"m\", \"e\":[")
    for(i <- 1 to (1*size)) {
	data = data + "{\"v\":" + bag.nextFloat() + ",\"t\":" + counter + "}"
	if (i < 1*size) {
		data = data + ","
	}
        counter += 1
    }
    data = data + "]}"
    data
  }
}

object RandomSensor {
  private[this] var counter = 0
  def apply(prefix: String = "gatling-gen"): String = {
    counter += 1
    val name = prefix+"/"+ counter
    name
  }
}
