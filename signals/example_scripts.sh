#!/usr/bin/env bash

echo Setting stage
function preparation_stage(){
    echo Caught signal
    sleep 0.1
}

function sleep_stage(){
    echo Sleeping
    sleep 0.1
    trap - TSTP
    kill -s SIGTSTP $$
}

trap preparation_stage  INT
trap preparation_stage  TERM
trap sleep_stage  TSTP #it will work correctly only if kill -s SIGTSTP was used from other terminal

while true; do
    echo "Running..."
    sleep 1
done
