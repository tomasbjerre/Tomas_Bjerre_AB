#!/bin/bash

doget () {
 server=$1
 file=$2
 wget $1/$2 --no-check-certificate -O json/$2 || echo "Unable to download" && exit 0
 cat json/$2 | python -m json.tool > json/$2.pretty
} 

rm -rfv json || echo No json folder
mkdir json

server=https://stats.jenkins.io/plugin-installation-trend
doget $server generic-webhook-trigger.stats.json
doget $server git-changelog.stats.json
doget $server violation-comments-to-gitlab.stats.json
doget $server violation-comments-to-github.stats.json
doget $server violation-comments-to-stash.stats.json

addons=https://marketplace.atlassian.com/rest/2/addons
doget $addons se.bjurr.prnfs.pull-request-notifier-for-stash
doget $addons se.bjurr.sscc.sscc
doget $addons se.bjurr.changelog.git-changelog-for-bitbucket
doget $addons se.bjurr.ssfb.settings-synchronizer-for-bitbucket
