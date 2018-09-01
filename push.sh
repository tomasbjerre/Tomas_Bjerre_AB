#!/bin/bash

git config user.email "travis@travis-ci.org"
git config user.name "Travis CI"

git checkout master

./update-stats.sh

git add .
git commit -a -m "Updated $TRAVIS_BUILD_NUMBER"
git remote add origin-pages https://$GH_TOKEN@github.com/tomasbjerre/Tomas_Bjerre_AB.git
git remote -v
git push -u origin-pages master
