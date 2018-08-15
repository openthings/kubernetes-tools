#bin/sh
volumePath=/var/lib/docker/nfsData
ns=supermap
sed -i 's|/var/lib/docker/nfsData|'"$volumePath"'|g' imanager-base.yaml
sed -i 's|namespace: default|namespace: '"$ns"'|g' imanager.yaml
sed -i 's|namespace: default|namespace: '"$ns"'|g' imanager-base.yaml

kubectl apply -f imanager-config.yaml -n $ns
kubectl apply -f imanager-base.yaml -n $ns
kubectl apply -f imanager-mysql.yaml -n $ns
kubectl apply -f imanager.yaml -n $ns
kubectl apply -f imanager-weixin-hook.yaml -n $ns
