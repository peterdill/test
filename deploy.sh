#!/bin/bash
mv index.html index.dev.html
vulcanize index.dev.html index.html
rm -rf elements
cp .gitignore.deploy .gitignore
git add bower_components
git commit -a
