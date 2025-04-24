#!/usr/bin/env bash
section_name=$1
mkdir -p "$section_name"
(cd "$section_name";
cat <<"EOF" > "summary.sh"
#!/usr/bin/env bash

source ../utils/display.sh
stepTitle XXX
subTitle First
showAndRunFile first.sh
EOF
sed -i "s/XXX/$section_name/g" summary.sh
cat <<"EOF" > "first.sh"
#!/usr/bin/env bash
EOF
)
echo "(cd "$section_name"; bash summary.sh)"
