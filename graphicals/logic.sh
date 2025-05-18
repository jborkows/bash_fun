#!/usr/bin/env bash
source graphics.sh

function logic(){
	local event=$1
	local args=("${@:2}")
	case "$event" in
		key-up) move_screen_cursor_to_center; echo "⬆️";;
		key-down) move_screen_cursor_to_center; echo "⬇️";;
		key-left) move_screen_cursor_to_center; echo "⬅️";;
		key-right) move_screen_cursor_to_center; echo "➡️";;
		key-enter) move_screen_cursor_to_center; echo "X";;
		*) echo "Unknown event: $event";;
	esac
}
