echo ""
echo "=========================================================="
echo "Load istio for x64 v1.5.1 Images from zip ......"
echo "=========================================================="
echo ""

#MY_REGISTRY=mirrorgcrio
ISTIO_VERSION="1.5.1"
IMAGES_PATH=~/istio-images-$ISTIO_VERSION

#cd ~
#unzip istio-images-$ISTIO_VERSION.zip
#cd istio-images-$ISTIO_VERSION

## 拉取镜像
docker load -i $IMAGES_PATH/istio-pilot-$ISTIO_VERSION.tar
docker load -i $IMAGES_PATH/istio-proxyv2-$ISTIO_VERSION.tar
docker load -i $IMAGES_PATH/istio-jaeger-$ISTIO_VERSION.tar

docker load -i $IMAGES_PATH/istio-prometheus-2.15.1.tar
docker load -i $IMAGES_PATH/istio-grafana-6.5.2.tar

docker load -i $IMAGES_PATH/istio-kiali-1.15.tar

echo ""
echo "=========================================================="
echo "Save istio for x64 v1.5.1 Images FINISHED."
echo " by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""