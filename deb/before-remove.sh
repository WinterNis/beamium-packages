#!/bin/bash
INSTALLED=$(pidof systemd && echo "systemd" || echo "other")
if [ "$INSTALLED" != "other" ]
then
    systemctl stop beamium
    systemctl daemon-reload
else
    /etc/init.d/beamium stop
    update-rc.d -f beamium remove
fi
