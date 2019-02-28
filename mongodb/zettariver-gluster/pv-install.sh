echo "Delete pvc..."
kubectl delete -n mongodb pvc/mongodb
echo ""

echo "Delete pv..."
kubectl delete -n mongodb pv/mongodb
echo ""

echo "Create pvc..."
kubectl apply -f 0a-glusterfs-gvzr00-endpoint.yaml
kubectl apply -f 0b-glusterfs-gvzr00-service.yaml

kubectl apply -f 1a-pv-mongodb.yaml
kubectl apply -f 1b-pvc-mongodb.yaml

echo "Finished."
