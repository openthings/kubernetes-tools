# 
echo "Delete pv and pvc..."
kubectl delete pvc/supermap-workspace -n kubeflow
kubectl delete pv/kubeflow-supermap -n kubeflow

echo "Delete Endpoint and Service, Kubeflow......"
kubectl delete svc/glusterfs-gvzr00 -n kubeflow
kubectl delete ep/glusterfs-gvzr00 -n kubeflow
echo "Finished."
echo ""

