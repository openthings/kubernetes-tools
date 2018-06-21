helm install --namespace monitor --name prometheus stable/prometheus \
  --set alertmanager.persistentVolume.storageClass="nfs" \
  --set server.persistentVolume.storageClass="nfs"


