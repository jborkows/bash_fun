#!/usr/bin/env bash
set -e

my-one-func(){
	echo begin my-one-func
	# assignment hides return value so it will pass with set -e
	local output=$(false)
	echo after my-one-func
}


my-second-func(){
	echo begin my-second-func
	local output
	output=$(false)
	echo after my-second-func
}

echo start
my-one-func
my-second-func
echo 'done'
