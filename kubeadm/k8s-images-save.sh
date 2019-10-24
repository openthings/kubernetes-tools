echo "==================================================================="
echo "Save Kubernetes images to tar."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"

echo "###################################################################"
echo "Kubernetes core system images."
echo "-------------------------------------------------------------------"

K8S_VERSION="1.16.2"

IMAGES_PATH=~/k8s-images-$K8S_VERSION

mkdir $IMAGES_PATH

echo "A1.>> k8s.gcr.io/kube-apiserver:v$K8S_VERSION"
docker save k8s.gcr.io/kube-apiserver:v$K8S_VERSION -o $IMAGES_PATH/A1-k8s-kube-apiserver-v$K8S_VERSION.tar
echo ""

echo "A2.>> k8s.gcr.io/kube-controller-manager:v$K8S_VERSION"
docker save k8s.gcr.io/kube-controller-manager:v$K8S_VERSION -o $IMAGES_PATH/A2-k8s-kube-controller-manager-v$K8S_VERSION.tar
echo ""

echo "A3.>> k8s.gcr.io/kube-scheduler:v$K8S_VERSION"
docker save k8s.gcr.io/kube-scheduler:v$K8S_VERSION -o $IMAGES_PATH/A3-k8s-kube-scheduler-v$K8S_VERSION.tar
echo ""

echo "A4.>> k8s.gcr.io/kube-proxy:v$K8S_VERSION"
docker save k8s.gcr.io/kube-proxy:v$K8S_VERSION -o $IMAGES_PATH/A4-k8s-kube-proxy-v$K8S_VERSION.tar
echo ""

echo "A5.>> k8s.gcr.io/pause:3.1"
docker save k8s.gcr.io/pause:3.1 -o $IMAGES_PATH/A5-k8s-pause-3.1.tar
echo ""

echo "A6.>> k8s.gcr.io/etcd:3.3.15-0"
docker save k8s.gcr.io/etcd:3.3.10 -o $IMAGES_PATH/A6-k8s-etcd-3.3.15.tar
echo ""

echo "A7.>> k8s.gcr.io/coredns:1.6.2"
docker save k8s.gcr.io/coredns:1.3.1 -o $IMAGES_PATH/A7-k8s-coredns-1.6.2.tar
echo ""

echo "==================================================================="
echo "B1.>> quay.io/coreos/flannel:v0.10.0-amd64"
docker save quay.io/coreos/flannel:v0.10.0-amd64 -o $IMAGES_PATH/B1-flannel-v0.10.0.tar
echo ""

echo "B2.>> k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0"
docker save k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0 -o $IMAGES_PATH/B2-dashboard-v1.10.0.tar
echo ""

echo "B3.>> gcr.io/kubernetes-helm/tiller:v2.11.0"
docker save gcr.io/kubernetes-helm/tiller:v2.11.0 -o $IMAGES_PATH/B3-helm-tiller-v2.11.0.tar 
echo ""

echo "B4.>> quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0"
docker save quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0 -o $IMAGES_PATH/B4-ingress-controller-0.22.0.tar
echo ""

echo "B5.>> k8s.gcr.io/defaultbackend:1.3"
docker save k8s.gcr.io/defaultbackend:1.3 -o $IMAGES_PATH/B5-k8s-defaultbackend-1.3.tar
echo ""

echo "==================================================================="
echo "Save kubernetes images Finished."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"
echo "==================================================================="
echo ""

