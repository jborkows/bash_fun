#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Playing with ls
subTitle ls -l
evalFunction "ls -l ./files"

subTitle script ls into for loop \(uses spaces as separator\)
showAndRunFile first.sh

subTitle script ls into for loop \(replacing IFS\)
showAndRunFile first_with_ifs.sh

subTitle script using for in with globbing
showAndRunFile second.sh
