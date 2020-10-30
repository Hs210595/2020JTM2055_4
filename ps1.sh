#!/bin/sh
echo " Select problem number you want to execute "
read problem
	if [ $problem -eq 1 ]
	then
		# Adding User
                for i in `more user.txt `
                do
                echo $i
                adduser $i
                done
	fi
	if [ $problem -eq 2 ]
	then
		rm dummy.txt
		echo " Enter the size of dummy file to be created:"
		read size
		touch dummy.txt;
		x=0
		while [ $x -lt $size ]
                do echo a >> dummy.txt
		x=`expr $x + 1`
		done
	fi




        if [ $problem -eq 2]
	then
        #Creating dummy file
        rm dummy.txt
        echo " Enter the size of dummy file to be created:"
        read size
        touch dummy.txt;
        x=0
        while [ $x -lt $size ]
        do echo a >> dummy.txt
        x=`expr $x + 1`
        done
        fi

       if [ $problem -eq 4]
       then
#reading file along with line number
echo " Name of the file : "
read file
x=0
cat $file | while read p
do
        x=$((x+1))
        echo $x $p $


done

fi
if [ problem -eq 5 ]
# Script count number of file in directory
echo " Enter the directory name: "
read directory
if [ -d "$directory" ]; then
    echo "Files found: $(find "$@" -type f | wc -l)"
    echo "Folders found: $(find "$@" -type d | wc -l)"
else
    echo "[ERROR] Please retry with a folder."
    exit 1
fi
fi
