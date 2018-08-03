#bin/sh

echo "Install SuperMap iManager to Kubernetes."

namespace="supermap"
Current_DIR=$(cd `dirname $0`; pwd)
volumePath=/tmp/nfsData

echo "Current_DIR: "$Current_DIR
echo "volumePath: "${volumePath}
echo "namespace:"$namespace

kubectl create ns $namespace

#while [ -n $1 ]
#do
#  case $1 in
#    --volumePath) volumePath=$2; shift 2;;
#    *) break ;;
#  esac
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
#chmod 777 -R $volumePath
chmod 777 $volumePath

cd $Current_DIR
#sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base.yaml
#sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base-volume-hostpath.yaml
#sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base-volume-nfs.yaml

kubectl apply -f ./imanager-config.yaml -n $namespace
kubectl apply -f ./imanager-base-volume-hostpath.yaml -n $namespace
#kubectl apply -f ./imanager-base-volume-nfs.yaml -n $namespace
kubectl apply -f ./imanager-base.yaml -n $namespace
kubectl apply -f ./imanager-monitoring.yaml -n $namespace
#kubectl apply -f ./imanager-monitoring-heapster.yaml -n $namespace
kubectl apply -f ./imanager-logs.yaml -n $namespace
kubectl apply -f ./imanager-metrics-server.yaml -n kube-system
kubectl apply -f ./imanager-appset-nfs-storageClass.yaml -n $namespace
kubectl apply -f ./imanager-import-grafana-dashboards.yaml -n $namespace
kubectl apply -f ./imanager-mysql.yaml -n $namespace
kubectl apply -f ./imanager.yaml -n $namespace
kubectl apply -f ./imanager-weixin-hook.yaml -n $namespace
