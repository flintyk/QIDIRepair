#!/bin/bash
#name:Show Qidi link URL
#dir:Q1 Pro
#description:Shows QIDI link URL
subdomain=$(sudo awk -F "=" '/subdomain/ {print $2}' /home/mks/klipper_config/config.mksini | sed 's/ //g' | sed 's/"//g')
server=aws.qidi3dprinter.com
echo "Your QIDI Link URL"
echo "http://"$subdomain.$server:7680
exit 0