#!/usr/bin/env bash
PIPE=

function start_channel() {
	PIPE=/tmp/main_channel.$$
	mkfifo "$PIPE" || fatal "failed to create pipe $PIPE"
	exec 3<>"$PIPE" || fatal "failed to open pipe $PIPE"
	echo "created FIFO pipe: $PIPE"
}

function send_message() {
	local message=$1
	if [[ -p $PIPE ]]; then
		echo "$message" >&3
	else
		echo "Pipe not found: $PIPE"
	fi
}

function cleanup_channel() {
	if [[ -p $PIPE ]]; then
		echo "Cleaning up FIFO pipe: $PIPE"
		rm -f "$PIPE"
	fi
}

function read_event_loop() {
	local processor=$1
	if [[ -z $processor ]]; then
		echo "No processor specified"
		return 1
	fi
	local data
	while read -ra data; do
		# we have read an event!
		local event=${data[0]}
		local args=("${data[@]:1}")
		$processor "$event" "${args[@]}"
	done <&3
}
