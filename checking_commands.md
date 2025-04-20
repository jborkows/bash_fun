## Some info for working with commands to check if they are built-in or external
### type command
```bash
type echo
```
```
echo is a shell builtin
```
### which command
```bash
which echo
```
```
/usr/bin/echo
```
### more detailed info from type
```bash
type -a echo
```
```
echo is a shell builtin
echo is /usr/bin/echo
echo is /bin/echo
```
### How to get help
Print help to get help for built-in commands
