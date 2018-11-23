sudo kubeadm init --kubernetes-version=v1.12.2 --apiserver-advertise-address=10.1.1.201 --pod-network-cidr=10.244.0.0/16 --feature-gates CoreDNS=true
