#!/bin/bash -e

export LANGUAGE=C
export LC_ALL=C
export LANG=en_US.utf8

HERE=$PWD

cd docker-cli-rnapp-19.03.9
schroot -c R6 debuild -- -uc -us -B
cd $HERE

rm -rf releases
mkdir releases && cp *.deb releases
