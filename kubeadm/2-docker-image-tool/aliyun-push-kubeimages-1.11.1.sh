
echo ""
echo "=========================================================="
echo "Push Kubernetes 1.11.1 Images into aliyuncs.com ......"
echo "=========================================================="
echo ""

echo "docker tag to openthings ..."

## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag k8s.gcr.io/kube-apiserver-amd64:v1.11.1 ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver-amd64:v1.11.1 
docker tag k8s.gcr.io/kube-scheduler-amd64:v1.11.1 ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler-amd64:v1.11.1
docker tag k8s.gcr.io/kube-controller-manager-amd64:v1.11.1 ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager-amd64:v1.11.1 
docker tag k8s.gcr.io/kube-proxy-amd64:v1.11.1 ${MY_REGISTRY}/k8s-gcr-io-kube-proxy-amd64:v1.11.1 
docker tag k8s.gcr.io/etcd-amd64:3.2.18 ${MY_REGISTRY}/k8s-gcr-io-etcd-amd64:3.2.18 
docker tag k8s.gcr.io/pause-amd64:3.1 ${MY_REGISTRY}/k8s-gcr-io-pause-amd64:3.1 
docker tag k8s.gcr.io/coredns:1.1.3 ${MY_REGISTRY}/k8s-gcr-io-coredns:1.1.3 

echo ""
echo "=========================================================="
echo ""

## Push镜像
echo ""
echo "1.k8s-kube-apiserver-amd64"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver-amd64:v1.11.1

echo ""
echo "2.k8s-kube-controller-manager-amd64"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager-amd64:v1.11.1

echo ""
echo "3.k8s-kube-scheduler-amd64"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler-amd64:v1.11.1

echo ""
echo "4.k8s-kube-proxy-amd64"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-proxy-amd64:v1.11.1

echo ""
echo "5.k8s-etcd-amd64"
docker push ${MY_REGISTRY}/k8s-gcr-io-etcd-amd64:3.2.18

echo ""
echo "6.k8s-pause-amd64"
docker push ${MY_REGISTRY}/k8s-gcr-io-pause-amd64:3.1

echo ""
echo "7.k8s-coredns"
docker push ${MY_REGISTRY}/k8s-gcr-io-coredns:1.1.3

echo ""
echo "=========================================================="
echo "Push Kubernetes 1.11.1 Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""

