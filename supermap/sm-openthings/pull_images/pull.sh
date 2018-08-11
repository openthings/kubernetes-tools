#!/bin/bash
#set -e

REGISTRY="registry.cn-beijing.aliyuncs.com/"
function pullImages(){
   for p in $@;
   do
        imagename=$p;
        docker pull $REGISTRY$imagename;
   done;
}

pullImages $(cat ./icloud_native_image_list.txt)
pullImages $(cat ./third_party_image_list.txt)
