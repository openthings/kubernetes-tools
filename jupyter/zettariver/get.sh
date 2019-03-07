echo "========================================"
echo ">>>EP:"
kubectl get ep/glusterfs-gvzr00 -n jupyter

echo "========================================"
echo ">>>SVC:"
kubectl get svc/glusterfs-gvzr00 -n jupyter

echo "========================================"
echo ">>>PV:"
kubectl get pv/claim-supermap -n jupyter
kubectl get pv/hub-db-dir -n jupyter

echo "========================================"
echo ">>>PVC:"
kubectl get pvc/claim-supermap -n jupyter
kubectl get pvc/hub-db-dir -n jupyter

echo "========================================"
echo ">>>POD:"
kubectl get pod -n jupyter

