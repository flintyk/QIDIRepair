#!/bin/bash
#name:Reinstall Klipper
#dir:Q1 Pro
#description:Reinstall Klipper from github
sudo sh -c "systemctl stop klipper"
cd /home/mks/&&sudo sh -c "rm -rf klipper"&&git clone https://github.com/flintyk/klipper.git
sudo sh -c "systemctl start klipper"

exit 0
