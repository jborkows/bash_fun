#!/usr/bin/env bash
source ../utils/display.sh

stepTitle Mapfile

subTitle Basic usage
showAndRunFile basic.sh


subTitle Basic usage - trimmed
showAndRunFile basic_trimmed.sh


subTitle Limited to 2 lines
showAndRunFile limited.sh


subTitle Add callback
showAndRunFile callback.sh
