#!bin/bash

str="D:\安装包\folder\3.txt"

str1=${str//\\/ }

echo ${str1}

IFS=' ' read -r -a str_array <<< "$str1"
length=${#str_array[@]}
echo "length: $length"

#$[..]为`expr ..`的简写形式
echo "array [$[$length - 2]]：${str_array[$[$length - 2]]} "

for var in ${str_array[@]};do
echo $var
done;

echo "请按任意键结束"
read -n 1 -s -r -p ""