#!/usr/bin/env bash

source ../utils/display.sh

stepTitle Reading and parsing files
subTitle original file
displayFile original.txt

subTitle multiple external commands for each line
displayFile multiplesubshell.sh
evalFunction "bash multiplesubshell.sh"

subTitle single command for each line
displayFile singlecommand.sh
evalFunction "bash singlecommand.sh"
