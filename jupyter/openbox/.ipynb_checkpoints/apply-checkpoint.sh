
echo "Create endpoint and svc, glusterfs-gvzr0 ..."
kubectl apply -f glusterfs-gvr0-endpoint-jupyter.yaml
kubectl apply -f glusterfs-gvr0-service-jupyter.yaml

echo "Create pv and pvc, hub-db-dir ..."
kubectl apply -f glusterfs-gvr0-pv-jupyter-hub.yaml
kubectl apply -f glusterfs-gvr0-pvc-jupyter-hub.yaml

echo "Create pv and pvc, claim--supermap ..."
kubectl apply -f glusterfs-gvr0-pv-jupyter-supermap.yaml
kubectl apply -f glusterfs-gvr0-pvc-jupyter-supermap.yaml

echo "Finished."
echo ""
