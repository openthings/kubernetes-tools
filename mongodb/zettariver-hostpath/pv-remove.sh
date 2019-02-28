echo "Delete pvc..."
kubectl delete -n harbor pvc/mongodb
echo ""

echo "Delete pv..."
kubectl delete -n harbor pv/mongodb

echo "Finished."
