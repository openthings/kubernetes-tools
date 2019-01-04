# member list, local

echo ""
echo "========================="
echo "+ etcd cluster status... "

ETCDCTL_API=3 etcdctl \
--cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
--endpoints=https://[10.1.1.201]:2379,https://[10.1.1.202]:2379,https://[10.1.1.203]:2379,https://[10.1.1.204]:2379 \
endpoint status -w table
