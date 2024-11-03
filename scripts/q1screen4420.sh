#!/bin/bash
#name:v4.4.20
#dir:Q1 Pro/Flash display firmware
#description:Flash display v4.4.20
sudo sh -c 'wget "https://www.qidi-russia.ru/3series/firmwares/screen/q1pro/4.4.20/800_480.tft" -O /root/800_480.tft'
sudo sh -c "systemctl restart makerbase-client"
echo "Wait for the operation to complete. The progress is displayed on the printer screen."

exit 0
