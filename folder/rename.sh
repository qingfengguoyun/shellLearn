!#bin/bash
# 指定文件夹路径
folder_path="./"

# 遍历文件夹下的所有文件
for file in $folder_path/*.txt; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        file_number="${filename%.txt}"
        new_filename="${file_number}-${file_number}.txt"
        mv "$file" "$folder_path/$new_filename"
        echo "Renamed $filename to $new_filename"
    fi
done

echo "请按任意键结束"
read -n 1 -s -r -p ""