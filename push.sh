#!/bin/bash

git config user.email "travis@travis-ci.org"
git config user.name "Travis CI"

git checkout master

./update-stats.sh
if [ $? -eq 0 ]; then
    echo Update OK
else
    echo Update failed!
    exit 1
fi

git add .
git commit -a -m "Updated $TRAVIS_BUILD_NUMBER"
git remote add origin-pages https://$GH_TOKEN@github.com/tomasbjerre/Tomas_Bjerre_AB.git
git remote -v
git push -u origin-pages master
