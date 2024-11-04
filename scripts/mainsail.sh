#!/bin/bash
#name:Install Mainsail
#dir:General/Mainsail
#description:Install Mainsail v2.6.0
cd ~ && rm -rf mainsail && mkdir ~/mainsail && cd ~/mainsail && wget -O mainsail.zip "https://github.com/mainsail-crew/mainsail/releases/download/v2.6.0/mainsail.zip" && unzip mainsail.zip && rm mainsail.zip && sudo wget -O /etc/nginx/sites-available/mainsail https://www.qidi-russia.ru/3series/upgrades/mainsail && sudo rm -f /etc/nginx/sites-enabled/fluidd && sudo rm -f /etc/nginx/sites-enabled/mainsail && sudo ln -s /etc/nginx/sites-available/mainsail /etc/nginx/sites-enabled/ && sudo service nginx reload
exit 0