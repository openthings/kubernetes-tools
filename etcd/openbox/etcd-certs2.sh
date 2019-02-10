cd ../cfssl

cfssl gencert -initca ca-csr.json | cfssljson -bare ../etcd-certs/ca -
cfssl gencert -ca=../etcd-certs/ca.pem -ca-key=../etcd-certs/ca-key.pem -config=ca-config.json -profile=server server.json | cfssljson -bare ../etcd-certs/server
cfssl gencert -ca=../etcd-certs/ca.pem -ca-key=../etcd-certs/ca-key.pem -config=ca-config.json -profile=client client.json | cfssljson -bare ../etcd-certs/client

cfssl gencert -ca=../etcd-certs/ca.pem -ca-key=../etcd-certs/ca-key.pem -config=ca-config.json -profile=peer peer1.json | cfssljson -bare ../etcd-certs/peer1
cfssl gencert -ca=../etcd-certs/ca.pem -ca-key=../etcd-certs/ca-key.pem -config=ca-config.json -profile=peer peer2.json | cfssljson -bare ../etcd-certs/peer2
cfssl gencert -ca=../etcd-certs/ca.pem -ca-key=../etcd-certs/ca-key.pem -config=ca-config.json -profile=peer peer3.json | cfssljson -bare ../etcd-certs/peer3
cfssl gencert -ca=../etcd-certs/ca.pem -ca-key=../etcd-certs/ca-key.pem -config=ca-config.json -profile=peer peer4.json | cfssljson -bare ../etcd-certs/peer4

