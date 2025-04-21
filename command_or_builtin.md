# Command or Builtin
```bash
$> time sudo echo "aaa"
aaa

real    0m4,273s
user    0m0,028s
sys     0m0,035s
$> sudo time echo "aaa"
aaa
0.00user 0.00system 0:00.00elapsed 92%CPU (0avgtext+0avgdata 1968maxresident)k
0inputs+0outputs (0major+85minor)pagefaults 0swaps
$> type -a time
time is a shell keyword
time is /usr/bin/time
time is /bin/time
$> type -a echo
echo is a shell builtin
echo is /usr/bin/echo
echo is /bin/echo
$> /usr/bin/time /usr/bin/echo "aaa"
aaa
0.00user 0.00system 0:00.00elapsed 100%CPU (0avgtext+0avgdata 1968maxresident)k
0inputs+0outputs (0major+81minor)pagefaults 0swaps
```
Order sometimes matters. sudo time uses commands, time sudo uses builtin.
