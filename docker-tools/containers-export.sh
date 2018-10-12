#!/bin/bash

bkpath="/home/supermap/openthings/docker-backup/ps"
mkdir -p $bkpath
echo $bkpath

for container in $(docker ps -q) ; do
  echo "Export: " $container
  docker export $container -o $bkpath/$container.tar
done
