#!/bin/bash

docker run -it --rm \
 -v `pwd`/opt/conf:/opt/conf \
 -p "8000:8000" \
 -e LIVY_HOME=/opt/app/livy \
 -e LIVY_CONF_DIR=/opt/conf/livy \
 custom-livy:latest \
 /bin/bash
# /opt/app/livy/bin/livy-server
