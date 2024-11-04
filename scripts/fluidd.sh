#!/bin/bash
#name:Install Fluidd
#dir:General/Fluidd
#description:Install Fluidd
cd ~ && rm -rf fluidd && mkdir ~/fluidd && cd ~/fluidd && wget -O fluidd.zip "https://github.com/fluidd-core/fluidd/releases/download/v1.28.1/fluidd.zip" && unzip fluidd.zip && rm fluidd.zip && sudo rm -f /etc/nginx/sites-enabled/mainsail && sudo rm -f /etc/nginx/sites-enabled/fluidd && sudo ln -s /etc/nginx/sites-available/fluidd /etc/nginx/sites-enabled/ && sudo service nginx reload
exit 0