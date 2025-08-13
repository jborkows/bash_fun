## Traps
### List traps
```bash
trap -l
```
```
 1) SIGHUP	 2) SIGINT	 3) SIGQUIT	 4) SIGILL	 5) SIGTRAP
 6) SIGABRT	 7) SIGBUS	 8) SIGFPE	 9) SIGKILL	10) SIGUSR1
11) SIGSEGV	12) SIGUSR2	13) SIGPIPE	14) SIGALRM	15) SIGTERM
16) SIGSTKFLT	17) SIGCHLD	18) SIGCONT	19) SIGSTOP	20) SIGTSTP
21) SIGTTIN	22) SIGTTOU	23) SIGURG	24) SIGXCPU	25) SIGXFSZ
26) SIGVTALRM	27) SIGPROF	28) SIGWINCH	29) SIGIO	30) SIGPWR
31) SIGSYS	34) SIGRTMIN	35) SIGRTMIN+1	36) SIGRTMIN+2	37) SIGRTMIN+3
38) SIGRTMIN+4	39) SIGRTMIN+5	40) SIGRTMIN+6	41) SIGRTMIN+7	42) SIGRTMIN+8
43) SIGRTMIN+9	44) SIGRTMIN+10	45) SIGRTMIN+11	46) SIGRTMIN+12	47) SIGRTMIN+13
48) SIGRTMIN+14	49) SIGRTMIN+15	50) SIGRTMAX-14	51) SIGRTMAX-13	52) SIGRTMAX-12
53) SIGRTMAX-11	54) SIGRTMAX-10	55) SIGRTMAX-9	56) SIGRTMAX-8	57) SIGRTMAX-7
58) SIGRTMAX-6	59) SIGRTMAX-5	60) SIGRTMAX-4	61) SIGRTMAX-3	62) SIGRTMAX-2
63) SIGRTMAX-1	64) SIGRTMAX	
```
### Infrastructure
_run.sh_
```bash
#!/usr/bin/env bash
bash $1
echo Exit status $?
```
### Cleanup exit codes
_cleanup.sh_
```bash
#!/usr/bin/env bash
cleanup(){
	echo 'cleanup'
}

trap cleanup EXIT
exit 1
```
```bash
bash run.sh cleanup.sh
```
```
cleanup
Exit status 1
```
### Cleanup exit codes with overide
_cleanup_with_exit.sh_
```bash
#!/usr/bin/env bash
cleanup(){
	echo 'cleanup'
	exit 2
}

trap cleanup EXIT
exit 1
```
```bash
bash run.sh cleanup_with_exit.sh
```
```
cleanup
Exit status 2
```
### Debugging
_debugging.sh_
```bash
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
```
```bash
bash debugging.sh
```
```
[DEBUG] echo start
start
[DEBUG] echo ...
...
[DEBUG] echo script done
script done
[DEBUG] some-func
lalala
[DEBUG] some-func-with-return
blabla
[DEBUG] return 1
[RETURN CODE] 1
[DEBUG] some-func-with-return-0
blabla
[DEBUG] exit 1
[DEBUG] exit 1
[EXIT CODE] 1
```
