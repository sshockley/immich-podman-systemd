#!/bin/sh

/usr/bin/systemctl --user -M immich@.host stop immich-pod.service
/usr/bin/loginctl disable-linger immich
/usr/bin/systemctl stop user@$(id -u immich)
/usr/bin/systemctl daemon-reload
