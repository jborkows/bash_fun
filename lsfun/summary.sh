#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Playing with ls
subTitle ls -l
evalFunction "ls -l ./files"

subTitle script ls into for loop \(uses spaces as separator\)
displayFile first.sh
evalFunction "bash first.sh"

subTitle script ls into for loop \(replacing IFS\)
displayFile first_with_ifs.sh
evalFunction "bash first_with_ifs.sh"

subTitle script using for in with globbing
displayFile second.sh
evalFunction "bash second.sh"
