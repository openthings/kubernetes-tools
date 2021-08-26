echo ""
echo "==========================================================="
echo "Pull Kubernetes v1.22.1 arm64 Images from k8s.gcr.io ......"
echo "You may need proxy, using as: "
echo "https_proxy=192.168.199.99:9999 ./get-kubeimages-1.15.0.sh"
echo "==========================================================="
echo ""

K8S_VERSION="1.22.1"
IMAGES_PATH=~/k8s-images-$K8S_VERSION-arm64
mkdir $IMAGES_PATH

echo ""
echo "1.k8s-kube-apiserver"
docker pull --platform arm64 k8s.gcr.io/kube-apiserver:v$K8S_VERSION
docker save k8s.gcr.io/kube-apiserver:v$K8S_VERSION -o $IMAGES_PATH/A1-k8s-kube-apiserver-v$K8S_VERSION.tar

echo ""
echo "2.k8s-kube-controller-manager"
docker pull --platform arm64 k8s.gcr.io/kube-controller-manager:v1.22.1
docker save k8s.gcr.io/kube-controller-manager:v$K8S_VERSION -o $IMAGES_PATH/A2-k8s-kube-controller-manager-v$K8S_VERSION.tar

echo ""
echo "3.k8s-kube-scheduler"
docker pull --platform arm64 k8s.gcr.io/kube-scheduler:v1.22.1
docker save k8s.gcr.io/kube-scheduler:v$K8S_VERSION -o $IMAGES_PATH/A3-k8s-kube-scheduler-v$K8S_VERSION.tar

echo ""
echo "4.k8s-kube-proxy"
docker pull --platform arm64 k8s.gcr.io/kube-proxy:v1.22.1
docker save k8s.gcr.io/kube-proxy:v$K8S_VERSION -o $IMAGES_PATH/A4-k8s-kube-proxy-v$K8S_VERSION.tar

echo ""
echo "5.k8s-etcd"
docker pull --platform arm64 k8s.gcr.io/etcd:3.5.0-0
docker save k8s.gcr.io/pause:3.5 -o $IMAGES_PATH/A5-k8s-pause-3.5.tar

echo ""
echo "6.k8s-pause"
docker pull --platform arm64 k8s.gcr.io/pause:3.5
docker save k8s.gcr.io/etcd:3.5.0-0 -o $IMAGES_PATH/A6-k8s-etcd-3.5.0-0.tar

echo ""
echo "7.k8s-coredns"
docker pull --platform arm64 k8s.gcr.io/coredns/coredns:v1.8.4
docker save k8s.gcr.io/coredns/coredns:v1.8.4 -o $IMAGES_PATH/A7-k8s-coredns-v1.8.4.tar

echo "============================================================="
echo "Copy loader into $IMAGES_PATH"
cp k8s-images-load.sh $IMAGES_PATH/

echo "Zip to $IMAGES_PATH.zip"
cd ~
zip -r k8s-images-$K8S_VERSION-arm64.zip k8s-images-$K8S_VERSION-arm64
echo "============================================================="


echo ""
echo "============================================================="
echo "Pull Kubernetes v1.22.1 arm64 Images from k8s.gcr.io, FINISH."
echo "============================================================="
echo ""
