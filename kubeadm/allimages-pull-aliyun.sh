echo ""
#========================================================
echo "Pull all kubernetes images from aliyun."
echo "By https://github.com/openthings/kubernetes-tools"
#========================================================
echo ""

echo ""
echo "===================================="
echo "Kubernetes system images for 1.11.3"
echo "===================================="
./2-images/kubernetes-pull-aliyun-1.11.3.sh

echo ""
echo "===================================="
echo "Extra images(flannel/Helm/Dashbaord)"
echo "===================================="
./2-images/extra-pull-aliyun.sh

echo ""
echo "===================================="
echo "NFS provisioner images"
echo "===================================="
./2-images/nfs-pull-aliyun.sh

echo ""
echo "===================================="
echo "MetalLB images(Buildin LoadBalancer)"
echo "===================================="
./2-images/metallb-pull-aliyun.sh

echo ""
echo "===================================="
echo "JupyterLab images for Data-Science."
echo "===================================="
./2-images/jupyter-pull-aliyun.sh


