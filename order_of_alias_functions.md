# Order of alias, function, builtin, and external command resolution in bash
```bash
alias echo='echo foo';
function echo() { command echo bar "$@"; };
type -a echo
```
```
echo is aliased to `echo foo'
echo is a function
echo ()
{
    command echo bar "$@"
}
echo is a shell builtin
echo is /usr/bin/echo
echo is /bin/echo
```
