#!/usr/bin/env bash

source ../utils/display.sh

stepTitle Counting and showing execution of external commands

subTitle counting
evalFunction "(cd ../parsingline; strace -f -e trace=execve bash multiplesubshell.sh 2>&1 | grep execve | wc -l)"


subTitle showing
evalFunction "(cd ../parsingline; strace -f -e trace=execve bash multiplesubshell.sh 2>&1 | grep execve  )"

