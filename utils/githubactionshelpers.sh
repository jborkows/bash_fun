#!/usr/bin/env bash

function markdownOn() {
	if [[ "$CI" == "true" ]]; then
		return 0 
	elif [[ "$MARKDOWN_ON" == "true" ]]; then
		return 0 
	else
		return 1 
	fi
}

function bashPrefix(){
	if markdownOn; then
		echo '```bash' 
	else
		echo "--------------------"
		echo "body"
		echo "--------------------"
	fi
}
function displayBlock(){
	if markdownOn; then
		echo '```' 
	else
		echo "--------------------"
		echo "end"
		echo "--------------------"
	fi
}

function stepTitle(){
	if markdownOn; then
		echo "##" $* 
	else
		echo "===================="
		echo "  $*"
		echo "===================="
	fi
}

function subTitle() {
	if markdownOn; then
		echo "###" $* 
	else
		echo "--------------------"
		echo "  $*"
		echo "--------------------"
	fi
}

function displayFile() {
	bashPrefix
	cat "$1"  
	displayBlock
}

function evalFunction() {
	bashPrefix
	echo "$*" 
	displayBlock
	displayBlock
	eval "$*"
	displayBlock
}

