#!/bin/bash
#name:Reinstall Moonraker
#dir:Q1 Pro
#description:Reinstall Moonraker from github
sudo sh -c "systemctl stop moonraker"
cd /home/mks/&&sudo sh -c "rm -rf moonraker"&&git clone https://github.com/QIDITECH/moonraker.git
ln -s /home/mks/moonraker-timelapse/component/timelapse.py /home/mks/moonraker/moonraker/components/
sudo sh -c "systemctl start moonraker"

exit 0