#!/usr/bin/env bash

source ../utils/display.sh

stepTitle Reading and parsing files
subTitle original file
displayFile data.txt

subTitle multiple external commands for each line
showAndRunFile multiplesubshell.sh

subTitle single command for each line
showAndRunFile singlecommand.sh
