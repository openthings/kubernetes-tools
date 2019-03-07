echo ""
echo "Create Endpoint and Service, Kubeflow......"
kubectl apply -f glusterfs-gvzr00-endpoint-kubeflow.yaml
kubectl apply -f glusterfs-gvzr00-service.yaml

echo "Create pv and pvc, Kubeflow......"
kubectl apply -f glusterfs-gvzr00-pv-kf-supermap.yaml
kubectl apply -f glusterfs-gvzr00-pvc-kf-supermap.yaml

echo "Finished."
echo ""
