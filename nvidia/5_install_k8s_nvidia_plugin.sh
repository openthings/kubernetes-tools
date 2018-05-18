
echo ""
echo "=========================================================="
echo "Installing k8s nvidia-device-plugin..."
echo "by openthings, 2018.05.18."
echo "=========================================================="
echo ""

echo "cp  docker_daemon.json /etc/docker/daemon.json"
sudo cp  docker_daemon.json /etc/docker/daemon.json
echo ""

echo "	如果你的 Kubernetes cluster是通过kubeadm部署的，并且节点运行systemd， \
      	需要打开kubeadm 的systemd unit文件，位于 /etc/systemd/system/kubelet.service.d/10-kubeadm.conf \
      	然后添加下面的参数作为环境变量： \
	Environment=\"KUBELET_GPU_ARGS=--feature-gates=DevicePlugins=true\" \
      	and at line: \
	ExecStart=  append $KUBELET_GPU_ARGS \
	重新载入配置文件，然后重新启动服务： \
	sudo systemctl daemon-reload \
	sudo systemctl restart kubelet
     "
echo ""

echo "	Install  nvidia-device-plugin for Kubernetes,as below: \
	kubectl create -f https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/v1.10/nvidia-device-plugin.yml \
     "
echo ""

echo ""
echo "=========================================================="
echo "Install k8s nvidia-device-plugin finished."
echo "Please visit https://my.oschina.net/u/2306127/blog/1808304"
echo "=========================================================="
echo ""

