#!/usr/bin/env bash
source ../utils/display.sh

mainTitle "Playing with ls"
title "ls -l"
if isCI; then
	echo '```'
	ls -l ./files
	echo '```'
else
	ls ./files
fi

execution "script ls into for loop (uses spaces as separator)" first.sh
execution "script using for in with globbing" second.sh

