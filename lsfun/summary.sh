#!/usr/bin/env bash
source ../utils/display.sh

title "ls"
ls ./files

execution "script ls into for loop (uses spaces as separator)" first.sh
execution "script ls into for loop with globbing" second.sh

