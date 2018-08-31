#!/bin/bash
server=https://stats.jenkins.io/plugin-installation-trend
rm -v *stats.json*
wget $server/generic-webhook-trigger.stats.json --no-check-certificate
wget $server/git-changelog.stats.json --no-check-certificate
wget $server/violation-comments-to-gitlab.stats.json --no-check-certificate
wget $server/violation-comments-to-github.stats.json --no-check-certificate
wget $server/violation-comments-to-stash.stats.json --no-check-certificate

addons=https://marketplace.atlassian.com/rest/2/addons
rm -v se.bjurr.*
wget $addons/se.bjurr.prnfs.pull-request-notifier-for-stash
wget $addons/se.bjurr.sscc.sscc
wget $addons/se.bjurr.changelog.git-changelog-for-bitbucket
wget $addons/se.bjurr.ssfb.settings-synchronizer-for-bitbucket
