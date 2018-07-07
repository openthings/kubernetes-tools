## 拉取镜像
docker pull reg.qiniu.com/k8s/kube-apiserver-amd64:v1.10.2
docker pull reg.qiniu.com/k8s/kube-controller-manager-amd64:v1.10.2
docker pull reg.qiniu.com/k8s/kube-scheduler-amd64:v1.10.2
docker pull reg.qiniu.com/k8s/kube-proxy-amd64:v1.10.2
docker pull reg.qiniu.com/k8s/etcd-amd64:3.1.12
docker pull reg.qiniu.com/k8s/pause-amd64:3.1

## 添加Tag
docker tag reg.qiniu.com/k8s/kube-apiserver-amd64:v1.10.2 k8s.gcr.io/kube-apiserver-amd64:v1.10.2
docker tag reg.qiniu.com/k8s/kube-scheduler-amd64:v1.10.2 k8s.gcr.io/kube-scheduler-amd64:v1.10.2
docker tag reg.qiniu.com/k8s/kube-controller-manager-amd64:v1.10.2 k8s.gcr.io/kube-controller-manager-amd64:v1.10.2
docker tag reg.qiniu.com/k8s/kube-proxy-amd64:v1.10.2 k8s.gcr.io/kube-proxy-amd64:v1.10.2
docker tag reg.qiniu.com/k8s/etcd-amd64:3.1.12 k8s.gcr.io/etcd-amd64:3.1.12
docker tag reg.qiniu.com/k8s/pause-amd64:3.1 k8s.gcr.io/pause-amd64:3.1

## 在Kubernetes 1.10 中，增加了CoreDNS，如果使用CoreDNS(默认关闭)，则不需要下面三个镜像。
docker pull reg.qiniu.com/k8s/k8s-dns-sidecar-amd64:1.14.10
docker pull reg.qiniu.com/k8s/k8s-dns-kube-dns-amd64:1.14.10
docker pull reg.qiniu.com/k8s/k8s-dns-dnsmasq-nanny-amd64:1.14.10

docker tag reg.qiniu.com/k8s/k8s-dns-sidecar-amd64:1.14.10 k8s.gcr.io/k8s-dns-sidecar-amd64:1.14.10
docker tag reg.qiniu.com/k8s/k8s-dns-kube-dns-amd64:1.14.10 k8s.gcr.io/k8s-dns-kube-dns-amd64:1.14.10
docker tag reg.qiniu.com/k8s/k8s-dns-dnsmasq-nanny-amd64:1.14.10 k8s.gcr.io/k8s-dns-dnsmasq-nanny-amd64:1.14.10


