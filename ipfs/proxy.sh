export NODE_PORT=$(kubectl get --namespace ipfs -o jsonpath="{.spec.ports[0].nodePort}" services ipfs-ipfs)
  export NODE_IP=$(kubectl get nodes --namespace blockchain -o jsonpath="{.items[0].status.addresses[0].address}")
  echo http://$NODE_IP:$NODE_PORT
