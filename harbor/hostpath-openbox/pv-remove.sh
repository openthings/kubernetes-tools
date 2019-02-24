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

echo "Finished."
