#!/usr/bin/env bash


export MARKDOWN_ON=true

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Script directory: $SCRIPT_DIR"
echo
mkdir -p "$SCRIPT_DIR/sections" || true

tasks=()
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
	    ) &
	    tasks+=("$!")

	    echo "Output saved to $OUTPUT_FILE"
	    continue
    fi
    SUMMARY_SCRIPT="summary.bashx"
    if [  -f "$dir/$SUMMARY_SCRIPT" ]; then
	    echo "Running $SUMMARY_SCRIPT in $dir..."
	    (
	    cd "$dir"
	    bash $SUMMARY_SCRIPT > "$OUTPUT_FILE" 
	    ) &
	    tasks+=("$!")

	    echo "Output saved to $OUTPUT_FILE"
	    continue
    fi
    echo "Skipping $dir (no summary.sh nor summary.bashx found)"
done

echo "Waiting for tasks to finish..."
wait "${tasks[@]}"
echo "All tasks completed."
cat <<"EOF" > "$SCRIPT_DIR/README.md"
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
EOF
echo "Geenerating sections..."
for mdFile in ${SCRIPT_DIR}/sections/*.md; do
	head -1 "$mdFile" 
	title=$(head -1 "$mdFile") 	
	removedNotation=${title##*#}
	removedNotation=${removedNotation:0}
	echo "- [$removedNotation](./sections/${mdFile##*/})" >> "$SCRIPT_DIR/README.md"
done;
