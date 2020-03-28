#!/bin/bash

HADOOP_BIN="hadoop-${HADOOP_VERSION}"
HADOOP_BIN_TAR="${HADOOP_BIN}.tar.gz"
HADOOP_MIRROR="http://mirror.apache-kr.org/hadoop/common/hadoop-${HADOOP_VERSION}/${HADOOP_BIN_TAR}"

wget -q ${HADOOP_MIRROR}
tar xf ${HADOOP_BIN_TAR} --directory /opt/app
ln -s /opt/app/${HADOOP_BIN} /opt/app/hadoop
rm -rf ${HADOOP_BIN_TAR} /opt/app/${HADOOP_BIN}/share/doc
