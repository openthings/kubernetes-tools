
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker pull ${MY_REGISTRY}/k8s-gcr-io-proxy-to-service:v2

docker tag ${MY_REGISTRY}/k8s-gcr-io-proxy-to-service:v2 k8s.gcr.io/proxy-to-service:v2 
