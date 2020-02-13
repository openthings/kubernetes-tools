
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker pull ${MY_REGISTRY}/jupyterhub-k8s-hub:36a8dcb
docker tag ${MY_REGISTRY}/jupyterhub-k8s-hub:36a8dcb jupyterhub/k8s-hub:36a8dcb 

docker pull ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:3.0.0
docker tag ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:3.0.0 jupyterhub/configurable-http-proxy:3.0.0 

docker pull  ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.15.0
docker tag ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.15.0 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.15.0

docker pull ${MY_REGISTRY}/jetstack-kube-lego:0.1.6
docker tag ${MY_REGISTRY}/jetstack-kube-lego:0.1.6 jetstack/kube-lego:0.1.6

docker pull ${MY_REGISTRY}/jupyterhub-k8s-network-tools:36a8dcb
docker tag ${MY_REGISTRY}/jupyterhub-k8s-network-tools:36a8dcb  jupyterhub/k8s-network-tools:36a8dcb

docker pull ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:36a8dcb
docker tag ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:36a8dcb jupyterhub/k8s-singleuser-sample:36a8dcb

docker pull ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:36a8dcb
docker tag ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:36a8dcb jupyterhub/k8s-image-awaiter:36a8dcb

docker pull ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0
docker tag ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0  gcr.io/google_containers/pause:3.0

docker pull ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:36a8dcb
docker tag ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:36a8dcb jupyterhub/k8s-pod-culler:36a8dcb
