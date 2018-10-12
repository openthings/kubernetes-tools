#!/bin/bash

bkpath="/home/supermap/openthings/docker-backup/ps"
mkdir -p $bkpath

echo "Main path: "$bkpath
docker ps >> $bkpath/ps-list.txt  
echo "docker containers list: "$bkpath/ps-list.txt
