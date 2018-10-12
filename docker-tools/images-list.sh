#!/bin/bash

bkpath="/home/supermap/openthings/docker-backup/images"
mkdir -p $bkpath

echo "Main path: "$bkpath
docker images >> $bkpath/images-list.txt  
echo "Images list: "$bkpath/images-list.txt
