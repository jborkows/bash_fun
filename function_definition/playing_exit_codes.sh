#!/usr/bin/env bash

curly() {
	echo "Calling curly"
	exit 1
}

paranthessis() (
	echo "Calling paranthessis"
	exit 1
)

echo Before paranthessis
paranthessis
echo After paranthessis $?

echo Before curly
( curly )
echo After curly $?
echo Before curly
curly
echo After curly $? #this will not be printed

