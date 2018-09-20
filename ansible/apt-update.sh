ansible all -m shell -a "apt update && apt upgrade -y" --ask-sudo-pass --become --become-method=sudo
