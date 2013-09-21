#!/bin/sh

cd gpio
sh setup.sh
cd ..
cp clearbacon.service /lib/systemd/system
cp clearbacon.sh /usr/bin
chmod +x /usr/bin/clearbacon.sh

systemctl enable clearbacon.service
systemctl start clearbacon.service
