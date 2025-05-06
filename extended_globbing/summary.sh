#!/usr/bin/env bash

source ../utils/display.sh
stepTitle "Extended Globbing"
subTitle "Checking if extended globbing is enabled"
evalFunction "shopt extglob"

mkdir -p testdir
(cd testdir;
touch file1.txt
touch file1.png
touch file2.jpg
touch file3.txt

evalFunction "ls"

subTitle "Enabling extended glob"
evalFunction "shopt -s extglob"
evalFunction "shopt extglob"

subTitle "Ignoring text files"
evalFunction "ls !(*.txt)"

subTitle "Matching only file1 txt and png"
evalFunction "ls ./file1.+(txt|png)"

)

