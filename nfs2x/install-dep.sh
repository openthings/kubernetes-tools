kubectl create ns nfs2x

kubectl apply -f deployment.yaml
kubectl apply -f class.yaml
kubectl apply -f rbac.yaml

