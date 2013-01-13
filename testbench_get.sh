#! /bin/bash

####################################################################################
# Testing SensApp registry with an increasing number of requests on the database
# This script runs the same scenario multiple times with different parameters
# Must be placed in the bin folder of a Gatling installation
#
# Each test has a duration of 60 seconds
# All tests are followed by a 5-second pause
####################################################################################

# 10 sensors
./bench.sh -s 10 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_10
sleep 5
# 50 sensors
./bench.sh -s 50 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_50
sleep 5
# 100 sensors
./bench.sh -s 100 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_100
sleep 5
# 150 sensors
./bench.sh -s 150 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_150
sleep 5
# 200 sensors
./bench.sh -s 200 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_200
sleep 5
# 250 sensors
./bench.sh -s 250 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_250
sleep 5
# 300 sensors
./bench.sh -s 300 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_300
sleep 5
# 350 sensors
./bench.sh -s 350 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_350
sleep 5
# 400 sensors
./bench.sh -s 400 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_400
sleep 5
# 450 sensors
./bench.sh -s 450 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_450
sleep 5
# 500 sensors
./bench.sh -s 500 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_500
sleep 5
# 550 sensors
./bench.sh -s 550 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_550
sleep 5
# 600 sensors
./bench.sh -s 600 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_600
sleep 5
# 650 sensors
./bench.sh -s 650 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_650
sleep 5
# 700 sensors
./bench.sh -s 700 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_700
sleep 5
# 750 sensors
./bench.sh -s 750 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_750
sleep 5
# 800 sensors
./bench.sh -s 800 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_800
sleep 5
# 850 sensors
./bench.sh -s 850 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_850
sleep 5
# 900 sensors
./bench.sh -s 900 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_900
sleep 5
# 950 sensors
./bench.sh -s 950 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_950
sleep 5
# 1000 sensors
./bench.sh -s 1000 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1000
sleep 5
# 1050 sensors
./bench.sh -s 1050 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1050
sleep 5
# 1100 sensors
./bench.sh -s 1100 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1100
sleep 5
# 1150 sensors
./bench.sh -s 1150 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1150
sleep 5
# 1200 sensors
./bench.sh -s 1200 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1200
sleep 5
# 1250 sensors
./bench.sh -s 1250 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1250
sleep 5
# 1300 sensors
./bench.sh -s 1300 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1300
sleep 5
# 1350 sensors
./bench.sh -s 1350 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1350
sleep 5
# 1400 sensors
./bench.sh -s 1400 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1400
sleep 5
# 1450 sensors
./bench.sh -s 1450 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1450
sleep 5
# 1500 sensors
./bench.sh -s 1500 -r 10 -t sensapp.continu.testbenchGet -f testbenchG_1500
sleep 5
