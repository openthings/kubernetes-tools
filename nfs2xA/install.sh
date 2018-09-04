kubectl create ns nfs2x

kubectl apply -f statefulset.yaml -n nfs2x
kubectl apply -f class.yaml -n nfs2x
kubectl apply -f rbac.yaml -n nfs2x

