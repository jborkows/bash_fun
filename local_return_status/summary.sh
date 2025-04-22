#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Playing with return parameter
subTitle Example
showAndRunFile example.sh
subTitle Capturing return value
showAndRunFile capturing_result.sh

subTitle Capturing return value into local \(wrong\)
showAndRunFile capturing_result_local.sh

subTitle Capturing return value into local \(fixed\)
showAndRunFile capturing_result_local_correct.sh



