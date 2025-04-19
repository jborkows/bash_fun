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

title "ls"
ls ./files

execution "script ls into for loop (uses spaces as separator)" first.sh
execution "script ls into for loop with globbing" second.sh

