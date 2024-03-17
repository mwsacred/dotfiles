#!/bin/bash

source_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for source_file in "$source_dir"/* "$source_dir"/.*; do
    filename=$(basename "$source_file")
    target_file="$HOME/$filename"

    if [ "$filename" = "install.sh" ]; then
        continue
    fi

    # 심볼릭 링크 생성
    ln -s "$source_file" "$target_file"
    echo "Symbolic link created: $target_file -> $source_file"
done
