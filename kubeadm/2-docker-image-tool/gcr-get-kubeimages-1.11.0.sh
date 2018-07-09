echo ""
echo "=========================================================="
echo "Pull Kubernetes 1.11.0 Images from k8s.gcr.io ......"
echo "You may need proxy, using as: "
echo "https_proxy=192.168.199.99:9999 ./get-kubeimages-1.11.0.sh"
echo "=========================================================="
echo ""

echo ""
echo "1.k8s-kube-apiserver-amd64"
docker pull k8s.gcr.io/kube-apiserver-amd64:v1.11.0

echo ""
echo "2.k8s-kube-controller-manager-amd64"
docker pull k8s.gcr.io/kube-controller-manager-amd64:v1.11.0

echo ""
echo "3.k8s-kube-scheduler-amd64"
docker pull k8s.gcr.io/kube-scheduler-amd64:v1.11.0

echo ""
echo "4.k8s-kube-proxy-amd64"
docker pull k8s.gcr.io/kube-proxy-amd64:v1.11.0

echo ""
echo "5.k8s-etcd-amd64"
docker pull k8s.gcr.io/etcd-amd64:3.2.18

echo ""
echo "6.k8s-pause-amd64"
docker pull k8s.gcr.io/pause-amd64:3.1

echo ""
echo "7.k8s-coredns"
docker pull k8s.gcr.io/coredns:1.1.3

echo ""
echo "=========================================================="
echo "Pull Kubernetes 1.11.0 Images from k8s.gcr.io, FINISH."
echo "=========================================================="
echo ""

