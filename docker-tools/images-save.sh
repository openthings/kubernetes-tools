#!/bin/bash

bkpath="/home/supermap/openthings/docker-backup/images"
mkdir -p $bkpath
echo $bkpath

for image in $(docker images -q) ; do
  echo "Store: " $image
  docker save $image -o $bkpath/$image.tar
done
