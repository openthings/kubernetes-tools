#This Docker Mirror Ubuntu Archive to a persistent volume of kubernetes.
#Created by openthings,2018-09-04. NO WARRANTS. 
#Please visit https://github.com/openthings/kubernetes-tools/mirror-ubuntu.
FROM ubuntu:16.04

RUN apt update && \
    apt upgrade -y
RUN apt install -y rsync 

COPY mirror-ubuntu.sh /home
 
