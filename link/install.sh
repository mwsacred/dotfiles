#!/bin/bash

# .zshrc 파일의 경로
source_file="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.zshrc"

# 홈 디렉토리에 심볼릭 링크를 만들 .zshrc 파일의 경로
target_file="$HOME/.zshrc"

# 이미 홈 디렉토리에 .zshrc 파일이 존재하는지 확인
if [ -f "$target_file" ]; then
    echo "Error: ~/.zshrc already exists. Please remove it or move it before creating a new link."
    exit 1
fi

# 심볼릭 링크 생성
ln -s "$source_file" "$target_file"

echo "Symbolic link created: $target_file -> $source_file"
