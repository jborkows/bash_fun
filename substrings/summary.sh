#!/usr/bin/env bash
source ../utils/display.sh

stepTitle Substrings

subTitle From beginning to end
displayFile basic.sh
evalFunction "bash basic.sh"


subTitle From end to beginning
displayFile fromend.sh
evalFunction "bash fromend.sh"
