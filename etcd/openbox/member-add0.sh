ETCDCTL_API=3 etcdctl \
--cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
--endpoints=https://[192.168.199.180]:2379 \
member add openbox02 --peer-urls=https://192.168.199.249:2380
