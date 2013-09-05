#!/bin/bash
#
# Copyright (c) 2013 Joyent Inc., All rights reserved.
#

export PS4='[\D{%FT%TZ}] ${BASH_SOURCE}:${LINENO}: ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'
set -o xtrace

INSTDIR=/opt/smartdc/fwapi
CONF=${INSTDIR}/config.json

echo "Importing fwapi SMF manifest"
/usr/sbin/svccfg import ${INSTDIR}/smf/manifests/fwapi.xml

# echo "Enabling fwapi service"
# /usr/sbin/svcadm enable smartdc/site/fwapi

exit 0