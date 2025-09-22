#!/usr/bin/env bash

source ../utils/display.sh
stepTitle heredoc
subTitle Simple
showAndRunFile simple.sh
subTitle Indent
showAndRunFile indent.sh
showAndRunFile without_indent.sh
showAndRunFile without_indent_spaces.sh
subTitle Variables
showAndRunFile variables.sh
showAndRunFile without_variables.sh
subTitle EOF is more a convention
showAndRunFile not_eof.sh
subTitle Piping in EOF
showAndRunFile piping.sh
