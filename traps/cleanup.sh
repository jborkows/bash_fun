#!/usr/bin/env bash
cleanup(){
	echo 'cleanup'
}

trap cleanup EXIT
exit 1
