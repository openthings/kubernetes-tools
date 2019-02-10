ETCDCTL_API=3 etcdctl --endpoints=https://[192.168.199.180]:2379 \
--cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
--data-dir=/var/lib/etcdx \
--initial-advertise-peer-urls=https://192.168.199.180:2380 \
--initial-cluster=podc01=https://192.168.199.180:2380 \
--initial-cluster-token=etcd-cluster \
--name=openbox01 \
snapshot restore /home/supermap/etcd_snapshot.db
