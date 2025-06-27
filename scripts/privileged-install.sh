#!/bin/sh

SRCDIR="/app/immich/immich-podman-systemd"

for svc in pod database machine-learning nginx redis server-image server
do
	/usr/bin/systemctl stop immich-${svc}
	/usr/bin/systemctl reset-failed
done

/usr/bin/rm -rf /etc/containers/systemd/immich/*

/usr/bin/cp -r \
	${SRCDIR}/*.image \
	${SRCDIR}/*.network \
	${SRCDIR}/*.container \
	${SRCDIR}/*.pod \
	${SRCDIR}/immich.env \
	${SRCDIR}/*healthcheck \
	${SRCDIR}/volumes-dropins/* \
	/etc/containers/systemd/immich/
/usr/bin/systemctl daemon-reload
