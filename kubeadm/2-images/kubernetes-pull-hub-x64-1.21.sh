#MY_REGISTRY=mirrorgcrio
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/google_containers
K8S_VERSION="1.21.0"

echo ""
echo "=========================================================="
echo "Pull Kubernetes for x64 v$K8S_VERSION Images from docker.io ......"
echo "=========================================================="
echo ""


## 拉取镜像
docker pull ${MY_REGISTRY}/kube-apiserver:v$K8S_VERSION
docker pull ${MY_REGISTRY}/kube-controller-manager:v$K8S_VERSION
docker pull ${MY_REGISTRY}/kube-scheduler:v$K8S_VERSION
docker pull ${MY_REGISTRY}/kube-proxy:v$K8S_VERSION
docker pull ${MY_REGISTRY}/etcd:3.4.13-0
docker pull ${MY_REGISTRY}/pause:3.4.1

#docker pull ${MY_REGISTRY}/coredns-arm64:1.6.7
docker pull coredns/coredns:1.8.0

## 添加Tag
docker tag ${MY_REGISTRY}/kube-apiserver:v$K8S_VERSION k8s.gcr.io/kube-apiserver:v$K8S_VERSION
docker tag ${MY_REGISTRY}/kube-scheduler:v$K8S_VERSION k8s.gcr.io/kube-scheduler:v$K8S_VERSION
docker tag ${MY_REGISTRY}/kube-controller-manager:v$K8S_VERSION k8s.gcr.io/kube-controller-manager:v$K8S_VERSION
docker tag ${MY_REGISTRY}/kube-proxy:v$K8S_VERSION k8s.gcr.io/kube-proxy:v$K8S_VERSION
docker tag ${MY_REGISTRY}/etcd:3.4.13-0 k8s.gcr.io/etcd:3.4.13-0
docker tag ${MY_REGISTRY}/pause:3.4.1 k8s.gcr.io/pause:3.4.1

#docker tag ${MY_REGISTRY}/coredns-arm64:1.6.7 k8s.gcr.io/coredns:1.6.7
docker tag coredns/coredns:1.8.0 k8s.gcr.io/coredns:1.8.0

echo ""
echo "=========================================================="
echo "Pull Kubernetes for x64 v$K8S_VERSION Images FINISHED."
echo "into docker.io/mirrorgcrio, "
echo " by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""
