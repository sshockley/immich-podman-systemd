#!/bin/sh

/usr/bin/systemctl daemon-reload
/usr/bin/systemctl start user@$(id -u immich)
/usr/bin/loginctl enable-linger immich
/usr/bin/systemctl --user -M immich@.host start immich-pod.service
