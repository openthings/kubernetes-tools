
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag jupyterhub/k8s-hub:36a8dcb ${MY_REGISTRY}/jupyterhub-k8s-hub:36a8dcb
docker push ${MY_REGISTRY}/jupyterhub-k8s-hub:36a8dcb

docker tag jupyterhub/configurable-http-proxy:3.0.0 ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:3.0.0
docker push ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:3.0.0

docker tag quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.15.0 ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.15.0
docker push  ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.15.0

docker tag jetstack/kube-lego:0.1.6 ${MY_REGISTRY}/jetstack-kube-lego:0.1.6
docker push ${MY_REGISTRY}/jetstack-kube-lego:0.1.6

docker tag jupyterhub/k8s-network-tools:36a8dcb ${MY_REGISTRY}/jupyterhub-k8s-network-tools:36a8dcb
docker push ${MY_REGISTRY}/jupyterhub-k8s-network-tools:36a8dcb

docker tag jupyterhub/k8s-singleuser-sample:36a8dcb ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:36a8dcb
docker push ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:36a8dcb

docker tag jupyterhub/k8s-image-awaiter:36a8dcb ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:36a8dcb
docker push ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:36a8dcb

docker tag gcr.io/google_containers/pause:3.0 ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0
docker push ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0

docker tag jupyterhub/k8s-pod-culler:36a8dcb ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:36a8dcb
docker push ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:36a8dcb
