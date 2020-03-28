#!/usr/bin/env bash

JAVA_HOME=/usr/local/openjdk-8

## hadoop env
HADOOP_HOME=/opt/app/hadoop
HADOOP_CONF_DIR=/opt/conf/hadoop
YARN_CONF_DIR=/opt/conf/hadoop

## spark env
SPARK_HOME=/opt/app/spark
SPARK_CONF_DIR=/opt/conf/spark
LD_LIBRARY_PATH=${HADOOP_HOME}/lib/native

SPARK_LOCAL_DIRS=/opt/data/spark
SPARK_LOG_DIR=/opt/log/spark

SPARK_EXECUTOR_CORES=1
SPARK_EXECUTOR_MEMORY=1g
SPARK_DRIVER_MEMORY=1g

SPARK_IDENT_STRING=livy
