#!/bin/bash
vulcanize index.html > index.build.html
mv index.build.html index.html
rm -rf elements
cp .gitignore.deploy .gitignore
git add bower_components
git commit -a
