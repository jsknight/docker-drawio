#!/bin/bash

set -e

cd "$(dirname "$0")"
cd ../drawio_sean/etc/build
rm -f ../../build/draw.war
ant -nice 1 war
cp ../../build/draw.war ../../../docker-drawio/dist/draw.war
cd ../../../docker-drawio/alpine
docker-compose build
