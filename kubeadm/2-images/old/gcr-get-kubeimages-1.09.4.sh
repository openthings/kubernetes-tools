echo "Pulling Images..."

echo "==>kube-apiserver:"
docker pull mirrorgooglecontainers/kube-apiserver-amd64:v1.9.4
docker tag mirrorgooglecontainers/kube-apiserver-amd64:v1.9.4 gcr.io/google_containers/kube-apiserver-amd64:v1.9.4

echo "==>kube-controller-manager:"
docker pull mirrorgooglecontainers/kube-controller-manager-amd64:v1.9.4
docker tag mirrorgooglecontainers/kube-controller-manager-amd64:v1.9.4 gcr.io/google_containers/kube-controller-manager-amd64:v1.9.4

echo "==>kube-scheduler:"
docker pull mirrorgooglecontainers/kube-scheduler-amd64:v1.9.4
docker tag mirrorgooglecontainers/kube-scheduler-amd64:v1.9.4 gcr.io/google_containers/kube-scheduler-amd64:v1.9.4

echo "==>kube-proxy:"
docker pull mirrorgooglecontainers/kube-proxy-amd64:v1.9.4
docker tag mirrorgooglecontainers/kube-proxy-amd64:v1.9.4 gcr.io/google_containers/kube-proxy-amd64:v1.9.4

echo "==>k8s-dns-sidecar:"
docker pull mirrorgooglecontainers/k8s-dns-sidecar-amd64:1.14.8
docker tag mirrorgooglecontainers/k8s-dns-sidecar-amd64:1.14.8 gcr.io/google_containers/k8s-dns-sidecar-amd64:1.14.8

echo "==>k8s-dns-kube-dns:"
docker pull mirrorgooglecontainers/k8s-dns-kube-dns-amd64:1.14.8
docker tag mirrorgooglecontainers/k8s-dns-kube-dns-amd64:1.14.8 gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.14.8

echo "==>k8s-dns-dnsmasq-nanny:"
docker pull mirrorgooglecontainers/k8s-dns-dnsmasq-nanny-amd64:1.14.8
docker tag mirrorgooglecontainers/k8s-dns-dnsmasq-nanny-amd64:1.14.8 gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.14.8

echo "==>etcd:"
docker pull mirrorgooglecontainers/etcd-amd64:3.1.11
docker tag mirrorgooglecontainers/etcd-amd64:3.1.11 gcr.io/google_containers/etcd-amd64:3.1.11

echo "==>pause:"
docker pull mirrorgooglecontainers/pause-amd64:3.0
docker tag mirrorgooglecontainers/pause-amd64:3.0 gcr.io/google_containers/pause-amd64:3.0

echo finished.
echo "More update, please visit: https://hub.docker.com/r/mirrorgooglecontainers"
echo ""
