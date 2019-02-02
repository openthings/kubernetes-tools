echo "==================================================================="
echo "Save Kubernetes images to tar."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"

echo "###################################################################"
echo "Kubernetes core system images."
echo "-------------------------------------------------------------------"

echo "A1.>> k8s.gcr.io/kube-apiserver:v1.13.1"
docker save k8s.gcr.io/kube-apiserver:v1.13.1 -o A1-k8s-kube-apiserver-v1.13.1.tar
echo ""

echo "A2.>> k8s.gcr.io/kube-controller-manager:v1.13.1"
docker save k8s.gcr.io/kube-controller-manager:v1.13.1 -o A2-k8s-kube-controller-manager-v1.13.1.tar
echo ""

echo "A3.>> k8s.gcr.io/kube-scheduler:v1.13.1"
docker save k8s.gcr.io/kube-scheduler:v1.13.1 -o A3-k8s-kube-scheduler-v1.13.1.tar
echo ""

echo "A4.>> k8s.gcr.io/kube-proxy:v1.13.1"
docker save k8s.gcr.io/kube-proxy:v1.13.1 -o A4-k8s-kube-proxy-v1.13.1.tar
echo ""

echo "A5.>> k8s.gcr.io/pause:3.1"
docker save k8s.gcr.io/pause:3.1 -o A5-k8s-pause-3.1.tar
echo ""

echo "A6.>> k8s.gcr.io/etcd:3.2.24"
docker save k8s.gcr.io/etcd:3.2.24 -o A6-k8s-etcd-3.2.24.tar
echo ""

echo "A7.>> k8s.gcr.io/coredns:1.2.6"
docker save k8s.gcr.io/coredns:1.2.6 -o A7-k8s-coredns-1.2.6.tar
echo ""

echo "==================================================================="
echo "B1.>> quay.io/coreos/flannel:v0.10.0-amd64"
docker save quay.io/coreos/flannel:v0.10.0-amd64 -o B1-flannel-v0.10.0.tar
echo ""

echo "B2.>> k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0"
docker save k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0 -o B2-dashboard-v1.10.0.tar
echo ""

echo "B3.>> gcr.io/kubernetes-helm/tiller:v2.11.0"
docker save gcr.io/kubernetes-helm/tiller:v2.11.0 -o B3-helm-tiller-v2.11.0.tar 
echo ""

echo "B4.>> quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.21.0"
docker save quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.21.0 -o B4-ingress-controller-0.21.0.tar
echo ""

echo "B5.>> k8s.gcr.io/defaultbackend:1.3"
docker save k8s.gcr.io/defaultbackend:1.3 -o B5-k8s-defaultbackend-1.3.tar
echo ""

echo "==================================================================="
echo "Save kubernetes images Finished."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"
echo "==================================================================="
echo ""

