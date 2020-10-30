#!/bin/bash 
echo " Name of the file : "
read file
x=0
cat $file | while read p
do
	x=$((x+1))
	echo $x $p $

	
done

