#!/bin/bash
cd /srv/plumber/api-covid19-datauc
git checkout master
git pull
git fetch upstream
git merge upstream/master
/usr/bin/Rscript -e "source('R/01-ordenar-datos.R')"
systemctl restart api-covid19-datauc
systemctl restart shiny-server
chmod 777 -R /srv/plumber/api-covid19-datauc/
