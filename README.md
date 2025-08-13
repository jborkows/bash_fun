# Sources:
- [ysap](https://www.youtube.com/watch?v=KwRow9DdFJ0)
# Tips:
## Privilege escalation
```bash
sudo echo "aaa" > /etc/hostname
```
will not work, echo was run as root, but the redirection is run as the user.

### Possible solution:
```bash
echo "aaa" | sudo tee /etc/hostname > /dev/null
```
## Alternate screen
Like less opens a window which dissappears. See
```bash
tput smcup; env ; sleep 3;tput rmcup
```
It will show env for 3 seconds and then go back to original content.
or
```bash
tput smcup; cat README.md ;read -n 1 -s ;tput rmcup
```

# Sections
- [ Playing with arrays](./sections/arrays.md)
- [ Working with input arguments expansion](./sections/basharguments.md)
- [ Some info for working with commands to check if they are built-in or external](./sections/checking_commands.md)
- [ Playing with tty](./sections/checking_the_kind_of_output.md)
- [ command substitution](./sections/command_substitution.md)
- [ Counting and showing execution of external commands](./sections/counting_commands.md)
- [ cstyleloops](./sections/cstyleloops.md)
- [ Expansions](./sections/expansions.md)
- [ Extended Globbing](./sections/extended_globbing.md)
- [ Using () and {} in function definition](./sections/function_definition.md)
- [ Warning with globing](./sections/globing_failures.md)
- [ Playing with return parameter](./sections/local_return_status.md)
- [ Playing with ls](./sections/lsfun.md)
- [ Making clear environment](./sections/making_clear_environment.md)
- [ Mapfile](./sections/mapfile_usage.md)
- [ Playing with parameter expansion](./sections/parameters_expansion.md)
- [ Reading and parsing files](./sections/parsingline.md)
- [ Using pipe status](./sections/pipe_status.md)
- [ Reading files in different ways](./sections/read_file.md)
- [ Parsing names using regex](./sections/regexpparsing.md)
- [ Strict Bash Fail](./sections/Strict_Bash_Fail.md)
- [ Substrings](./sections/substrings.md)
- [ Traps](./sections/traps.md)
- [ glob star](./sections/twoasterix.md)
- [ Playing with eof](./sections/using_eof.md)
- [ Using proc to read environment variables](./sections/using_proc_for_environment.md)
