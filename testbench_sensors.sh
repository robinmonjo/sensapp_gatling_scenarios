#! /bin/bash

####################################################################################
# Testing SensApp with an increasing number of sensors
# This script runs the same scenario multiple times with different parameters
# Must be placed in the bin folder of a Gatling installation
#
# Basic sensor : sends 1 int each second
# Total data size : N integers each second (N = number of sensors)
# Duration of the test : 1 minute (+ 10-second ramping up)
####################################################################################

# 10 sensors
./bench.sh -s 10 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_10
# 20 sensors
./bench.sh -s 20 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_20
# 30 sensors
./bench.sh -s 30 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_30
# 40 sensors
./bench.sh -s 40 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_40
# 50 sensors
./bench.sh -s 50 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_40
# 60 sensors
./bench.sh -s 60 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_60
# 70 sensors
./bench.sh -s 70 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_70
# 80 sensors
./bench.sh -s 80 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_80
# 90 sensors
./bench.sh -s 90 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_90
# 100 sensors
./bench.sh -s 100 -d 60 -p 1000 -n 1 -t sensapp.continu.testbenchPush -f TestBenchN_100
