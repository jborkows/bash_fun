#!/usr/bin/env bash

source ../utils/display.sh
stepTitle Playing with parameter expansion
subTitle patterns
displayFile first.sh
evalFunction "bash first.sh"


subTitle replacement
displayFile replacement.sh
evalFunction "bash replacement.sh"

subTitle default value
displayFile defaultvalues.sh
evalFunction "bash defaultvalues.sh"


subTitle lower case/upper case
displayFile lower_upper_case.sh
evalFunction "bash lower_upper_case.sh"
