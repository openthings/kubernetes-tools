
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker pull ${MY_REGISTRY}/quay-io-nfs-provisioner:v2.1.0-k8s1.11

docker tag ${MY_REGISTRY}/quay-io-nfs-provisioner:v2.1.0-k8s1.11 quay.io/kubernetes_incubator/nfs-provisioner:v2.1.0-k8s1.11
