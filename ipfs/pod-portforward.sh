#export IPFS_POD=$(kubectl get --namespace ipfs -o jsonpath="{.spec.ports[0].nodePort}" services ipfs-ipfs)

kubectl port-forward ipfs-ipfs-0 8080:8080 5001:5001 --namespace=ipfs &
