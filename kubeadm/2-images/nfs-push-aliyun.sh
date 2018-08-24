
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag quay.io/kubernetes_incubator/nfs-provisioner:v1.0.9 ${MY_REGISTRY}/quay-io-nfs-provisioner:v1.0.9
docker push ${MY_REGISTRY}/quay-io-nfs-provisioner:v1.0.9
