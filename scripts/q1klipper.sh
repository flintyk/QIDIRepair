#!/bin/bash
#name:Reinstall Klipper
#dir:Q1 Pro
#description:Reinstall Klipper from github
sudo systemctl stop klipper
cd /home/mks/&&sudo rm -rf klipper&&git clone https://github.com/QIDITECH/klipper.git
sudo systemctl start klipper

exit 0
