ansible all -f 8 -i hosts_ansible -m shell -a "docker tag k8s.gcr.io/pause:3.1 gcr.io/google_containers/pause:3.0" 
