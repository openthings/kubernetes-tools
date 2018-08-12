
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker pull ${MY_REGISTRY}/quay-io-nfs-provisioner:v1.0.9

docker tag ${MY_REGISTRY}/quay-io-nfs-provisioner:v1.0.9 quay.io/kubernetes_incubator/nfs-provisioner:v1.0.9 
