#!/bin/bash

NAME=custom-livy
VERSION=0.7.0_spark-2.4.5_hadoop-2.7-scala-2.11

docker build \
 -f Dockerfile.spark2 \
 -t ${NAME}:${VERSION} \
 .

docker image prune -f

docker tag ${NAME}:${VERSION} ${NAME}:latest
