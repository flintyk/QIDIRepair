#!/bin/bash
#name:Recovery printer.cfg
#dir:Q1 Pro
#description:Recovery printer.cfg
wget "https://www.qidi-russia.ru/3series/configs/q1pro/printer.cfg" -O /home/mks/klipper_config/printer.cfg
sudo sh -c "systemctl restart klipper"

exit 0
