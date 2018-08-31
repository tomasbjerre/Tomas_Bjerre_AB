#!/bin/bash
./update-stats.sh

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git add .
git commit -a -m "Updated"
git remote add origin-pages https://$GH_TOKEN@github.com/tomasbjerre/Tomas_Bjerre_AB.git
git push -u origin-pages master
