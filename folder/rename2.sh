#!/bin/bash

# 读取 name.txt 文件的内容，并逐行处理
while IFS=$'\t' read -r key value ; do
    # 对每一组键值对进行处理
    if [ -f "$key" ]; then
        echo $(basename "$value")
        mv "$key" "$(basename "$value" .txt)"
        echo "Renamed $key to $value"
    else
        echo "File $key not found, skipping..."
    fi
done < ./name.txt

echo "请按任意键结束"
read -n 1 -s -r -p ""