echo ""
echo "=========================================================="
echo "Pull Extra Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

MY_REGISTRY=index.docker.com/openthings

## 拉取镜像

echo ""
echo "1.k8s-gcr-io-dashboard"
#docker pull ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3
#docker tag ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.8.3 k8s.gcr.io/kubernetes-dashboard-amd64:v1.8.3

docker pull ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.10.1
docker tag  ${MY_REGISTRY}/k8s-gcr-io-dashboard:v1.10.1 k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1

echo "-.k8s-gcr-io-heapster"
docker pull ${MY_REGISTRY}/k8s-gcr-io-heapster-amd64:v1.5.2
docker tag  ${MY_REGISTRY}/k8s-gcr-io-heapster-amd64:v1.5.2 k8s.gcr.io/heapster-amd64:v1.5.2

docker pull ${MY_REGISTRY}/k8s-gcr-io-heapster-grafana-amd64:v4.4.3
docker tag  ${MY_REGISTRY}/k8s-gcr-io-heapster-grafana-amd64:v4.4.3 k8s.gcr.io/heapster-grafana-amd64:v4.4.3

docker pull ${MY_REGISTRY}/k8s-gcr-io-heapster-influxdb-amd64:v1.3.3
docker tag  ${MY_REGISTRY}/k8s-gcr-io-heapster-influxdb-amd64:v1.3.3 k8s.gcr.io/heapster-influxdb-amd64:v1.3.3


echo ""
echo "2.kubernetes-helm"
docker pull ${MY_REGISTRY}/k8s-gcr-io-helm:v2.11.0 
docker tag ${MY_REGISTRY}/k8s-gcr-io-helm:v2.11.0 gcr.io/kubernetes-helm/tiller:v2.11.0

echo ""
echo "3.kubernetes-flannel"
docker pull ${MY_REGISTRY}/coreos-flannel:v0.10.0-amd64 
docker tag ${MY_REGISTRY}/coreos-flannel:v0.10.0-amd64 quay.io/coreos/flannel:v0.10.0-amd64


echo ""
echo "4.kubernetes-Ingress"
docker pull ${MY_REGISTRY}/nginx-ingress-controller:0.14.0 
docker tag ${MY_REGISTRY}/nginx-ingress-controller:0.14.0 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.14.0

docker pull ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3 
docker tag ${MY_REGISTRY}/k8s-gcr-io-defaultbackend:1.3 k8s.gcr.io/defaultbackend:1.3


echo ""
echo "=========================================================="
echo "Pull Extra Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""
