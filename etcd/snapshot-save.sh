# etcd cluster snapshot save

echo ""
echo "============================="
echo "+ etcd cluster snapshot save..."
echo "-----------------------------"
echo ""

echo ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.199]:2379 snapshot save /home/supermap/openthings/etcd_snapshot.db

echo ""
