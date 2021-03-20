echo ""
echo "=========================================================="
echo "Pull istio for x64 v1.5.1 Images from docker.io ......"
echo "=========================================================="
echo ""

#MY_REGISTRY=mirrorgcrio

## 拉取镜像
docker pull docker.io/istio/pilot:1.5.1
docker pull docker.io/istio/proxyv2:1.5.1
docker pull docker.io/jaegertracing/all-in-one:1.16

docker pull docker.io/prom/prometheus:v2.15.1
docker pull grafana/grafana:6.5.2

docker pull quay.io/kiali/kiali:v1.15

echo ""
echo "=========================================================="
echo "Pull istio for x64 v1.5.1 Images FINISHED."
echo " by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""