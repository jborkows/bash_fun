#!/usr/bin/env bash
function title() {
	echo "===================="
	echo "$1"
	echo "===================="
}

function subtitle() {
	echo "--------------------"
	echo "$1"
	echo "--------------------"
}

function execution(){
	title "$1"
	subtitle body
	cat "$2"
	subtitle effect
	bash "$2"
}
