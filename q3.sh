#!/bin/bash
first="$1"
len=${#first}
second=`echo $first | grep -o . | sort | tr -d "\n"`
flag=0
arr=($(compgen -c | awk -v var=$len 'length($0) ==var' | sort -u))
for i in "${arr[@]}";
do
		temp=$i
		j=`echo $i | grep -o . | sort | tr -d "\n"`
		if [[ $j == $second ]] ;then
			if [[ $flag -eq 0 ]] ;then
				((flag+=1))
				echo -ne "YES\t$temp"
			else 
				echo -ne "\t$temp"
			fi
		fi
done
if [[ $flag -eq 0 ]] ;then
			 	echo "NO"
fi

