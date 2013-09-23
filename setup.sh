#!/bin/sh

cd gpio
sh setup.sh
cd ..
cp clearbacon.service /lib/systemd/system
cp setrgbmux.service /lib/systemd/system
cp clearbacon.sh /usr/bin
cp setrgbmux.sh /usr/bin
chmod +x /usr/bin/clearbacon.sh
chmod +x /usr/bin/setrgbmux.sh

systemctl enable clearbacon.service
systemctl start clearbacon.service

systemctl enable setrgbmux.service
systemctl start setrgbmux.service
