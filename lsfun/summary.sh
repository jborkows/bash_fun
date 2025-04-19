#!/usr/bin/env bash
source ../utils/display.sh

mainTitle "Playing with ls"
title "ls"
if isCI; then
	echo '```bash'
	ls ./files
	echo '```'
else
	ls ./files
fi

execution "script ls into for loop (uses spaces as separator)" first.sh
execution "script ls into for loop with globbing" second.sh

