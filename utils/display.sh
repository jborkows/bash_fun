#!/usr/bin/env bash
function isCI() {
	# Check if the script is running in a CI environment
	if [[ "$CI" == "true" ]]; then
		return 0 # true
	else
		return 1 # false
	fi
}

function mainTitle() {

	if isCI; then
		echo "#" $1
	else
		echo "===================="
		echo "  $1"
		echo "===================="
	fi
}
function title() {
	if isCI; then
		echo "##" $1
	else
		echo "===================="
		echo "  $1"
		echo "===================="
	fi
}

function code() {
	if isCI; then
		echo '```bash'
		cat "$1"
		echo '```'
	else
		echo "--------------------"
		echo "body"
		echo "--------------------"
		cat "$1"
	fi
}

function effect() {
	if isCI; then
		echo '```'
		bash "$1"
		echo '```'
	else
		echo "--------------------"
		echo "effect"
		echo "--------------------"
		bash "$1"
	fi
}

function execution(){
	title "$1"
	code $2
	effect $2
}
