#!/usr/bin/env bash

source ../utils/display.sh
stepTitle cstyleloops

subTitle Expansion
showAndRunFile expansion.sh

subTitle Failed Expansion
showAndRunFile failed_expansion.sh

subTitle c style
showAndRunFile cstyle.sh
