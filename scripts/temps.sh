#!/bin/bash
#name:Turn on temperatures
#dir:General
#description:Turn on temperatures
printer=`(grep -qxF '[mcu U_1]' /home/mks/klipper_config/printer.cfg&&echo "q1") || echo "x3"`
case "q1" in

  "$printer"*)
    grep -qxF '[temperature_sensor Host]' /home/mks/klipper_config/printer.cfg || sed -i '/^\[extruder\]/i [temperature_sensor Host]\nsensor_type: temperature_host\nmin_temp: 10\nmax_temp: 100\n\n[temperature_sensor Toolhead]\nsensor_type: temperature_mcu\nmin_temp: 0\nmax_temp: 100\n\n[temperature_sensor Mcu_temp]\nsensor_type: temperature_mcu\nsensor_mcu: U_1\nmin_temp: 0\nmax_temp: 100\n' /home/mks/klipper_config/printer.cfg
    ;;

    *)
    grep -qxF '[temperature_sensor Host]' /home/mks/klipper_config/printer.cfg || sed -i '/^\[extruder\]/i [temperature_sensor Host]\nsensor_type: temperature_host\nmin_temp: 10\nmax_temp: 100\n\n[temperature_sensor Mcu_temp]\nsensor_type: temperature_mcu\nmin_temp: 0\nmax_temp: 100\n\n[temperature_sensor Toolhead]\nsensor_type: temperature_mcu\nsensor_mcu: MKS_THR\nmin_temp: 0\nmax_temp: 100\n' /home/mks/klipper_config/printer.cfg
    ;;
esac

sudo sh -c 'systemctl restart klipper'
exit 0