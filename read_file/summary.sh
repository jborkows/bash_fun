source ../utils/display.sh
stepTitle Reading files in different ways

displayFile example.txt
displayFile slow_read.sh

subTitle everything in memory then process
showAndRunFile reading_all_at_once.sh

subTitle line by line
showAndRunFile reading_line_by_line.sh


subTitle line by line - without slow
showAndRunFile reading_line_by_line_normal.sh




