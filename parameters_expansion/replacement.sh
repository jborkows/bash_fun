#!/usr/bin/env bash
set -euo pipefail

old='Some string to be replaced'
echo $old
echo Replacing...
new=${old/to/was}
echo ${new/be/}	
