## Playing with eof
### Using eof
_basic.sh_
```bash
#!/usr/bin/env bash
read -r -d '' my_var_name <<EOF
string could have now ' and " in it!
-d '' makes bash not to split lines based on new line or ignore some
It can read environment variables:
${FZF_DEFAULT_OPTS}
It will read till raches EOF
EOF

echo "Prepared string:"
echo "$my_var_name"

echo we can also not expand variables e.g.

read -r -d '' my_var_name <<"EOF"
${FZF_DEFAULT_OPTS}
EOF
echo "$my_var_name"
```
```bash
bash basic.sh
```
```
Prepared string:
string could have now ' and " in it!
-d '' makes bash not to split lines based on new line or ignore some
It can read environment variables:
--preview 'batcat -n --color=always {}' --bind 'f1:toggle-preview' --preview-window hidden --multi
It will read till raches EOF
we can also not expand variables e.g.
${FZF_DEFAULT_OPTS}
```
