echo ""
echo "=========================================================="
echo "Pull Kubernetes 1.11.0 Images from hub.docker.com ......"
echo "=========================================================="
echo ""

## 拉取镜像
docker pull openthings/k8s-kube-apiserver-amd64:v1.11.0
docker pull openthings/k8s-kube-controller-manager-amd64:v1.11.0
docker pull openthings/k8s-kube-scheduler-amd64:v1.11.0
docker pull openthings/k8s-kube-proxy-amd64:v1.11.0
docker pull openthings/k8s-etcd-amd64:3.2.18
docker pull openthings/k8s-pause-amd64:3.1
docker pull openthings/k8s-coredns:1.1.3


## 添加Tag
docker tag openthings/k8s-kube-apiserver-amd64:v1.11.0 k8s.gcr.io/kube-apiserver-amd64:v1.11.0
docker tag openthings/k8s-kube-scheduler-amd64:v1.11.0 k8s.gcr.io/kube-scheduler-amd64:v1.11.0
docker tag openthings/k8s-kube-controller-manager-amd64:v1.11.0 k8s.gcr.io/kube-controller-manager-amd64:v1.11.0
docker tag openthings/k8s-kube-proxy-amd64:v1.11.0 k8s.gcr.io/kube-proxy-amd64:v1.11.0
docker tag openthings/k8s-etcd-amd64:3.2.18 k8s.gcr.io/etcd-amd64:3.2.18
docker tag openthings/k8s-pause-amd64:3.1 k8s.gcr.io/pause-amd64:3.1
docker tag openthings/k8s-coredns:1.1.3 k8s.gcr.io/coredns:1.1.3

echo ""
echo "=========================================================="
echo "Pull Kubernetes 1.11.0 Images from hub.docker.com, FINISH."
echo "=========================================================="

echo ""
