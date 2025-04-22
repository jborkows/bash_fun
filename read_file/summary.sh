source ../utils/display.sh
stepTitle Reading files

subTitle everything in memory then process
displayFile reading_all_at_once.sh
evalFunction "bash reading_all_at_once.sh"

subTitle line by line
displayFile reading_line_by_line.sh
evalFunction "bash reading_line_by_line.sh"


subTitle line by line - without slow
displayFile reading_line_by_line_normal.sh
evalFunction "bash reading_line_by_line_normal.sh"




