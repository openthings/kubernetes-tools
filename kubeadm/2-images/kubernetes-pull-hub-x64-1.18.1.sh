echo ""
echo "=========================================================="
echo "Pull Kubernetes for x64 v1.18.1 Images from docker.io ......"
echo "=========================================================="
echo ""

MY_REGISTRY=mirrorgcrio

## 拉取镜像
docker pull ${MY_REGISTRY}/kube-apiserver:v1.18.1
docker pull ${MY_REGISTRY}/kube-controller-manager:v1.18.1
docker pull ${MY_REGISTRY}/kube-scheduler:v1.18.1
docker pull ${MY_REGISTRY}/kube-proxy:v1.18.1
docker pull ${MY_REGISTRY}/etcd:3.4.3-0
docker pull ${MY_REGISTRY}/pause:3.2

#docker pull ${MY_REGISTRY}/coredns-arm64:1.6.7
docker pull coredns/coredns:1.6.7

## 添加Tag
docker tag ${MY_REGISTRY}/kube-apiserver:v1.18.1 k8s.gcr.io/kube-apiserver:v1.18.1
docker tag ${MY_REGISTRY}/kube-scheduler:v1.18.1 k8s.gcr.io/kube-scheduler:v1.18.1
docker tag ${MY_REGISTRY}/kube-controller-manager:v1.18.1 k8s.gcr.io/kube-controller-manager:v1.18.1
docker tag ${MY_REGISTRY}/kube-proxy:v1.18.1 k8s.gcr.io/kube-proxy:v1.18.1
docker tag ${MY_REGISTRY}/etcd:3.4.3-0 k8s.gcr.io/etcd:3.4.3-0
docker tag ${MY_REGISTRY}/pause:3.2 k8s.gcr.io/pause:3.2

#docker tag ${MY_REGISTRY}/coredns-arm64:1.6.7 k8s.gcr.io/coredns:1.6.7
docker tag coredns/coredns:1.6.7 k8s.gcr.io/coredns:1.6.7

echo ""
echo "=========================================================="
echo "Pull Kubernetes for x64 v1.18.1 Images FINISHED."
echo "into docker.io/mirrorgcrio, "
echo " by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""