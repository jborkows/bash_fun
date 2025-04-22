#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Plaaying with return parameter
subTitle Example
displayFile example.sh
evalFunction "bash example.sh"
subTitle Capturing return value
displayFile capturing_result.sh
evalFunction "bash capturing_result.sh"

subTitle Capturing return value into local \(wrong\)
displayFile capturing_result_local.sh
evalFunction "bash  capturing_result_local.sh"

subTitle Capturing return value into local \(fixed\)
displayFile capturing_result_local_correct.sh
evalFunction "bash  capturing_result_local_correct.sh"



