helm install --name=ipfs --namespace=blockchain  stable/ipfs \
--set storage.size="20Gi" \
      service.type=NodePort \
      persistence.storageClass="nfs" \
      persistence.accessModes=["ReadWriteOnce"]

