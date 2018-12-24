#ETCDCTL_API=3 etcdctl --endpoints=https://[10.1.1.202]:2379 \
#--cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
#--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
#--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
#snapshot save /home/supermap/openthings/etcd$(date +%Y%m%d_%H%M%S)_snapshot.db

echo ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.199]:2379 snapshot save /home/supermap/openthings/etcd_snapshot.db

echo ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --data-dir=/var/lib/etcd --endpoints=https://[10.1.1.199]:2379 --initial-advertise-peer-urls=https://10.1.1.199:2380 --initial-cluster=podc01=https://10.1.1.199:2380 --initial-cluster-token=etcd-cluster --name=podc01 snapshot restore /home/supermap/etcd_snapshot.db

#===========
echo ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem --endpoints=https://[10.1.1.201]:2379 snapshot save /home/supermap/openthings/etcd_snapshot.db
