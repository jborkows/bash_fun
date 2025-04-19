#!/bin/bash
IFS=";"
for f in `ls files`;do 
	echo file is $f
done
IFS=

