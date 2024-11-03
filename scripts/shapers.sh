#!/bin/bash
#name:Make shapers graphs
#dir:General
#description:Make shapers graphs

if [[ ! -f /tmp/calibration_data_x*.csv ]] ; then
    echo 'File "/tmp/calibration_data_x*.csv" does not exist, aborting.'
    exit
fi

if [[ ! -f /tmp/calibration_data_y*.csv ]] ; then
    echo 'File "/tmp/calibration_data_y*.csv" does not exist, aborting.'
    exit
fi

/home/mks/klipper/scripts/calibrate_shaper.py /tmp/calibration_data_y*.csv -o /home/mks/fluidd/img/shaper_calibrate_y.png > /home/mks/fluidd/img/recomends_y.txt
/home/mks/klipper/scripts/calibrate_shaper.py /tmp/calibration_data_x*.csv -o /home/mks/fluidd/img/shaper_calibrate_x.png > /home/mks/fluidd/img/recomends_x.txt
rec1=$(cat /home/mks/fluidd/img/recomends_x.txt)
rec2=$(cat /home/mks/fluidd/img/recomends_y.txt)
recomendsx="${rec1//$'\n'/<br />}";
recomendsy="${rec2//$'\n'/<br />}";
html=$(echo '<html><head></head><body><div style="text-align: center;width: 820px;margin: auto;"><h1>Shapers x</h1><div style="text-align: justify;">'$recomendsx'</div><img src="/img/shaper_calibrate_x.png"><br><h1>Shapers Y</h1><div style="text-align: justify;">'$recomendsy'</div><img src="/img/shaper_calibrate_y.png"></div></body></html>');
echo $html > /home/mks/fluidd/shapers.html

h=$(hostname -I | awk '{print $1}');
echo "The formation of graphs is completed";
echo "Your charts are available at the following address http://"$h":10088/shapers.html or http://"$h"/shapers.html";

exit 0