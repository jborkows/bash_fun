#!/usr/bin/env bash
source ../utils/display.sh

stepTitle Using pipe status

subTitle Basics
displayFile basic.sh
evalFunction "bash basic.sh" 


subTitle Seeing exit codes
displayFile morefun.sh
evalFunction "bash morefun.sh" 

