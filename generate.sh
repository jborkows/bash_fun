export MARKDOWN_ON=true
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
for i in ./*; do 
	if [ -d "$i" ]; then 
		output="${SCRIPT_DIR}/$i.md"
		echo output to ${output}
		if [ -f "$i/summary.sh" ]; then
			pushd $i > /dev/null   
			bash summary.sh > $output
			popd > /dev/null  
		fi
	fi; 
done
