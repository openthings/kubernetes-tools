ansible all -f 8 -i hosts_ansible -m shell -a "apt-get update && apt-get upgrade -y" --ask-sudo-pass --become --become-method=sudo
