
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag metallb/controller:v0.7.1 ${MY_REGISTRY}/metallb-controller:v0.7.1
docker push ${MY_REGISTRY}/metallb-controller:v0.7.1