docker tag k8s.gcr.io/kube-apiserver-amd64:v1.10.3 registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-apiserver-amd64:v1.10.3
docker push registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-apiserver-amd64:v1.10.3

docker tag k8s.gcr.io/kube-scheduler-amd64:v1.10.3 registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-scheduler-amd64:v1.10.3
docker push registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-scheduler-amd64:v1.10.3

docker tag k8s.gcr.io/kube-controller-manager-amd64:v1.10.3 registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-controller-manager-amd64:v1.10.3
docker push registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-controller-manager-amd64:v1.10.3

docker tag k8s.gcr.io/k8s-dns-dnsmasq-nanny-amd64:1.14.8 registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-k8s-dns-dnsmasq-nanny-amd64:1.14.8
docker push registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-k8s-dns-dnsmasq-nanny-amd64:1.14.8
              
docker tag k8s.gcr.io/k8s-dns-sidecar-amd64:1.14.8 registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-k8s-dns-sidecar-amd64:1.14.8
docker push registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-k8s-dns-sidecar-amd64:1.14.8

docker tag k8s.gcr.io/k8s-dns-kube-dns-amd64:1.14.8 registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-k8s-dns-kube-dns-amd64:1.14.8
docker push registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-k8s-dns-kube-dns-amd64:1.14.8