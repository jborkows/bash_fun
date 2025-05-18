#!/usr/bin/env bash
source graphics.sh

LOGIC_EXECUTED=0
function logic_before_loop(){
	SCREEN_SIZE=()
	populate_screen_size_into SCREEN_SIZE
	echo "Screen size: ${SCREEN_SIZE[0]} x ${SCREEN_SIZE[1]}"
	LOGIC_EXECUTED=1
}

function logic(){
	local event=$1
	local args=("${@:2}")
	if [[ $LOGIC_EXECUTED -eq 0 ]]; then
		logic_before_loop
	fi 
	if [[ $LOGIC_EXECUTED -eq 1 ]]; then
		clear_screen
		LOGIC_EXECUTED=2
	fi

	case "$event" in
		key-up) move_screen_cursor_to_center; echo "⬆️";;
		key-down) move_screen_cursor_to_center; echo "⬇️";;
		key-left) move_screen_cursor_to_center; echo "⬅️";;
		key-right) move_screen_cursor_to_center; echo "➡️";;
		key-enter) move_screen_cursor_to_center; echo "X";;
		*) echo "Unknown event: $event";;
	esac
}
