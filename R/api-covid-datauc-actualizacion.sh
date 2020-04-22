#!/bin/bash
cd /srv/plumber/api-covid19-datauc
git checkout master
git pull
git fetch upstream
git merge upstream/master
systemctl restart api-covid19-datauc
