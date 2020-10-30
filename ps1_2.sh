#!/bin/bash
rm dummy.txt
echo " Enter the size of dummy file to be created:"
read size
touch dummy.txt;
x=0
while [ $x -lt $size ]
do echo a >> dummy.txt
  x=`expr $x + 1`
done
