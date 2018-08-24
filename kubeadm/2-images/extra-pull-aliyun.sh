echo ""
echo "=========================================================="
echo "Pull Extra Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

## 拉取镜像

echo ""
echo "1.k8s-gcr-io-dashboard"
#docker pull ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3
#docker tag ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3 k8s.gcr.io/kubernetes-dashboard-amd64:v1.8.3

docker pull ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.10.0
docker tag ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.10.0 k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0

echo ""
echo "2.kubernetes-helm"
docker pull ${MY_REGISTRY}/k8s-gcr-io-helm:v2.9.1 
docker tag ${MY_REGISTRY}/k8s-gcr-io-helm:v2.9.1 gcr.io/kubernetes-helm/tiller:v2.9.1

echo ""
echo "=========================================================="
echo "Pull Extra Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""
