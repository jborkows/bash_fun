#!/usr/bin/env bash
set -e
i=-2; ((i++)); echo -2++ status $?;
i=-1; ((i++)); echo -1++ status $?;
i=0; ((i++)); echo 0++ status $?;
i=1; ((i++)); echo 1++ status $?;
