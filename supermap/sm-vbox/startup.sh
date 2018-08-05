#bin/sh
Current_DIR=$(cd `dirname $0`; pwd)
volumePath=/tmp/nfsData
ns=supermap
while [ -n $1 ]
do
    case $1 in 
        --volumePath) volumePath=$2; shift 2;;
        --namespace) ns=$2; shift 2;;
        *) break ;;
    esac
done

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
sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base.yaml
sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base-volume-hostpath.yaml
sed -i 's|/tmp/nfsData|'"$volumePath"'|g' imanager-base-volume-nfs.yaml

sed -i 's|namespace: default|namespace: '"$ns"'|g' imanager-base.yaml
sed -i 's|namespace: default|namespace: '"$ns"'|g' imanager-logs.yaml
sed -i 's|namespace: default|namespace: '"$ns"'|g' imanager-monitoring.yaml
sed -i 's|namespace: default|namespace: '"$ns"'|g' imanager-appset-nfs-storageClass.yaml
sed -i 's|args: \["default"|args: \["'"$ns"'"|g' imanager-import-grafana-dashboards.yaml
sed -i 's|namespaces/default|namespaces/'"$ns"'|g' imanager-import-grafana-dashboards.yaml
sed -i 's|supermap|'"$ns"'|g' shutdown.sh
kubectl create ns $ns

kubectl apply -f imanager-config.yaml -n $ns
kubectl apply -f imanager-base-volume-hostpath.yaml -n $ns
#kubectl apply -f imanager-base-volume-nfs.yaml -n $ns
kubectl apply -f imanager-base.yaml -n $ns
kubectl apply -f imanager-monitoring.yaml -n $ns
#kubectl apply- f imanager-monitoring-heapster.yaml
kubectl apply -f imanager-logs.yaml -n $ns
kubectl apply -f imanager-metrics-server.yaml
kubectl apply -f imanager-appset-nfs-storageClass.yaml -n $ns
kubectl apply -f imanager-import-grafana-dashboards.yaml -n $ns
kubectl apply -f imanager-mysql.yaml -n $ns
kubectl apply -f imanager.yaml -n $ns
kubectl apply -f imanager-weixin-hook.yaml -n $ns
