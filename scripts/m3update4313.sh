#!/bin/bash
#name:v4.3.13
#dir:X-Max 3/Update
#description:Update v4.3.13
sudo sh -c 'wget "https://www.qidi-russia.ru/3series/updates/max/4.3.13/mks.deb" -O /tmp/mks.deb'
sudo sh -c "systemctl stop makerbase-client && systemctl stop klipper && systemctl stop moonraker"
sudo sh -c "dpkg -i --force-overwrite /tmp/mks.deb"
sudo sh -c "systemctl start klipper && systemctl start moonraker && systemctl start makerbase-client"

exit 0
