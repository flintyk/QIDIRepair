#!/bin/bash
#name:Recovery printer.cfg
#dir:X-Plus 3
#description:Recovery printer.cfg
wget "https://www.qidi-russia.ru/3series/configs/plus/printer.cfg" -O /home/mks/klipper_config/printer.cfg
sudo systemctl restart klipper

exit 0
