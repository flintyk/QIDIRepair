#!/bin/bash
#name:Disable Fluidd 80 port
#dir:General/Fluidd
#description:Disable Fluidd 80 port
sudo sh -c "sed -Ei '/^listen\s+80;/d' /etc/nginx/sites-available/fluidd"
sudo sh -c "service nginx reload"
exit 0