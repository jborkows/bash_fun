#!/usr/bin/env bash
source ../utils/display.sh

stepTitle Mapfile

subTitle Basic usage
displayFile basic.sh
evalFunction "bash basic.sh"


subTitle Basic usage - trimmed
displayFile basic_trimmed.sh
evalFunction "bash basic_trimmed.sh"


subTitle Limited to 2 lines
displayFile limited.sh
evalFunction "bash limited.sh"


subTitle Add callback
displayFile callback.sh
evalFunction "bash callback.sh"
