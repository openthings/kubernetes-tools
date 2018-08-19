
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

###1
docker tag jupyterhub/k8s-hub:adb1cee ${MY_REGISTRY}/jupyterhub-k8s-hub:adb1cee
docker push ${MY_REGISTRY}/jupyterhub-k8s-hub:adb1cee

docker tag jupyterhub/configurable-http-proxy:latest ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:latest
docker push ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:latest

docker tag jupyterhub/k8s-network-tools:c7f70f9 ${MY_REGISTRY}/jupyterhub-k8s-network-tools:c7f70f9
docker push ${MY_REGISTRY}/jupyterhub-k8s-network-tools:c7f70f9

###2
docker tag jupyterhub/k8s-pod-culler:c7f70f9 ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:c7f70f9
docker push ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:c7f70f9

docker tag jupyterhub/k8s-image-awaiter:c7f70f9 ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:c7f70f9
docker push ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:c7f70f9

docker tag jupyterhub/k8s-singleuser-sample:c7f70f9 ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:c7f70f9
docker push ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:c7f70f9

###3
docker tag quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.18.0 ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.18.0
docker push  ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.18.0

docker tag jetstack/kube-lego:latest ${MY_REGISTRY}/jetstack-kube-lego:latest
docker push ${MY_REGISTRY}/jetstack-kube-lego:latest

docker tag gcr.io/google_containers/pause:3.0 ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0
docker push ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0

###4
docker tag berkeleydsep/datahub-user:2a70006 ${MY_REGISTRY}/berkeleydsep-datahub-user:2a70006
docker push ${MY_REGISTRY}/berkeleydsep-datahub-user:2a70006


