#!/bin/bash
if ! systemctl | grep "\-.mount" 
then
    update-rc.d beamium defaults
    /etc/init.d/beamium start
fi
