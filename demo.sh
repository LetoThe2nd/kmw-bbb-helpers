#!/bin/sh

for i in `seq 1 7`; do
	echo $i > /sys/bus/platform/drivers/kmw/kmwattrs/kmw_attr
	sleep 2
done
