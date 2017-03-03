#!/bin/bash
INSTALLED=$([[ `systemctl` =~ -\.mount ]] && echo yes || echo no)
if [ "$INSTALLED" == "no" ]
then
    update-rc.d beamium defaults
    /etc/init.d/beamium start
fi
