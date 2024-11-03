#!/bin/bash
#name:Enable Fluidd 80 port
#dir:General/Fluidd
#description:Enable Fluidd 80 port
sudo sh -c "grep -qE 'listen\s+80;' /etc/nginx/sites-available/fluidd || sed -Ei '/^\s+listen\s+10088;/i listen 80;' /etc/nginx/sites-available/fluidd"
sudo sh -c "service nginx reload"
exit 0