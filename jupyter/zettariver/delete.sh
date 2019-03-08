# 
echo "Delete pv and pvc, hub-db-dir ..."
kubectl delete pvc/hub-db-dir -n jupyter
kubectl delete pv/hub-db-dir -n jupyter

echo "Delete pv and pvc, claim--supermap ..."
kubectl delete pvc/claim-supermap -n jupyter
kubectl delete pv/claim--supermap -n jupyter

echo "Delete endpoint and svc, glusterfs-gvzr00 ..."
kubectl delete svc/glusterfs-gvzr00 -n jupyter
kubectl delete ep/glusterfs-gvzr00 -n jupyter

echo "Finished."
echo ""

