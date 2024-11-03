#!/bin/bash
#name:Recovery printer.cfg
#dir:X-Smart 3
#description:Recovery printer.cfg
wget "https://www.qidi-russia.ru/3series/configs/smart/printer.cfg" -O /home/mks/klipper_config/printer.cfg
sudo systemctl restart klipper

exit 0
