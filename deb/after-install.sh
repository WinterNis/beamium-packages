#!/bin/bash
INSTALLED=$([[ `systemctl` =~ -\.mount ]] && echo yes || echo no)
if [ "$INSTALLED" == "yes" ]
then
    systemctl daemon-reload
    systemctl start beamium
else
    update-rc.d beamium defaults
    /etc/init.d/beamium start
fi
