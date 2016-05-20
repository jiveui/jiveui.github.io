#!/bin/bash

echo Copy API...
cp -r ../jive/docs/api/* ../jiveui.github.io-development/api/

echo Build site...
jekyll build

echo Copy site...
cp -r _site/* ../jiveui.github.io

echo Send to gitnub...
cd ../jiveui.github.io && git add . && git commit -m "Update $(date +"%F %T")" -a && git push