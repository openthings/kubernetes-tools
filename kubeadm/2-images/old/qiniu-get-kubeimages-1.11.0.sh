## 拉取镜像
docker pull reg.qiniu.com/k8s/kube-apiserver-amd64:v1.11.0
docker pull reg.qiniu.com/k8s/kube-controller-manager-amd64:v1.11.0
docker pull reg.qiniu.com/k8s/kube-scheduler-amd64:v1.11.0
docker pull reg.qiniu.com/k8s/kube-proxy-amd64:v1.11.0
docker pull reg.qiniu.com/k8s/etcd-amd64:3.2.18
docker pull reg.qiniu.com/k8s/pause-amd64:3.1

# 目前，QiNiu没有CoreDNS镜像，改为从hub.docker.com拉取。
docker pull openthings/k8s-coredns:1.1.3

## 添加Tag
docker tag reg.qiniu.com/k8s/kube-apiserver-amd64:v1.11.0 k8s.gcr.io/kube-apiserver-amd64:v1.11.0
docker tag reg.qiniu.com/k8s/kube-scheduler-amd64:v1.11.0 k8s.gcr.io/kube-scheduler-amd64:v1.11.0
docker tag reg.qiniu.com/k8s/kube-controller-manager-amd64:v1.11.0 k8s.gcr.io/kube-controller-manager-amd64:v1.11.0
docker tag reg.qiniu.com/k8s/kube-proxy-amd64:v1.11.0 k8s.gcr.io/kube-proxy-amd64:v1.11.0
docker tag reg.qiniu.com/k8s/etcd-amd64:3.2.18 k8s.gcr.io/etcd-amd64:3.2.18
docker tag reg.qiniu.com/k8s/pause-amd64:3.1 k8s.gcr.io/pause-amd64:3.1

#docker tag reg.qiniu.com/k8s/coredns:1.1.3 k8s.gcr.io/coredns:1.1.3
docker tag openthings/k8s-coredns:1.1.3 k8s.gcr.io/coredns:1.1.3


