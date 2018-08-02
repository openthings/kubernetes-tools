#bin/sh
Current_DIR=$(cd `dirname $0`; pwd)
volumePath=/tmp/nfsData
#while [ -n $1 ]
#do
#	case $1 in 
#		--volumePath) volumePath=$2; shift 2;;
#		*) break ;;
#	esac
#done

mkdir -p $volumePath
cd $volumePath
mkdir -p imanager/data
mkdir -p mysql/data
mkdir -p elasticsearch/data
mkdir -p kibana/data
mkdir -p prometheus/data
mkdir -p grafana/data
mkdir -p appset
chmod 777 -R $volumePath

cd $Current_DIR
#sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base.yaml
#sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base-volume-hostpath.yaml
#sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base-volume-nfs.yaml

kubectl apply -f imanager-config.yaml
kubectl apply -f imanager-base-volume-hostpath.yaml
#kubectl apply -f imanager-base-volume-nfs.yaml
kubectl apply -f imanager-base.yaml
kubectl apply -f imanager-monitoring.yaml
#kubectl apply- f imanager-monitoring-heapster.yaml
kubectl apply -f imanager-logs.yaml
kubectl apply -f imanager-metrics-server.yaml
kubectl apply -f imanager-appset-nfs-storageClass.yaml
kubectl apply -f imanager-import-grafana-dashboards.yaml
kubectl apply -f imanager-mysql.yaml
kubectl apply -f imanager.yaml
kubectl apply -f imanager-weixin-hook.yaml
