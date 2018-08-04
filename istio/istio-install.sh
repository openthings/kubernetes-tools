helm template install/kubernetes/helm/istio --name istio --namespace istio-system > ./istio.yaml

kubectl create namespace istio-system
kubectl create -f ./istio.yaml
