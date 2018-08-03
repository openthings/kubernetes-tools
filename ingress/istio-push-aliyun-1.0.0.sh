
echo ""
echo "=========================================================="
echo "Push Istio 1.0.0 Images into aliyuncs.com ......"
echo "=========================================================="
echo ""

echo "docker tag to openthings ..."

## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

echo ""
echo "=========================================================="
echo ""

## Push镜像
echo ""
echo "1./istio-proxyv2:1.0.0"
docker tag docker.io/istio/proxyv2:1.0.0 ${MY_REGISTRY}/istio-proxyv2:1.0.0
docker push ${MY_REGISTRY}/istio-proxyv2:1.0.0

echo ""
echo "2.istio-proxy_init:1.0.0"
docker tag docker.io/istio/proxy_init:1.0.0 ${MY_REGISTRY}/istio-proxy_init:1.0.0
docker push ${MY_REGISTRY}/istio-proxy_init:1.0.0

echo ""
echo "3.istio-sidecar_injector:1.0.0"
docker tag docker.io/istio/sidecar_injector:1.0.0 ${MY_REGISTRY}/istio-sidecar_injector:1.0.0
docker push ${MY_REGISTRY}/istio-sidecar_injector:1.0.0

echo ""
echo "4.istio-galley:1.0.0"
docker tag docker.io/istio/galley:1.0.0 ${MY_REGISTRY}/istio-galley:1.0.0
docker push ${MY_REGISTRY}/istio-galley:1.0.0

echo ""
echo "5.istio-mixer:1.0.0"
docker tag docker.io/istio/mixer:1.0.0 ${MY_REGISTRY}/istio-mixer:1.0.0
docker push ${MY_REGISTRY}/istio-mixer:1.0.0

echo ""
echo "6.istio-pilot:1.0.0"
docker tag docker.io/istio/pilot:1.0.0 ${MY_REGISTRY}/istio-pilot:1.0.0
docker push ${MY_REGISTRY}/istio-pilot:1.0.0

echo ""
echo "7.istio/citadel:1.0.0"
docker tag docker.io/istio/citadel:1.0.0 ${MY_REGISTRY}/istio-citadel:1.0.0 
docker push ${MY_REGISTRY}/istio-citadel:1.0.0

echo ""
echo "Extra========================================="
echo "8.coreos-hyperkube:v1.7.6_coreos.0"
docker tag quay.io/coreos/hyperkube:v1.7.6_coreos.0 ${MY_REGISTRY}/coreos-hyperkube:v1.7.6_coreos.0
docker push ${MY_REGISTRY}/coreos-hyperkube:v1.7.6_coreos.0

echo ""
echo "9.prom-prometheus:latest"
docker tag docker.io/prom/prometheus:latest ${MY_REGISTRY}/prom-prometheus:latest
docker push ${MY_REGISTRY}/prom-prometheus:latest

echo ""
echo "10.statsd-exporter:latest"
docker tag prom/statsd-exporter:latest ${MY_REGISTRY}/statsd-exporter:latest
docker push ${MY_REGISTRY}/statsd-exporter:latest


echo ""
echo "=========================================================="
echo "Push Istio 1.0.0 Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""

