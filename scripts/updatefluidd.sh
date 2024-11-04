#!/bin/bash
#name:Update Fluidd
#dir:General/Fluidd
#description:Update Fluidd
cd ~ && rm -rf fluidd && mkdir ~/fluidd && cd ~/fluidd && wget -O fluidd.zip "https://github.com/fluidd-core/fluidd/releases/latest/download/fluidd.zip" && unzip fluidd.zip && rm fluidd.zip && sudo rm -f /etc/nginx/sites-enabled/mainsail && sudo rm -f /etc/nginx/sites-enabled/fluidd && sudo ln -s /etc/nginx/sites-available/fluidd /etc/nginx/sites-enabled/ && sudo service nginx reload
exit 0