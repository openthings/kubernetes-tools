echo ""
echo "Create NFS data-storage backend."
echo ""

echo "Create nfs-data-pv..."
kubectl create -n nfs -f nfs-data-pv.yaml

echo "Create nfs-data-pvc..."
kubectl create -n nfs -f nfs-data-pvc.yaml

echo "Finished"
kubectl get pvc -n nfs
