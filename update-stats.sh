#!/bin/bash
server=https://stats.jenkins.io/plugin-installation-trend
wget $server/generic-webhook-trigger.stats.json --no-check-certificate
wget $server/git-changelog.stats.json --no-check-certificate
wget $server/violation-comments-to-gitlab.stats.json --no-check-certificate
wget $server/violation-comments-to-github.stats.json --no-check-certificate
wget $server/violation-comments-to-stash.stats.json --no-check-certificate
