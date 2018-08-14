kubectl create ns znet
kubectl -n znet apply -f zrear-deploy.yaml
kubectl -n znet apply -f zrear-service.yaml
