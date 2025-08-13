#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Strict Bash Fail
subTitle Working pipefile
showAndRunFile working_pipefile.sh

subTitle Not working pipefile
showAndRunFile not_working_pipefile.sh

subTitle Using bash -u to check, alternative to set -u
displayFile script_with_failure.sh
evalFunction "bash -u script_with_failure.sh 2>&1"

subTitle Without set -e
showAndRunFile withoutsete.sh

subTitle With set -e
showAndRunFile withsete.sh

subTitle "Another example without set -e"
showAndRunFile withoutsete_function.sh


subTitle "Another example with set -e"
showAndRunFile withsete_function.sh
