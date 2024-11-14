#!/bin/bash
#name:v4.1.12
#dir:X-Max 3/Update
#description:Update v4.3.12
sudo sh -c 'wget "https://www.qidi-russia.ru/3series/updates/max/4.3.12/mks.deb" -O /tmp/mks.deb'
sudo sh -c "systemctl stop makerbase-client && systemctl stop klipper && systemctl stop moonraker"
sudo sh -c "dpkg -i /tmp/mks.deb"
sudo sh -c "systemctl start klipper && systemctl start moonraker && systemctl start makerbase-client"

exit 0
