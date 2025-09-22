## heredoc
### Simple
_simple.sh_
```bash
#!/usr/bin/env bash
cat << EOF
Hi from here
Hi John
EOF


```
```bash
bash simple.sh
```
```
Hi from here
Hi John
```
### Indent
_indent.sh_
```bash
#!/usr/bin/env bash
main(){
	cat << EOF
	Hi from here
	AAA 
EOF
}

main
```
```bash
bash indent.sh
```
```
	Hi from here
	AAA 
```
_without_indent.sh_
```bash
#!/usr/bin/env bash
main(){
	cat <<- EOF
	Hi from here
	AAA 
EOF
}

main
```
```bash
bash without_indent.sh
```
```
Hi from here
AAA 
```
_without_indent_spaces.sh_
```bash
#!/usr/bin/env bash
main(){
	cat <<- EOF
	Hi from here
        If using spaces not tabs fix does not work 
EOF
}

main
```
```bash
bash without_indent_spaces.sh
```
```
Hi from here
        If using spaces not tabs fix does not work 
```
### Variables
_variables.sh_
```bash
#!/usr/bin/env bash
cat << EOF
Hi from $(hostname)
Hi John $USER
EOF
```
```bash
bash variables.sh
```
```
Hi from jacceks
Hi John jborkows
```
_without_variables.sh_
```bash
#!/usr/bin/env bash
cat << "EOF"
Hi from $(hostname)
Hi John $USER
EOF
```
```bash
bash without_variables.sh
```
```
Hi from $(hostname)
Hi John $USER
```
### EOF is more a convention
_not_eof.sh_
```bash
#!/usr/bin/env bash
cat << KONIEC_PLIKU
Hi from here
Hi John
KONIEC_PLIKU


```
```bash
bash not_eof.sh
```
```
Hi from here
Hi John
```
### Piping in EOF
_piping.sh_
```bash
#!/usr/bin/env bash
cat <<- EOF | nl | grep bar
foo
moo
bar
baz
bar
bar
EOF


```
```bash
bash piping.sh
```
```
     3	bar
     5	bar
     6	bar
```
