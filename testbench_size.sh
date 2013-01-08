#! /bin/bash

#####################################################################################
# Testing SensApp with an increasing size of requests
# This script runs the same scenario multiple times with different parameters
# Must be placed in the bin folder of a Gatling installation
#
# Basic scenario : 100 sensors sending integers each second
# Total data size : 100N integers each second (N = number of integers per request)
# Duration of the test : 1 minute (+ 10-second ramping up)
#####################################################################################

# 1 int
./bench.sh -s 100 -d 60 -p 1000 -n 1
# 2 int
./bench.sh -s 100 -d 60 -p 1000 -n 2
# 5 int
./bench.sh -s 100 -d 60 -p 1000 -n 3
# 10 int
./bench.sh -s 100 -d 60 -p 1000 -n 10
# 20 int
./bench.sh -s 100 -d 60 -p 1000 -n 20
# 30 int
./bench.sh -s 100 -d 60 -p 1000 -n 30
# 50 int
./bench.sh -s 100 -d 60 -p 1000 -n 50
