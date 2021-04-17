echo ""
echo "=========================================================="
echo "Remove Kubernetes Images from k8s.gcr.io ......"
echo "You may need proxy, using as: "
echo "https_proxy=192.168.199.99:9999 ./get-kubeimages-1.13.3.sh"
echo "=========================================================="
echo ""

echo ""
echo "1.k8s-kube-apiserver"
docker rmi k8s.gcr.io/kube-apiserver:v1.13.2
docker rmi registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-apiserver:v1.13.2

echo ""
echo "2.k8s-kube-controller-manager"
docker rmi k8s.gcr.io/kube-controller-manager:v1.13.2
docker rmi registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-controller-manager:v1.13.2

echo ""
echo "3.k8s-kube-scheduler"
docker rmi k8s.gcr.io/kube-scheduler:v1.13.2
docker rmi registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-scheduler:v1.13.2

echo ""
echo "4.k8s-kube-proxy"
docker rmi k8s.gcr.io/kube-proxy:v1.13.2
docker rmi registry.cn-hangzhou.aliyuncs.com/openthings/k8s-gcr-io-kube-proxy:v1.13.2

echo ""
#echo "5.k8s-etcd"
#docker pull k8s.gcr.io/etcd:3.2.24

echo ""
#echo "6.k8s-pause"
#docker pull k8s.gcr.io/pause:3.1

echo ""
#echo "7.k8s-coredns"
#docker pull k8s.gcr.io/coredns:1.2.6

echo ""
echo "=========================================================="
echo "Pull Kubernetes 1.13.3 Images from k8s.gcr.io, FINISH."
echo "=========================================================="
echo ""
