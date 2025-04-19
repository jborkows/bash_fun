#!/usr/bin/env bash

function bashPrefix(){
	echo '```bash' >> $GITHUB_STEP_SUMMARY
}
function displayBlock(){
	echo '```' >> $GITHUB_STEP_SUMMARY
}

function stepTitle(){
	echo "#" $* >> $GITHUB_STEP_SUMMARY
}

function subTitle() {
	echo "##" $* >> $GITHUB_STEP_SUMMARY
}

function displayFile() {
	bashPrefix
	cat "$1" >> $GITHUB_STEP_SUMMARY
	displayBlock
}

function evalFunction() {
	bashPrefix
	echo "$*" >> $GITHUB_STEP_SUMMARY
	displayBlock
	displayBlock
	eval "$*">> $GITHUB_STEP_SUMMARY
	displayBlock
}

