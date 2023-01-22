#!/bin/bash -e

HERE=$PWD

cd docker-cli-rnapp-19.03.9
schroot -c R6 make -- veryclean
cd $HERE
