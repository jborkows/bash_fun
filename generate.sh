#!/usr/bin/env bash

set -euo pipefail

export MARKDOWN_ON=true

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Script directory: $SCRIPT_DIR"
echo
mkdir -p "$SCRIPT_DIR/sections" || true

for dir in */; do
    # ${var%suffix} removes suffix from $var
    dir="${dir%/}"

    [ -d "$dir" ] || continue

    OUTPUT_FILE="$SCRIPT_DIR/sections/${dir}.md"

    SUMMARY_SCRIPT="summary.sh"
    if [  -f "$dir/$SUMMARY_SCRIPT" ]; then
	    echo "Running $SUMMARY_SCRIPT in $dir..."
	    (
	    cd "$dir"
	    bash $SUMMARY_SCRIPT > "$OUTPUT_FILE"
	    )

	    echo "Output saved to $OUTPUT_FILE"
	    continue
    fi
    SUMMARY_SCRIPT="summary.bashx"
    if [  -f "$dir/$SUMMARY_SCRIPT" ]; then
	    echo "Running $SUMMARY_SCRIPT in $dir..."
	    (
	    cd "$dir"
	    bash $SUMMARY_SCRIPT > "$OUTPUT_FILE"
	    )

	    echo "Output saved to $OUTPUT_FILE"
	    continue
    fi
    echo "Skipping $dir (no summary.sh nor summary.bashx found)"
done

outputs=( )
for mdFile in ${SCRIPT_DIR}/sections/*.md; do
	head -1 "$mdFile" 
	title=$(head -1 "$mdFile") 	
	removedNotation=${title##*#}
	outputs+=("-[$removedNotation](./sections/${mdFile##*/})")
done;

IFS=$'\n' 
cat <<EOF > "$SCRIPT_DIR/README.md"
# Sources:
- [ysap](https://www.youtube.com/watch?v=KwRow9DdFJ0)
# Sections
${outputs[*]}
EOF
IFS=
