echo "Install Kubernetes 1.12.3 & Hold the version."

ansible all -f 8 -i hosts_ansible -m shell -a " \ 
apt install kubeadm=1.12.3-00 kubectl=1.12.3-00 kubelet=1.12.3-00 -y --allow-downgrades --allow-change-held-packages && \ 
echo 'kubeadm hold' | dpkg --set-selections && \
echo 'kubectl hold' | dpkg --set-selections && \
echo 'kubelet hold' | dpkg --set-selections \
" --ask-sudo-pass --become --become-method=sudo
