#!/bin/bash

# 현재 디렉토리에서 서브 디렉토리 목록 가져오기
sub_dirs=$(find . -mindepth 1 -maxdepth 1 -type d)

# 각 서브 디렉토리에서 install.sh 실행
for dir in $sub_dirs; do
    if [ -f "$dir/install.sh" ]; then
        echo "Executing install.sh in $dir"
        (cd "$dir" && ./install.sh)
    fi
done
