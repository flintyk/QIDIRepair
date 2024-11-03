#!/bin/bash
#name:Check EMMC
#dir:General
#description:Checking the status of the emmc 

goodstate='0x01';
warningstate='0x02'
criticalstate='0x03'
state=`sudo mmc extcsd read /dev/mmcblk1 | grep EXT_CSD_PRE_EOL_INFO | perl -lne 'print $& if /0x\d+/'`
case $state in

  0x01)
    echo "Good condition of EMMC"
    ;;

  0x02)
    echo "Satisfactory condition of the EMMC"
    ;;

  0x03)
    echo "The poor condition of the EMMC! A replacement is needed"
    ;;
esac

exit 0