#cd ./cfssl

echo "Generate etcd-certs for openbox0/1/2 cluster..."

echo ""
echo "For CA,Server,Client..."
cfssl gencert -initca ca-csr.json | cfssljson -bare ./etcd-certs/ca -
cfssl gencert -ca=./etcd-certs/ca.pem -ca-key=./etcd-certs/ca-key.pem -config=ca-config.json -profile=server server.json | cfssljson -bare ./etcd-certs/server
cfssl gencert -ca=../etcd-certs/ca.pem -ca-key=./etcd-certs/ca-key.pem -config=ca-config.json -profile=client client.json | cfssljson -bare ./etcd-certs/client

echo "For Peer 0/1/2..."
cfssl gencert -ca=./etcd-certs/ca.pem -ca-key=./etcd-certs/ca-key.pem -config=ca-config.json -profile=peer peer0.json | cfssljson -bare ./etcd-certs/peer0
cfssl gencert -ca=./etcd-certs/ca.pem -ca-key=./etcd-certs/ca-key.pem -config=ca-config.json -profile=peer peer1.json | cfssljson -bare ./etcd-certs/peer1
cfssl gencert -ca=./etcd-certs/ca.pem -ca-key=./etcd-certs/ca-key.pem -config=ca-config.json -profile=peer peer2.json | cfssljson -bare ./etcd-certs/peer2

echo "Finished."
echo ""
