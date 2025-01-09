#!/bin/bash
#name:v1.3.2
#dir:Plus 4/Flash display firmware
#description:Flash display v1.3.2
sudo sh -c 'wget "https://www.qidi-russia.ru/4series/firmwares/screen/plus/1.3.2/800_480.tft" -O /root/800_480.tft'
sudo sh -c "systemctl restart makerbase-client"
echo "Wait for the operation to complete. The progress is displayed on the printer screen."

exit 0
