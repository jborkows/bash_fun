#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Plaaying with return parameter
subTitle Failure...
displayFile failure.sh
evalFunction "bash failure.sh"


subTitle Fixed...
displayFile fixed.sh
evalFunction "bash fixed.sh"

