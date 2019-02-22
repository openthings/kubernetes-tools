ansible all -f 3 -i hosts_ansible -m shell -a "systemctl restart docker" -K --become --become-method=sudo
