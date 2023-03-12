#!/usr/bin/env bash
cd `dirname $0`
source .venv/bin/activate

mkdir -p ./archive
ts=`date +%Y%m%d-%H%M%S`
echo "Backing up to ./archive/trees{.json|.csv}.$ts.bak"
cp trees.csv ./archive/tree.csv.$ts.bak
cp trees.json ./archive/trees.json.$ts.bak

echo "Converting CSV to JSON"
python convert.py

echo "Starting server"
python -m http.server 

# then open http://0.0.0.0:8000

