
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag k8s.gcr.io/proxy-to-service:v2 ${MY_REGISTRY}/k8s-gcr-io-proxy-to-service:v2
docker push ${MY_REGISTRY}/k8s-gcr-io-proxy-to-service:v2
