#!/bin/bash

LIVY_BIN="apache-livy-${LIVY_VERSION}-incubating-bin"
LIVY_BIN_TAR="${LIVY_BIN}.zip"
LIVY_MIRROR="http://apache.mirror.cdnetworks.com/incubator/livy/${LIVY_VERSION}-incubating/${LIVY_BIN_TAR}"

wget -q ${LIVY_MIRROR}
unzip -q ${LIVY_BIN_TAR} -d /opt/app
ln -s /opt/app/${LIVY_BIN} /opt/app/livy
rm -rf ${LIVY_BIN_TAR}
