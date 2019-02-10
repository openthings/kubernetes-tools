ETCDCTL_API=3 etcdctl --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
--endpoints=https://[192.168.199.180]:2379 \
member update ec893f3750bc8e76 --ETCD_NAME=openbox00 --peer-urls=https://192.168.199.173:2380
