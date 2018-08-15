
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker pull ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3

docker tag ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3 k8s.gcr.io/defaultbackend:1.3
