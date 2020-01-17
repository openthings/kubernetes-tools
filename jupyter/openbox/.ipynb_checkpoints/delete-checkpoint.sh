# 
echo "Delete pv and pvc, hub-db-dir ..."
kubectl delete pvc/hub-db-dir -n jhub
kubectl delete pv/hub-db-dir -n jhub

echo "Delete pv and pvc, claim--supermap ..."
kubectl delete pvc/claim-supermap -n jhub
kubectl delete pv/claim-supermap -n jhub

echo "Delete endpoint and svc, glusterfs-gvzr00 ..."
kubectl delete svc/glusterfs-gvzr00 -n jhub
kubectl delete ep/glusterfs-gvzr00 -n jhub

echo "Finished."
echo ""

