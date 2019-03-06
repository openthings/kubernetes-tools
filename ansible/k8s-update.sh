ansible all -i hosts_ansible -m shell -a "unzip -u -o /home/supermap/k8s-images-1.13.4.zip && cd /home/supermap/k8s-images-1.13.4 && ./k8s-images-load.sh" \
--ask-sudo-pass --become --become-method=sudo
