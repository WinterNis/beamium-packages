#!/bin/bash
if ! systemctl | grep "\-.mount"
then
    /etc/init.d/beamium stop
    update-rc.d -f beamium remove
fi
