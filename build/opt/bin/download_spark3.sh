#!/bin/bash

SPARK_BIN="spark-${SPARK_VERSION}-preview2-bin-hadoop3.2"
SPARK_BIN_TAR="${SPARK_BIN}.tgz"
SPARK_MIRROR="http://apache.tt.co.kr/spark/spark-${SPARK_VERSION}-preview2/${SPARK_BIN_TAR}"

wget -q ${SPARK_MIRROR}
tar xf ${SPARK_BIN_TAR} --directory /opt/app
ln -s /opt/app/${SPARK_BIN} /opt/app/spark
rm -rf ${SPARK_BIN_TAR}
