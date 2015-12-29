#!/bin/bash

set -eu

export UNATTENDED=1

echo Using $JOBS jobs

./build.sh
./build_clang.sh
./build_gcc.sh