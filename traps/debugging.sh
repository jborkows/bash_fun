#!/usr/env/bin bash
debugging(){
	echo "[DEBUG] $BASH_COMMAND"
}
debug_exit() {
    echo "[EXIT CODE] $?"
}

debug_return() {
    echo "[RETURN CODE] $?"
}

some-func(){
	echo "lalala"
}
some-func-with-return(){
	echo "blabla"
	return 1
}

some-func-with-return-0(){
	echo "blabla"
	return 0
}

trap debug_exit EXIT
trap debug_return ERR
trap debugging debug

echo start
echo ...
echo script done
some-func
some-func-with-return
some-func-with-return-0
exit 1
