#!/bin/bash
#name:Disable material warning
#dir:General
#description:Disables the XINDI warning about PLA/PETG/TPU 

sudo sh -c "systemctl stop makerbase-client&&cp -n /root/xindi/build/xindi /root/xindi/build/xindibackup&&perl -pne 's/\x70\x6C\x61\x00\x00\x00\x00\x00\x70\x65\x74\x67\x00\x00\x00\x00\x61\x62\x73\x00/\x77\x6C\x61\x00\x00\x00\x00\x00\x77\x65\x74\x67\x00\x00\x00\x00\x77\x62\x73\x00/g' < /root/xindi/build/xindi > /root/xindi/build/xindi2&&rm /root/xindi/build/xindi&&cp -f /root/xindi/build/xindi2 /root/xindi/build/xindi&&rm /root/xindi/build/xindi2&&chmod 755 /root/xindi/build/xindi&&systemctl start makerbase-client"
exit 0