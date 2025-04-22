#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Warning with globing
subTitle Failure...
showAndRunFile failure.sh


subTitle Fixed...
showAndRunFile fixed.sh

