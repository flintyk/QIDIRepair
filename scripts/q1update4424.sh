#!/bin/bash
#name:v4.4.24
#dir:Q1 Pro/Update
#description:Update v4.4.24
sudo sh -c 'wget "https://www.qidi-russia.ru/3series/updates/q1/4.4.24/mks.deb" -O /tmp/mks.deb'
sudo sh -c "systemctl stop makerbase-client && systemctl stop klipper && systemctl stop moonraker"
sudo sh -c "dpkg -i --force-overwrite /tmp/mks.deb"
sudo sh -c "systemctl start klipper && systemctl start moonraker && systemctl start makerbase-client"

exit 0
