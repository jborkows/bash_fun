#!/usr/bin/env bash
cleanup(){
	echo 'cleanup'
	exit 2
}

trap cleanup EXIT
exit 1
