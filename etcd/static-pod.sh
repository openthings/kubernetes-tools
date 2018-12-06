# 在Kubernetes中创建Static Pod.
# 参见 https://kubernetes.io/docs/tasks/administer-cluster/static-pod/

mkdir /etc/kubelet.d/

# kubelet --pod-manifest-path=<the directory>
# /var/lib/kubelet/kubeadm-flags.env
# /etc/default/kubelet
# Add:
# --pod-manifest-path=/etc/kubelet.d/
