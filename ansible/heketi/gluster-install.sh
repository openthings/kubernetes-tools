ansible all -i hosts_storage -m shell -a "docker load -i /home/supermap/gluster-centos.tar" --ask-sudo-pass --become --become-method=sudo
