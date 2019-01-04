echo ""
echo "======================================="
echo "+ etcd cluster, member CMD example ... "
echo "---------------------------------------"
echo ""

echo ">> sudo systemctl stop kubelet"
echo ""
ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.201]:2379 member -h
echo ""
echo ">> sudo systemctl start kubelet"
exit 1

# member list, local
#ETCDCTL_API=3 etcdctl --endpoints=https://[127.0.0.1]:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/healthcheck-client.crt --key=/etc/kubernetes/pki/etcd/healthcheck-client.key member list -w table

# member update, local
#ETCDCTL_API=3 etcdctl --endpoints=https://[127.0.0.1]:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/healthcheck-client.crt --key=/etc/kubernetes/pki/etcd/healthcheck-client.key member update 72077d56570df47f --peer-urls=https://10.1.1.201:2380

# member list, cluster
#ETCDCTL_API=3 etcdctl --endpoints=https://[10.1.1.201]:2379 --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem member list


