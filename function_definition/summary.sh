#!/usr/bin/env bash
source ../utils/display.sh

stepTitle Using \(\) and \{\} in function definition

subTitle Using \{\}
showAndRunFile curly.sh
subTitle Using \(\)
showAndRunFile using_subshell.sh

subTitle Playing with exit codes
showAndRunFile playing_exit_codes.sh

