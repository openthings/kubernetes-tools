echo "Delete pvc..."
kubectl delete -n mongodb pvc/mongodb
echo ""

echo "Delete pv..."
kubectl delete -n mongodb pv/mongodb

echo "Finished."
