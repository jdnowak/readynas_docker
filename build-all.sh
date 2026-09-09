#!/bin/bash -e

export LANGUAGE=C
export LC_ALL=C
export LANG=en_US.utf8

HERE=$PWD

rm -rf releases
mkdir releases

projects=(
  docker-cli-rnapp-19.03.9
  docker-cli-rnapp-20.10.24
)

for p in "${projects[@]}"; do
  (cd "$p" && bash ./build.sh)
done

cd "$HERE"
