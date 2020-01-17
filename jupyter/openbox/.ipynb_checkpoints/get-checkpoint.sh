echo "========================================"
echo ">>>EP:"
kubectl get ep/glusterfs-gvzr00 -n jhub

echo "========================================"
echo ">>>SVC:"
kubectl get svc/glusterfs-gvzr00 -n jhub

echo "========================================"
echo ">>>PV:"
kubectl get pv/claim-supermap -n jhub
kubectl get pv/hub-db-dir -n jhub

echo "========================================"
echo ">>>PVC:"
kubectl get pvc/claim-supermap -n jhub
kubectl get pvc/hub-db-dir -n jhub

echo "========================================"
echo ">>>POD:"
kubectl get pod -n jhub

