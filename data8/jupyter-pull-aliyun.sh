
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

###1
docker pull ${MY_REGISTRY}/jupyterhub-k8s-hub:adb1cee
docker tag ${MY_REGISTRY}/jupyterhub-k8s-hub:adb1cee jupyterhub/k8s-hub:adb1cee 

docker pull ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:latest
docker tag ${MY_REGISTRY}/jupyterhub-configurable-http-proxy:latest jupyterhub/configurable-http-proxy:latest 

docker pull ${MY_REGISTRY}/jupyterhub-k8s-network-tools:c7f70f9
docker tag ${MY_REGISTRY}/jupyterhub-k8s-network-tools:c7f70f9  jupyterhub/k8s-network-tools:c7f70f9

###2
docker pull ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:c7f70f9
docker tag ${MY_REGISTRY}/jupyterhub-k8s-pod-culler:c7f70f9 jupyterhub/k8s-pod-culler:c7f70f9

docker pull ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:c7f70f9
docker tag ${MY_REGISTRY}/jupyterhub-k8s-image-awaiter:c7f70f9 jupyterhub/k8s-image-awaiter:c7f70f9

docker pull ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:c7f70f9
docker tag ${MY_REGISTRY}/jupyterhub-k8s-singleuser-sample:c7f70f9 jupyterhub/k8s-singleuser-sample:c7f70f9

###2
docker pull  ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.18.0
docker tag ${MY_REGISTRY}/quay-io-kubernetes-ingress-controller-nginx-ingress-controller:0.18.0 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.18.0

docker pull ${MY_REGISTRY}/jetstack-kube-lego:latest
docker tag ${MY_REGISTRY}/jetstack-kube-lego:latest jetstack/kube-lego:latest

docker pull ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0
docker tag ${MY_REGISTRY}/gcr-io-google_containers-pause:3.0  gcr.io/google_containers/pause:3.0

###4
docker pull ${MY_REGISTRY}/berkeleydsep-datahub-user:2a70006
docker tag ${MY_REGISTRY}/berkeleydsep-datahub-user:2a70006  berkeleydsep/datahub-user:2a70006


