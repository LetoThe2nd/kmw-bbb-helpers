#!/bin/sh

cd gpio
sh setup.sh
cd ..
cp clearbacon.service /lib/systemd/system
cp setrgbmux.service /lib/systemd/system
cp clearbacon.sh /usr/bin
cp setrgbmux.sh /usr/bin
cp load.sh /usr/bin
cp unload.sh /usr/bin
cp preparestep.sh /usr/bin
cp demo.sh /usr/bin
cp setup.sh /usr/bin
chmod +x /usr/bin/clearbacon.sh
chmod +x /usr/bin/setrgbmux.sh
chmod +x /usr/bin/load.sh
chmod +x /usr/bin/unload.sh
chmod +x /usr/bin/preparestep.sh
chmod +x /usr/bin/demo.sh
chmod +x /usr/bin/setup.sh

systemctl enable clearbacon.service
systemctl start clearbacon.service

systemctl enable setrgbmux.service
systemctl start setrgbmux.service
