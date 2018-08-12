echo ""
echo "=========================================================="
echo "Pull Kubernetes 1.11.2 Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

## 拉取镜像
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver-amd64:v1.11.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager-amd64:v1.11.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler-amd64:v1.11.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-kube-proxy-amd64:v1.11.2
docker pull ${MY_REGISTRY}/k8s-gcr-io-etcd-amd64:3.2.18
docker pull ${MY_REGISTRY}/k8s-gcr-io-pause:3.1
docker pull ${MY_REGISTRY}/k8s-gcr-io-coredns:1.1.3


## 添加Tag
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-apiserver-amd64:v1.11.2 k8s.gcr.io/kube-apiserver-amd64:v1.11.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-scheduler-amd64:v1.11.2 k8s.gcr.io/kube-scheduler-amd64:v1.11.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-controller-manager-amd64:v1.11.2 k8s.gcr.io/kube-controller-manager-amd64:v1.11.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-kube-proxy-amd64:v1.11.2 k8s.gcr.io/kube-proxy-amd64:v1.11.2
docker tag ${MY_REGISTRY}/k8s-gcr-io-etcd-amd64:3.2.18 k8s.gcr.io/etcd-amd64:3.2.18
docker tag ${MY_REGISTRY}/k8s-gcr-io-pause:3.1 k8s.gcr.io/pause:3.1
docker tag ${MY_REGISTRY}/k8s-gcr-io-coredns:1.1.3 k8s.gcr.io/coredns:1.1.3

echo ""
echo "=========================================================="
echo "Pull Kubernetes 1.11.2 Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/openthings, "
echo "           by openthings@https://my.oschina.net/u/2306127."
echo "=========================================================="

echo ""
