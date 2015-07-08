#!/bin/bash
echo Vulcanize
vulcanize index.html > index.build.html
mv index.build.html index.html

echo Removing elements dir
rm -rf elements
