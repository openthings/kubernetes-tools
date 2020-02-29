echo ""
echo "=========================================================="
echo "Pull Kubernetes v1.17.2 Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

## 拉取镜像
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver:v1.17.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager:v1.17.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler:v1.17.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-proxy:v1.17.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-etcd:3.4.3-0
docker pull ${MY_REGISTRY}/k8s-gcr-io-pause:3.1
docker pull ${MY_REGISTRY}/k8s-gcr-io-coredns:1.6.5


## 添加Tag
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver:v1.17.2 k8s.gcr.io/kube-apiserver:v1.17.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler:v1.17.2 k8s.gcr.io/kube-scheduler:v1.17.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager:v1.17.2 k8s.gcr.io/kube-controller-manager:v1.17.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-proxy:v1.17.2 k8s.gcr.io/kube-proxy:v1.17.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-etcd:3.4.3-0 k8s.gcr.io/etcd:3.4.3-0
docker tag ${MY_REGISTRY}/k8s-gcr-io-pause:3.1 k8s.gcr.io/pause:3.1
docker tag ${MY_REGISTRY}/k8s-gcr-io-coredns:1.6.5 k8s.gcr.io/coredns:1.6.5

echo ""
echo "=========================================================="
echo "Pull Kubernetes v1.17.2 Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""
