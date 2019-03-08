
echo "Create endpoint and svc, glusterfs-gvzr00 ..."
kubectl apply -f 0a-glusterfs-gvzr00-endpoint-jupyter.yaml
kubectl apply -f 0b-glusterfs-gvzr00-service-jupyter.yaml

echo "Create pv and pvc, hub-db-dir ..."
kubectl apply -f 1a-glusterfs-gvzr00-pv-jupyter-hub.yaml
kubectl apply -f 1b-glusterfs-gvzr00-pvc-jupyter-hub.yaml

echo "Create pv and pvc, claim--supermap ..."
kubectl apply -f 2a-glusterfs-gvzr00-pv-jupyter-supermap.yaml
kubectl apply -f 2b-glusterfs-gvzr00-pvc-jupyter-supermap.yaml

echo "Finished."
echo ""
