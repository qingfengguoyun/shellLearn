#!bin/bash
file_path='./out.txt'
touch ./out.txt;
if [ -f "$file_path" ]; then
    echo "File $file_path exists."
else
    echo "File $file_path does not exist."
fi
while IFS=$'\t' read -r name s1 s2 s3; do
	echo "$name $s1 $s2 $s3";
	mkdir $name
	scoreFile="./$name/score.txt"
	touch $scoreFile
	str="$name $s1 $s2 $s3"
	echo $str >> $scoreFile
done < ./test.txt;
echo "请按任意键结束"
read -n 1 -s -r -p ""