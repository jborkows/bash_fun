#!/usr/bin/env bash

set -euo pipefail

export MARKDOWN_ON=true

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Script directory: $SCRIPT_DIR"
echo

for dir in */; do
    # ${var%suffix} removes suffix from $var
    dir="${dir%/}"

    [ -d "$dir" ] || continue

    SUMMARY_SCRIPT="$dir/summary.sh"
    if [ ! -f "$SUMMARY_SCRIPT" ]; then
	    echo "Skipping $dir (no summary.sh)"
	    continue
    fi

    OUTPUT_FILE="$SCRIPT_DIR/${dir}.md"
    echo "Running summary.sh in $dir..."

    (
	    cd "$dir"
	    bash summary.sh > "$OUTPUT_FILE"
    )

    echo "Output saved to $OUTPUT_FILE"
    echo
done

