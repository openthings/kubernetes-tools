
echo ""
echo "=========================================================="
echo "Setup Kubernetes Cluster 1.11.0 using kubeadm......"
echo ""
echo "Please visit https://my.oschina.net/u/2306127/blog/1628082"
echo "=========================================================="
echo ""

echo "Close Swap, K8S required."
sudo swapoff -a
echo "请sudo nano /etc/fstab中永久删除或关闭swap分区，使用 # 注释掉即可。"
echo ""

echo "Close IPTable，K8S required."
sudo iptables -F
echo ""

echo ""
echo "Setup Kubernetes Cluster using kubeadm..."
sudo kubeadm init --kubernetes-version=v1.11.2 –pod-network-cidr 10.244.0.0/16 --feature-gates CoreDNS=true
echo ""

echo "Install flannel CNI network driver..."
sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
echo ""

echo "Kubernetes status..."
kubectl get pod --all-namespaces
echo ""

echo "=========================================================="
echo "Please visit https://my.oschina.net/u/2306127/blog/1628082"
echo "=========================================================="
echo ""

