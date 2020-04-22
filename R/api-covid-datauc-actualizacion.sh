#!/bin/bash
cd /srv/plumber/api-covid19-datauc
git pull
systemctl restart api-covid19-datauc
systemctl restart shiny-server
