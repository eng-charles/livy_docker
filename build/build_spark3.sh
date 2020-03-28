#!/bin/bash

NAME=custom-livy
VERSION=0.7.0_spark-3.0.0_hadoop-3.2.1_scala-2.12

docker build \
 -f Dockerfile.spark3 \
 -t ${NAME}:${VERSION} \
 .

docker image prune -f
