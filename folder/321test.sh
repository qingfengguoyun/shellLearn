#!bin/bash
while IFS=$'\t' read -r name s1 s2 s3 
do
	echo "$name $s1 $s2 $s3";

done < ./test.txt;

echo "请按任意键结束"
read -n 1 -s -r -p ""