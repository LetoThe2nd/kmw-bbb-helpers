echo Setting up GPIO helper overlays...

dtc -O dtb -o gpio-P9.14-00A0.dtbo -b 0 -@ -I dts gpio-P9.14-00A0.dts
dtc -O dtb -o gpio-P9.15-00A0.dtbo -b 0 -@ -I dts gpio-P9.15-00A0.dts
dtc -O dtb -o gpio-P9.16-00A0.dtbo -b 0 -@ -I dts gpio-P9.16-00A0.dts
dtc -O dtb -o gpio-P9.17-00A0.dtbo -b 0 -@ -I dts gpio-P9.17-00A0.dts
dtc -O dtb -o gpio-P9.18-00A0.dtbo -b 0 -@ -I dts gpio-P9.18-00A0.dts
dtc -O dtb -o gpio-P9.22-00A0.dtbo -b 0 -@ -I dts gpio-P9.22-00A0.dts
dtc -O dtb -o gpio-P9.42-00A0.dtbo -b 0 -@ -I dts gpio-P9.42-00A0.dts

cp gpio-P9.14-00A0.dtbo /lib/firmware
cp gpio-P9.15-00A0.dtbo /lib/firmware
cp gpio-P9.16-00A0.dtbo /lib/firmware
cp gpio-P9.17-00A0.dtbo /lib/firmware
cp gpio-P9.18-00A0.dtbo /lib/firmware
cp gpio-P9.22-00A0.dtbo /lib/firmware
cp gpio-P9.42-00A0.dtbo /lib/firmware

echo Done.
