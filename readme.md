# This folder contains various files used to test the current performances of SensApp, and of its future architectures.

* bench.sh : Launches a Gatling test with preset parameters
* testbench_sensors.sh : Launches multiple Gatling tests with an increasing number of sensors
* testbench_size.sh : Launches multiple Gatling tests with a fixed number of sensors pushing an increasing amount of data

* mainSimulationCreation.scala : main file of the sensor creation Gatling test scenario
* mainSimulationPushing.scala : main file of the sensor data pushing Gatling test scenario
* mainSimulationGet.scala : main file of the data get request Gatling test scenario

* scenarioCreation.scala : body of the sensor creation Gatling test scenario
* scenarioPushing.scala : body of the sensor data pushing Gatling test scenario
* scenarioGet.scala : body of the data get request Gatling test scenario

* Helpers.scala : contains functions that generate random data or sensors
* Target.scala : contains the address of the server hosting SensApp