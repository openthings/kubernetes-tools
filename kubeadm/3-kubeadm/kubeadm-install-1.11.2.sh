echo "安装kubernetes 1.11.2: "

kubeadm init --kubernetes-version=v1.11.2 --pod-network-cidr=10.244.0.0/16 --feature-gates CoreDNS=true
