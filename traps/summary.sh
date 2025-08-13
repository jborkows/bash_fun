#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Traps
subTitle List traps
evalFunction "trap -l"

subTitle Infrastructure
displayFile run.sh

subTitle Cleanup exit codes
displayFile cleanup.sh
evalFunction "bash run.sh cleanup.sh"

subTitle Cleanup exit codes with overide
displayFile cleanup_with_exit.sh
evalFunction "bash run.sh cleanup_with_exit.sh"

subTitle Debugging
showAndRunFile debugging.sh

