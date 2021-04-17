echo "==================================================================="
echo "Load Kubernetes images from tar."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"

echo "###################################################################"
echo "Kubernetes core system images."
echo "-------------------------------------------------------------------"

K8S_VERSION="1.21.0"

IMAGES_PATH=/home/supermap/k8s-images-$K8S_VERSION

echo "A1<< k8s.gcr.io/kube-apiserver:v$K8S_VERSION"
docker load -i $IMAGES_PATH/A1-k8s-kube-apiserver-v$K8S_VERSION.tar
echo ""

echo "A2<< k8s.gcr.io/kube-controller-manager:v$K8S_VERSION"
docker load -i $IMAGES_PATH/A2-k8s-kube-controller-manager-v$K8S_VERSION.tar
echo ""

echo "A3<< k8s.gcr.io/kube-scheduler:v$K8S_VERSION"
docker load -i $IMAGES_PATH/A3-k8s-kube-scheduler-v$K8S_VERSION.tar
echo ""

echo "A4<< k8s.gcr.io/kube-proxy:v$K8S_VERSION"
docker load -i $IMAGES_PATH/A4-k8s-kube-proxy-v$K8S_VERSION.tar
echo ""

echo "A5<< k8s.gcr.io/pause:3.4.1"
docker load -i $IMAGES_PATH/A5-k8s-pause-3.4.1.tar
echo ""

echo "A6<< k8s.gcr.io/etcd:3.4.13-0"
docker load -i $IMAGES_PATH/A6-k8s-etcd-3.4.13-0.tar
echo ""

echo "A7<< k8s.gcr.io/coredns:1.8.0"
docker load -i $IMAGES_PATH/A7-k8s-coredns-1.8.0.tar
echo ""

echo "==================================================================="
echo "B1<< quay.io/coreos/flannel:v0.12.0-amd64"
docker load -i $IMAGES_PATH/B1-flannel-v0.12.0.tar
echo ""

echo "B2<< kubernetesui/dashboard:v2.0.0-beta6"
docker load -i $IMAGES_PATH/B2-dashboard-v2.0.0.tar
echo ""

echo "B3<< gcr.io/kubernetes-helm/tiller:v2.11.0"
docker load -i $IMAGES_PATH/B3-helm-tiller-v2.11.0.tar 
echo ""

echo "B4<< quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0"
docker load -i $IMAGES_PATH/B4-ingress-controller-0.22.0.tar
echo ""

echo "B5<< k8s.gcr.io/defaultbackend:1.3"
docker load -i $IMAGES_PATH/B5-k8s-defaultbackend-1.3.tar
echo ""

echo "==================================================================="
echo "Load kubernetes images Finished."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"
echo "==================================================================="

