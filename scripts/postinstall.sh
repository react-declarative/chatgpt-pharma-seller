#!/bin/bash
docker pull chromadb/chroma
cd packages
for D in `find . -maxdepth 1 -not -path "." -not -path "./.*" -type d`
do
    cd $D
    npm install
    cd ..
done
cd ..
