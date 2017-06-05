#!/bin/bash
mkdir -p ./autoload ./bundle
curl -LSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim


cd bundle

while read repo; do
    git clone "$repo"
done < ../repolist

cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-complete
