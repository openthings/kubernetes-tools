ansible all -f 3 -i hosts_ansible -m shell -a "apt update && apt upgrade -y" -K --become --become-method=sudo
