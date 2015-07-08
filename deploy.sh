#!/bin/bash -e

# check whether in correct branch
if [ "$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')" != "gh-pages" ]; then
  echo "Script only runs from 'gh-pages' branch, try again after checkout out branch"
  echo "git checkout gh-pages"
  exit 1
fi

echo Vulcanize
vulcanize index.html > index.build.html
mv index.build.html index.html

echo Removing elements dir
rm -rf elements
