echo "========================================"
echo ">>>EP:"
kubectl get ep/glusterfs-gvz00 -n kubeflow

echo "========================================"
echo ">>>SVC:"
kubectl get svc/glusterfs-gvz00 -n kubeflow

echo "========================================"
echo ">>>PV:"
kubectl get pv/kubeflow-supermap

echo "========================================"
echo ">>>PVC:"
kubectl get pvc/claim-supermap -n kubeflow

echo "========================================"
echo ">>>POD:"
kubectl get pod/jupyter-supermap -n kubeflow

