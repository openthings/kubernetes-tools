ansible all -i hosts_ansible -m shell -a "unzip -u /home/supermap/kf-images-0.3.3.zip && cd /home/supermap/kf-images-0.3.3 && ./kf-images-load.sh" --ask-sudo-pass --become --become-method=sudo
