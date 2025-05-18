#!/usr/bin/env bash	
ESC=$'\x1b'
function set_color() {
	echo -n "$ESC[38;5;$1m"
}
function set_bg_color() {
	echo -n "$ESC[48;5;$1m"
}
function reset_color() {
	echo -n "$ESC[0m"
}
function bold() {
	reset_color
	echo -n "$ESC[1m"
	echo $1
	reset_color

}

echo -n $'\x1b[?1049h'   # Enter alternate screen (blank)
tput sgr0
tput civis         # Hide cursor
stty -echo
echo "You are now on the alternate screen"
row=20
col=50
echo -n "$ESC[$row;${col}H"
set_color 230
set_bg_color 120
echo "This is a test"
row=$((row + 3))
echo -n "$ESC[$row;${col}H"
bold aaaaa
reset_color
row=$((row + 3))
echo -n "$ESC[$row;${col}H"
echo "This is a test"
sleep 2

function cleanup() {
	reset_color
	tput sgr0 # Reset terminal
	tput cnorm # Show cursor
	stty echo # show typed characters
	echo -n $'\x1b[?1049l'   # Return to main screen
}
trap cleanup EXIT
