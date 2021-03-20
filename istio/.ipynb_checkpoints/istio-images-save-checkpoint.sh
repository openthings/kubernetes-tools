echo ""
echo "=========================================================="
echo "Save istio for x64 v1.5.1 Images from docker.io ......"
echo "=========================================================="
echo ""

#MY_REGISTRY=mirrorgcrio

ISTIO_VERSION="1.5.1"
IMAGES_PATH=~/istio-images-$ISTIO_VERSION
mkdir $IMAGES_PATH

## 拉取镜像
docker save docker.io/istio/pilot:1.5.1 -o $IMAGES_PATH/istio-pilot-$ISTIO_VERSION.tar
docker save docker.io/istio/proxyv2:1.5.1 -o $IMAGES_PATH/istio-proxyv2-$ISTIO_VERSION.tar
docker save docker.io/jaegertracing/all-in-one:1.16 -o $IMAGES_PATH/istio-jaeger-$ISTIO_VERSION.tar

docker save docker.io/prom/prometheus:v2.15.1 -o $IMAGES_PATH/istio-prometheus-2.15.1.tar
docker save grafana/grafana:6.5.2 -o $IMAGES_PATH/istio-grafana-6.5.2.tar

docker save quay.io/kiali/kiali:v1.15 -o $IMAGES_PATH/istio-kiali-1.15.tar

echo "Copy loader into $IMAGES_PATH"
cp istio-images-load.sh $IMAGES_PATH/

echo "Zip to $IMAGES_PATH.zip"
cd ~
zip -r istio-images-$ISTIO_VERSION.zip istio-images-$ISTIO_VERSION


echo ""
echo "=========================================================="
echo "Save istio for x64 v1.5.1 Images FINISHED."
echo " by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""