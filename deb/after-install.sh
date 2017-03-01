#!/bin/bash
INSTALLED=$(pidof systemd && echo "systemd" || echo "other")
if [ "$INSTALLED" != "other" ]
then
    systemctl daemon-reload
    systemctl start beamium
else
    update-rc.d beamium defaults
    /etc/init.d/beamium start
fi
