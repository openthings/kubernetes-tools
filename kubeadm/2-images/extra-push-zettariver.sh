
echo ""
echo "=========================================================="
echo "Push Extra Images into core.harbor.zettariver ......"
echo "=========================================================="
echo ""

echo "docker tag to core.harbor.zettariver ..."

## 添加Tag for core.harbor.zettariver/k8s/
MY_REGISTRY=core.harbor.zettariver/k8s

echo ""
echo "=========================================================="
echo ""

## Push镜像
echo ""
echo "1.k8s-gcr-io-dashboard"
#docker tag k8s.gcr.io/kubernetes-dashboard-amd64:v1.8.3 ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3 
#docker push ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3

docker tag k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0 ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.10.0 
docker push ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.10.0

echo ""
echo "2.kubernetes-helm"
docker tag gcr.io/kubernetes-helm/tiller:v2.11.0 ${MY_REGISTRY}/k8s-gcr-io-helm:v2.11.0 
docker push ${MY_REGISTRY}/k8s-gcr-io-helm:v2.11.0

echo ""
echo "3.kubernetes-flannel"
docker tag quay.io/coreos/flannel:v0.10.0-amd64 ${MY_REGISTRY}/coreos-flannel:v0.10.0-amd64 
docker push ${MY_REGISTRY}/coreos-flannel:v0.10.0-amd64

echo ""
echo "4.kubernetes-Ingress"
docker tag quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.14.0 ${MY_REGISTRY}/nginx-ingress-controller:0.14.0
docker push ${MY_REGISTRY}/nginx-ingress-controller:0.14.0

docker tag k8s.gcr.io/defaultbackend:1.3 ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3 
docker push ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3


echo ""
echo "=========================================================="
echo "Push Extra Images FINISHED."
echo "into core.harbor.zettariver/k8s, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""

