# etcd cluster snapshot restore

echo ""
echo "==================================="
echo "+ etcd cluster  snapshot restore..."
echo "-----------------------------------"
echo ""

echo ETCDCTL_API=3 etcdctl --endpoints=https://[10.1.1.200]:2379 \
--cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
--data-dir=/var/lib/etcd \
--initial-advertise-peer-urls=https://10.1.1.200:2380 \
--initial-cluster=podc01=https://10.1.1.200:2380,podc02=https://10.1.1.202:2380,podc03=https://10.1.1.203:2380 \
--initial-cluster-token=etcd-cluster \
--name=podc01 \
snapshot restore /home/supermap/etcd20181217_154643_snapshot.db

# ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --data-dir=/var/lib/etcd --endpoints=https://[10.1.1.199]:2379 --initial-advertise-peer-urls=https://10.1.1.199:2380 --initial-cluster=podc01=https://10.1.1.199:2380 --initial-cluster-token=etcd-cluster --name=podc01 snapshot restore /home/supermap/etcd_snapshot.db

