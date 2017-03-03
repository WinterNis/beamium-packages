#!/bin/bash
INSTALLED=$([[ `systemctl` =~ -\.mount ]] && echo yes || echo no)
if [ "$INSTALLED" == "no" ]
then
    /etc/init.d/beamium stop
    update-rc.d -f beamium remove
fi
