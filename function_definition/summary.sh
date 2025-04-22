#!/usr/bin/env bash
source ../utils/display.sh

stepTitle Using \(\) and \{\} in function definition

subTitle Using \{\}
displayFile curly.sh
evalFunction "bash curly.sh"
subTitle Using \(\)
displayFile using_subshell.sh
evalFunction "bash using_subshell.sh"

subTitle Playing with exit codes
displayFile playing_exit_codes.sh
evalFunction "bash playing_exit_codes.sh"

