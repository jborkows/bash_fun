#!/usr/bin/env bash
cat <<- EOF | nl | grep bar
foo
moo
bar
baz
bar
bar
EOF


