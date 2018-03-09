# Run Spark on Kubernetes.

This tools maked by https://github.com/openthings, no warrants.

- Please visit: https://my.oschina.net/u/2306127/blog/1631978

### Download Spark 2.3, run: 

- getsparkbin.sh
- tar -vxf spark-2.3.0-bin-hadoop2.7.tgz
- cd spark-2.3.0-bin-hadoop2.7
- cp sparksubmit.sh .

### Modify sparksubmit.sh

- Run getkub.sh, get URL of Kubernetes cluster master.
- gedit sparksubmit.sh, change the https://192.168.199.249:6443 with your URL.

### Create RBAC Role

- run sparkauth.sh

### run SparkPi to test

- run ./sparksubmit.sh

### Get Information

- getsparkpod, get pods info.
- getservice.sh, get service info.
- getlogs.sh, get logs info.

