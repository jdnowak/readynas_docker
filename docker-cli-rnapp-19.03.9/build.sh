#!/bin/bash -e

export LANGUAGE=C
export LC_ALL=C
export LANG=en_US.utf8

mkdir -p ../releases

schroot -c R6 debuild -- -uc -us -B
mv ../*.deb ../releases
schroot -c R6 make -- veryclean
