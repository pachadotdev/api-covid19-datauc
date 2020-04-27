#!/bin/bash
cd /srv/plumber/api-covid19-datauc
if [ -d output ]; then
  rm -rf output
fi

if [ ! -d output ]; then
  git clone https://github.com/MinCiencia/Datos-COVID19.git datos-covid19
  mv datos-covid19/output/ output/
fi

if [ -d datos-covid19 ]; then
  rm -rf datos-covid19
fi

git pull --no-ff
/usr/bin/Rscript -e "source('R/01-ordenar-datos.R')"
systemctl restart api-covid19-datauc
systemctl restart shiny-server
chmod 777 -R /srv/plumber/api-covid19-datauc/
