ETCDCTL_API=3 etcdctl --endpoints=https://[192.168.199.180]:2379 \
--cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
snapshot save /home/supermap/etcd$(date +%Y%m%d_%H%M%S)_snapshot.db
