
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag k8s.gcr.io/defaultbackend:1.3 ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3
docker push ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3
