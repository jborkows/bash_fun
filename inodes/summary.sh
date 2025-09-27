#!/usr/bin/env bash

source ../utils/display.sh
stepTitle "Playing with inodes" 
subTitle "Declare utils"
displayFile "show_stats.sh"
displayFile "show_diff_between_stats.sh"

stepTitle "Prepare"
showAndRunFile "start.sh"
evalFunction "INDEX=0 bash show_stats.sh"

stepTitle "Chmod is changing inode"
showAndRunFile "use_chmod.sh"
evalFunction "INDEX=1 bash show_stats.sh"
evalFunction "FIRST_STATS=0  SECOND_STATS=1 bash show_diff_between_stats.sh"


stepTitle "Changing content chaning both content (modify) and inode (change)"
showAndRunFile "replace_content.sh"
evalFunction "INDEX=2 bash show_stats.sh"
evalFunction "FIRST_STATS=1  SECOND_STATS=2 bash show_diff_between_stats.sh"

stepTitle "Directory with subdirectory has at least two links .. and ."
showAndRunFile "directory_links.sh"

stepTitle "Inodes for links"
showAndRunFile "inodes_for_links.sh"
