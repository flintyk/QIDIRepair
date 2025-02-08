#!/bin/bash
#name:v4.2.15
#dir:X-Plus 3/Flash display firmware
#description:Flash display v4.2.15
sudo sh -c 'wget "https://www.qidi-russia.ru/3series/firmwares/screen/plus/4.2.15/800_480.tft" -O /root/800_480.tft'
sudo sh -c "systemctl restart makerbase-client"
echo "Wait for the operation to complete. The progress is displayed on the printer screen."

exit 0
