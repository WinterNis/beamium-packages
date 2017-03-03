#!/bin/bash
INSTALLED=$([[ `systemctl` =~ -\.mount ]] && echo yes || echo no)
if [ "$INSTALLED" == "yes" ]
then
    systemctl stop beamium
    systemctl daemon-reload
else
    /etc/init.d/beamium stop
    update-rc.d -f beamium remove
fi
