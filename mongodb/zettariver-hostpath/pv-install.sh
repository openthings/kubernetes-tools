echo "Delete pvc..."
kubectl delete -n harbor pvc/mongodb
echo ""

echo "Delete pv..."
kubectl delete -n harbor pv/mongodb
echo ""

echo "Create pvc..."
kubectl apply -f 0a-glusterfs-gvzr00-endpoint.yaml
kubectl apply -f 0b-glusterfs-gvzr00-service.yaml

kubectl apply -f 1a-pv-mongodb
kubectl apply -f 1b-pvc-mongodb

echo "Finished."
