
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker pull ${MY_REGISTRY}/metallb-controller:v0.7.1

docker tag ${MY_REGISTRY}/metallb-controller:v0.7.1 metallb/controller:v0.7.1