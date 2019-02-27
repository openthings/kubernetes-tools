echo ""
echo "=========================================================="
echo "Push Kubernetes 1.13.3 Images into core.harbor.zettariver ......"
echo "=========================================================="
echo ""

echo "docker tag to core.harbor.zettariver ..."

## 添加Tag for core.harbor.zettariver

MY_REGISTRY=core.harbor.zettariver/k8s

docker tag k8s.gcr.io/kube-apiserver:v1.13.3 ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver:v1.13.3
docker tag k8s.gcr.io/kube-scheduler:v1.13.3 ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler:v1.13.3
docker tag k8s.gcr.io/kube-controller-manager:v1.13.3 ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager:v1.13.3
docker tag k8s.gcr.io/kube-proxy:v1.13.3 ${MY_REGISTRY}/k8s-gcr-io-kube-proxy:v1.13.3
docker tag k8s.gcr.io/etcd:3.2.24 ${MY_REGISTRY}/k8s-gcr-io-etcd:3.2.24 
docker tag k8s.gcr.io/pause:3.1 ${MY_REGISTRY}/k8s-gcr-io-pause:3.1
docker tag k8s.gcr.io/coredns:1.2.6 ${MY_REGISTRY}/k8s-gcr-io-coredns:1.2.6

echo ""
echo "=========================================================="
echo ""

## Push镜像
echo ""
echo "1.k8s-kube-apiserver"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver:v1.13.3

echo ""
echo "2.k8s-kube-controller-manager"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager:v1.13.3

echo ""
echo "3.k8s-kube-scheduler"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler:v1.13.3

echo ""
echo "4.k8s-kube-proxy"
docker push ${MY_REGISTRY}/k8s-gcr-io-kube-proxy:v1.13.3

echo ""
echo "5.k8s-etcd"
docker push ${MY_REGISTRY}/k8s-gcr-io-etcd:3.2.24

echo ""
echo "6.k8s-pause"
docker push ${MY_REGISTRY}/k8s-gcr-io-pause:3.1

echo ""
echo "7.k8s-coredns"
docker push ${MY_REGISTRY}/k8s-gcr-io-coredns:1.2.6

echo ""
echo "=========================================================="
echo "Push Kubernetes 1.13.3 Images FINISHED."
echo "into core.harbor.zettariver/k8s, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""
