#!/usr/bin/env bash

source ../utils/display.sh
stepTitle glob star
subTitle Preparing
showAndRunFile first.sh

subTitle Without globstar
showAndRunFile second.sh


subTitle With globstar
showAndRunFile third.sh
