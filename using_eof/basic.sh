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
