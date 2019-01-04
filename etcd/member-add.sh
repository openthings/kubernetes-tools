echo ""
echo "======================================="
echo "+ etcd cluster, add member example ... "
echo "---------------------------------------"
echo ""

echo "sudo systemctl stop kubelet"

echo ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.201]:2379 member add podc02 --peer-urls=https://10.1.1.202:2380 

echo "sudo systemctl start kubelet"
echo ""

exit 1

#podc02
#ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.201]:2379 member add podc02 --peer-urls=https://10.1.1.202:2380 

#podc03
#ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.201]:2379 member add podc03 --peer-urls=https://10.1.1.203:2380 

#podc04
#ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.201]:2379 member add podc04 --peer-urls=https://10.1.1.204:2380 

