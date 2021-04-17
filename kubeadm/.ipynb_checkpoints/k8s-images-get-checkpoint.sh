echo "==================================================================="
echo "Get Kubernetes images to tar."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"

echo "###################################################################"
echo "Kubernetes core system images."
echo "-------------------------------------------------------------------"

K8S_VERSION="1.21.0"
IMAGES_PATH=~/k8s-images-$K8S_VERSION

echo "=================================="
echo "Pull images from aliyun....."
echo ""
./2-images/kubernetes-pull-hub-x64-1.21.sh

echo "=================================="
echo "Save images to local with tar....."
echo ""
./k8s-images-save.sh

echo "==================================================================="
echo "Get kubernetes images Finished."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"
echo "==================================================================="
echo ""

