# etcd cluster endpoint status

echo ""
echo "================================="
echo "+ etcd cluster endpoint status..."
echo "---------------------------------"
echo ""

echo "endpoint status, local"
echo ETCDCTL_API=3 etcdctl --endpoints=https://[127.0.0.1]:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/healthcheck-client.crt --key=/etc/kubernetes/pki/etcd/healthcheck-client.key endpoint status -w table

echo "endpoint status, 201"
ETCDCTL_API=3 etcdctl --endpoints=https://[10.1.1.201]:2379 --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem endpoint status -w table

echo "endpoint status, 202"
ETCDCTL_API=3 etcdctl --endpoints=https://[10.1.1.202]:2379 --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem endpoint status -w table

echo "endpoint status, 203"
ETCDCTL_API=3 etcdctl --endpoints=https://[10.1.1.203]:2379 --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem endpoint status -w table

echo "endpoint status, 204"
ETCDCTL_API=3 etcdctl --endpoints=https://[10.1.1.204]:2379 --cacert=/etc/kubernetes/pki/etcd-certs/ca.pem --cert=/etc/kubernetes/pki/etcd-certs/client.pem --key=/etc/kubernetes/pki/etcd-certs/client-key.pem endpoint status -w table
