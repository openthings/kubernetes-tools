echo "========================================"
echo ">>>EP:"
kubectl get ep/glusterfs-gvzr00 -n kubeflow

echo "========================================"
echo ">>>SVC:"
kubectl get svc/glusterfs-gvzr00 -n kubeflow

echo "========================================"
echo ">>>PV:"
kubectl get pv/kubeflow-supermap

echo "========================================"
echo ">>>PVC:"
kubectl get pvc/supermap-workspace -n kubeflow

echo "========================================"
echo ">>>POD:"
kubectl get pod -n kubeflow

