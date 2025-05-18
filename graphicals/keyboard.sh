#!/usr/bin/env bash

source messages_channel.sh
KEYBOARD_PID=

function read_keyboard_events_task() {
	KEYBOARD_PID=$!
	# read user input - handle arrow keys and letters
	local escape_char=$'\u1b'
	while true; do
		local data=
		# read single character from stdin (n1), no echoing (s), don't allow backslashes to escape characters (r)
		read -rsn1 data 2>/dev/null || return
		if [[ $data == "$escape_char" ]]; then
			read -rsn2 data 2>/dev/null || return
		fi

		local output=
		case "$data" in
			'[A' | k) output='key-up';;
			'[B' | j) output='key-down';;
			'[C' | l) output='key-right';;
			'[D' | h) output='key-left';;
			''      ) output='key-enter';;
		esac

		if [[ -n $output ]]; then
			send_message "$output"
		fi
	done
}

function close_keyboard_events_task() {
	if [[ -n $KEYBOARD_PID ]]; then
		kill "$KEYBOARD_PID" 2>/dev/null
		wait "$KEYBOARD_PID" 2>/dev/null
		unset KEYBOARD_PID
	fi
}
