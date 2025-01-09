#!/bin/bash
#name:v1.6.0
#dir:Plus 4/Update
#description:Update v1.6.0
sudo sh -c 'wget "https://www.qidi-russia.ru/4series/updates/plus/1.6.0/mks.deb" -O /tmp/mks.deb'
sudo sh -c "systemctl stop makerbase-client && systemctl stop klipper && systemctl stop moonraker"
sudo sh -c "dpkg -i --force-overwrite /tmp/mks.deb"
sudo sh -c "systemctl start klipper && systemctl start moonraker && systemctl start makerbase-client"

exit 0
