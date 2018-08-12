
echo ""
echo "=========================================================="
echo "Push Extra Images into aliyuncs.com ......"
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
echo "1.k8s-gcr-io-dashboard"
docker tag k8s.gcr.io/kubernetes-dashboard-amd64:v1.8.3 ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3 
docker push ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3

echo ""
echo "2.kubernetes-helm"
docker tag gcr.io/kubernetes-helm/tiller:v2.9.1 ${MY_REGISTRY}/k8s-gcr-io-helm:v2.9.1 
docker push ${MY_REGISTRY}/k8s-gcr-io-helm:v2.9.1

echo ""
echo "=========================================================="
echo "Push Extra Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""

