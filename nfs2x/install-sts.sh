kubectl create ns nfs2x

kubectl apply -f statefulset.yaml
kubectl apply -f class.yaml
kubectl apply -f rbac.yaml

