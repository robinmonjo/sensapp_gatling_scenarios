#! /bin/bash

#################################################################
# bench.sh - Runs a Gatling test on SensApp with parameters	#
# Authors : Robin Monjo & Kévin Jeddi				#
# Versions : 	v0.3 - Option to choose the simulation to run	#
# 		v0.2 - Runs simulation with optional params	#
#               v0.1 - Runs simulation with required params	#
# Description :							#
# This script allows the user to run a Gatling simulation	#
# on SensApp, that can receive parameters :			#
# - "users" is the number of sensors				#
# - "duration" is the duration in seconds of the test 		#
#   (without ramping up) 					#
# - "period" is the frequency of the sensors (in milliseconds)  #
# - "size" is the number of integers sent by each sensor	#
#   at each request						#
# This script must be placed in the bin folder of the Gatling	#
# installation, which must contain the .scala files		#
# of the simulation.						#
# The default simulation run is "sensapp.simulation.testbench"	#
#################################################################

usage()
{
cat << EOF
Usage: $0 test_class_name options

This script runs a Gatling simulation on SensApp with optional parameters.
Gatling must be installed,
and this script must be run in the "/bin/" folder of your Gatling installation (currently: $PWD)
The .scala files of the scenario must be in the "/user-files/simulations/" of your Gatling installation.

OPTIONS:
   -h      Show this message
   -s      Number of sensors
   -d      Duration in seconds of the test
   -p      Period of sensors in ms
   -n      Number of integers sent by each request
   -t      Name of the simulation test to run
   -r      Ramp up duration in seconds
   -f      Name of the result folder
EOF
}


if [[ "$#" -lt 1 ]]; then 
	usage
	exit 1
fi

while getopts “:hs:d:p:n:t:r:f” OPTION
do
     case $OPTION in
         h)
             usage
             exit 1
             ;;
         s)
             SENSORS=$OPTARG
             ;;
         d)
             DURATION=$OPTARG
             ;;
         p)
             PERIOD=$OPTARG
             ;;
         n)
             SIZE=$OPTARG
             ;;
         t)
             SIMULATION=$OPTARG
             ;;
         r)
             RAMPUP=$OPTARG
	     ;;
	 f)
	     FOLDER=$OPTARG
	     ;;
         ?)
             usage
             exit
             ;;
     esac
done

if [[ ! -z $SENSORS ]]; then
	JAVA_OPTS="$JAVA_OPTS -Dusers=$SENSORS "
fi
if [[ ! -z $DURATION ]]; then
	JAVA_OPTS="$JAVA_OPTS -Dduration=$DURATION "
fi
if [[ ! -z $PERIOD ]]; then
	JAVA_OPTS="$JAVA_OPTS -Dperiod=$PERIOD "
fi
if [[ ! -z $SIZE ]]; then
	JAVA_OPTS="$JAVA_OPTS -Dsize=$SIZE "
fi
if [[ ! -z $RAMPUP ]]; then
	JAVA_OPTS="$JAVA_OPTS -Dramp=$RAMPUP "
fi

if [[ ! -z $SIMULATION ]]; then
	if [[ ! -z $FOLDER ]]; then
		JAVA_OPTS="$JAVA_OPTS" ./gatling.sh -s $SIMULATION -ro $FOLDER
	else
		JAVA_OPTS="$JAVA_OPTS" ./gatling.sh -s $SIMULATION
	fi
else
	usage
fi
