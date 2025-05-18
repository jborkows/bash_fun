ESC=$'\x1b'


function start_screen(){
	_graphics_enter_alternate_screen
	tput sgr0 # Reset terminal
	tput civis  # Hide cursor
	stty -echo  # do not show typed characters

	# in order to init the variables we need to fork (and exit) a program or
	# a subshell - this is what this line does

	shopt -s checkwinsize
	(sleep 0.1;)

	cols=$COLUMNS
	lines=$LINES
}

function populate_screen_size_into(){
	local -n result=$1
	local cols=$COLUMNS
	local lines=$LINES
	result=($cols $lines)
}

function initialize_screen_position(){
	move_screen_cursor_to_center
}

function move_screen_cursor_to_center(){
	local cols=$COLUMNS
	local lines=$LINES
	# move cursor to the center of the screen
	local row=$((lines / 2))
	local col=$((cols / 2))
	move_cursor $row $col
}

function debug_lines_position(){
	if ! [[ -v DEBUG_LINES ]]; then
		return
	fi
	local cols=$COLUMNS
	local lines=$LINES
	
	for (( row=0; row<lines; row++ )); do
		for (( col=0; col<cols; col++ )); do
			move_cursor $row $col
			echo "X"
		done
	done
	
}

function clear_screen(){
	tput clear # Reset terminal
}

function cleanup_screen(){
	tput sgr0 # Reset terminal
	tput cnorm # Show cursor
	stty echo # show typed characters
	_graphics_exit_alternate_screen
}

function _graphics_enter_alternate_screen() {
	echo -n  "$ESC[?1049h"   # Enter alternate screen (blank)
}
function _graphics_exit_alternate_screen() {
	echo -n "$ESC[?1049l"   # Return to main screen
}

function move_cursor() {
	local row=$1
	local col=$2
	echo -n "$ESC[$row;${col}H"
}
