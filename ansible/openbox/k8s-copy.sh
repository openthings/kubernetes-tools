ansible all -i hosts_ansible -m copy -a "src=~/k8s-images-1.13.4.zip dest=/home/supermap/k8s-images-1.13.4.zip" --ask-sudo-pass --become --become-method=sudo
