#!/bin/sh

for i in 14 16 42; do echo gpio-P9.$i > /sys/devices/bone_capemgr.8/slots; done

echo rxEnable_pullNone > /sys/devices/ocp.2/gpio-P9.14_gpio50.18/state
echo rxEnable_pullNone > /sys/devices/ocp.2/gpio-P9.16_gpio51.20/state
echo rxEnable_pullNone > /sys/devices/ocp.2/gpio-P9.42_gpio7.19/state

