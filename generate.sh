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

    OUTPUT_FILE="$SCRIPT_DIR/${dir}.md"

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

