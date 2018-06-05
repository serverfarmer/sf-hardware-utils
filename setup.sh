#!/bin/sh


# transitional code: rename standby.exceptions to skip-smart.devices
if [ -f /etc/local/.config/standby.exceptions ] && [ ! -f /etc/local/.config/skip-smart.devices ]; then
	mv /etc/local/.config/standby.exceptions /etc/local/.config/skip-smart.devices
fi


if [ ! -f /etc/local/.config/skip-smart.devices ]; then
	echo "# devices to skip should be added in the below format:
# /dev/disk/by-id/ata-ST4000DM000-1F2168_W300XXXX
" >/etc/local/.config/skip-smart.devices
fi
