#!/bin/bash
#Apps that must be installed = bc


TIME=`date +"%d-%m-%Y"`
MIN=`date +"%M"`
TEMPRAW=`cat /sys/bus/w1/devices/28-00000408ada0/w1_slave | sed 's/.*t=//' | sed 's/.*YES//'`
CURTEMP=`bc -l <<< $TEMPRAW/1000`
REALTEMP=`echo ${CURTEMP:0:4}`

if [ $MIN -eq 15 ] || [ $MIN -eq 30 ] || [ $MIN = 45 ] || [ $MIN -eq 0 ];
    then
        echo "HELLO"
    else
        echo "GoodBye"
fi
