echo "Delete pvc..."
kubectl delete -n harbor pvc/data-harbor-harbor-redis-0
kubectl delete -n harbor pvc/database-data-harbor-harbor-database-0
kubectl delete -n harbor pvc/harbor-harbor-chartmuseum
kubectl delete -n harbor pvc/harbor-harbor-jobservice
kubectl delete -n harbor pvc/harbor-harbor-registry
echo ""

echo "Delete pv..."
kubectl delete -n harbor pv/data-harbor-harbor-redis-0
kubectl delete -n harbor pv/database-data-harbor-harbor-database-0
kubectl delete -n harbor pv/harbor-harbor-chartmuseum
kubectl delete -n harbor pv/harbor-harbor-jobservice
kubectl delete -n harbor pv/harbor-harbor-registry
echo ""

echo "Create pvc..."
kubectl apply -f 0a-glusterfs-gvzr00-endpoint.yaml
kubectl apply -f 0b-glusterfs-gvzr00-service.yaml

kubectl apply -f 1a-pv-data-harbor-harbor-redis-0.yaml
kubectl apply -f 1b-pvc-data-harbor-harbor-redis-0.yaml

kubectl apply -f 2a-pv-database-data-harbor-harbor-database-0.yaml
kubectl apply -f 2b-pvc-database-data-harbor-harbor-database-0.yaml

kubectl apply -f 3a-pv-harbor-harbor-chartmuseum.yaml
kubectl apply -f 3b-pvc-harbor-harbor-chartmuseum.yaml

kubectl apply -f 4a-pv-harbor-harbor-jobservice.yaml
kubectl apply -f 4b-pvc-harbor-harbor-jobservice.yaml

kubectl apply -f 5a-pv-harbor-harbor-registry.yaml
kubectl apply -f 5b-pvc-harbor-harbor-registry.yaml

echo "Finished."
