#!/bin/sh

CLEAR="/sys/class/gpio/gpio48/value"
LATCH="/sys/class/gpio/gpio5/value"
DATA="/sys/class/gpio/gpio4/value"
CLOCK="/sys/class/gpio/gpio2/value"

for i in 15 17 18 22; do echo gpio-P9.$i > /sys/devices/bone_capemgr.8/slots; done

echo rxEnable_pullNone > `ls /sys/devices/ocp.2/gpio-P9.15_gpio48.*/state`
echo rxEnable_pullNone > `ls /sys/devices/ocp.2/gpio-P9.17_gpio4.*/state`
echo rxEnable_pullNone > `ls /sys/devices/ocp.2/gpio-P9.18_gpio5.*/state`
echo rxEnable_pullNone > `ls /sys/devices/ocp.2/gpio-P9.22_gpio2.*/state`

for i in 2 4 5 48; do echo $i > /sys/class/gpio/export; echo out > /sys/class/gpio/gpio$i/direction; done

echo 0 > $LATCH
echo 1 > $CLEAR
echo 1 > $DATA
for i in `seq 0 7`; do echo 0 > $CLOCK; echo 1 > $CLOCK; done
echo 1 > $LATCH
echo 0 > $CLOCK
