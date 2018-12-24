# etcd cluster member list

echo ""
echo "============================="
echo "+ etcd cluster member list..."

ETCDCTL_API=3 etcdctl \
--cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
member list -w table --endpoints=https://[10.1.1.201]:2379
