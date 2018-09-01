
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag quay.io/kubernetes_incubator/nfs-provisioner:v2.1.0-k8s1.11 ${MY_REGISTRY}/quay-io-nfs-provisioner:v2.1.0-k8s1.11
docker push ${MY_REGISTRY}/quay-io-nfs-provisioner:v2.1.0-k8s1.11
