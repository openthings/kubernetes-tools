echo ""
echo "=========================================================="
echo "Push Kubernetes v1.17.4 Images into aliyuncs.com ......"
echo "=========================================================="
echo ""

echo "docker tag to openthings ..."

## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag k8s.gcr.io/kube-apiserver:v1.17.4 ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver:v1.17.4
docker tag k8s.gcr.io/kube-scheduler:v1.17.4 ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler:v1.17.4
docker tag k8s.gcr.io/kube-controller-manager:v1.17.4 ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager:v1.17.4
docker tag k8s.gcr.io/kube-proxy:v1.17.4 ${MY_REGISTRY}/k8s-gcr-io-kube-proxy:v1.17.4
docker tag k8s.gcr.io/etcd:3.4.3-0 ${MY_REGISTRY}/k8s-gcr-io-etcd:3.4.3-0
docker tag k8s.gcr.io/pause:3.1 ${MY_REGISTRY}/k8s-gcr-io-pause:3.1
docker tag k8s.gcr.io/coredns:1.6.5 ${MY_REGISTRY}/k8s-gcr-io-coredns:1.6.5

echo ""
echo "=========================================================="
echo ""

## Push镜像
echo ""
echo "1.k8s-kube-apiserver"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver:v1.17.4

echo ""
echo "2.k8s-kube-controller-manager"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager:v1.17.4

echo ""
echo "3.k8s-kube-scheduler"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler:v1.17.4

echo ""
echo "4.k8s-kube-proxy"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-proxy:v1.17.4

echo ""
echo "5.k8s-etcd"
docker push ${MY_REGISTRY}/k8s-gcr-io-etcd:3.4.3-0

echo ""
echo "6.k8s-pause"
docker push ${MY_REGISTRY}/k8s-gcr-io-pause:3.1

echo ""
echo "7.k8s-coredns"
docker push ${MY_REGISTRY}/k8s-gcr-io-coredns:1.6.5

echo ""
echo "=========================================================="
echo "Push Kubernetes v1.17.4 Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""
