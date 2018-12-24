# etcd cluster, make-mirror

echo ""
echo "=============================="
echo "+ etcd cluster, make-mirror..."
echo "------------------------------"
echo ""

echo ETCDCTL_API=3 etcdctl make-mirror \
--endpoints=https://[127.0.0.1]:2379 \
--cacert=/etc/kubernetes/pki/etcd/ca.crt \
--cert=/etc/kubernetes/pki/etcd/healthcheck-client.crt \
--key=/etc/kubernetes/pki/etcd/healthcheck-client.key \
--dest-cacert=/etc/kubernetes/pki/etcd-certs/ca.pem \
--dest-cert=/etc/kubernetes/pki/etcd-certs/client.pem \
--dest-key=/etc/kubernetes/pki/etcd-certs/client-key.pem \
https://[10.1.1.202]:2379

echo ""
