#!/usr/bin/env bash

source graphics.sh
source messages_channel.sh
source keyboard.sh
source logic.sh

function cleanup() {
	echo "Cleaning up..."
	close_keyboard_events_task
	cleanup_channel
	cleanup_screen
}
trap cleanup EXIT

function main(){
	start_channel
	start_screen
	read_keyboard_events_task <&0 &
	initialize_screen_position
	debug_lines_position
	read_event_loop logic
}
main
