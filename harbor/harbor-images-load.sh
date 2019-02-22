echo "==================================================================="
echo "Load Harbor for Kubernetes images to tar."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"

echo "###################################################################"
echo "Load images for Harbor:dev (version >= 1.7)"
echo "-------------------------------------------------------------------"
echo ""

images_path=/home/supermap/harbor-k8s-images/
echo ${images_path}
mkdir -p ${images_path}

echo "A1.>> goharbor/harbor-core:dev"
docker load -i ${images_path}A1-goharbor-harbor-core-dev.tar
echo ""

echo "A1-1.>> goharbor/harbor-ui:dev"
docker load -i ${images_path}A1-goharbor-harbor-ui-dev.tar
echo ""

echo "A1-2.>> goharbor/harbor-adminserver:dev"
docker load -i ${images_path}A1-goharbor-harbor-adminserver-dev.tar
echo ""

echo "A2.>> goharbor/harbor-portal:dev"
docker load -i ${images_path}A2-goharbor-harbor-portal-dev.tar
echo ""

echo "A3.>> goharbor/harbor-jobservice:dev"
docker load -i ${images_path}A3-goharbor-harbor-jobservice-dev.tar
echo ""

echo "A4.>> goharbor/clair-photon:dev"
docker load -i ${images_path}A4-goharbor-clair-photon-dev.tar
echo ""

echo "A5.>> goharbor/notary-server-photon:dev"
docker load -i ${images_path}A5-goharbor-notary-server-photon-dev.tar
echo ""

echo "A6.>> goharbor/notary-signer-photon:dev"
docker load -i ${images_path}A6-goharbor-notary-signer-photon-dev.tar
echo ""

echo "A7.>> goharbor/registry-photon:dev"
docker load -i ${images_path}A7-goharbor-registry-photon-dev.tar
echo ""

echo "A7-1.>> goharbor/harbor-registryctl:dev"
docker load -i ${images_path}A7-goharbor-harbor-registryctl-dev.tar
echo ""

echo "A8.>> goharbor/chartmuseum-photon:dev"
docker load -i ${images_path}A8-goharbor-chartmuseum-photon-dev.tar
echo ""

echo "A9.>> goharbor/harbor-db:dev"
docker load -i ${images_path}A9-goharbor-harbor-db-dev.tar
echo ""

echo "A10.>> goharbor/redis-photon:dev"
docker load -i ${images_path}A10-goharbor-redis-photon-dev.tar
echo ""

echo "A10-1.>> docker.io/bitnami/redis:4.0.9"
docker load -i ${images_path}A10-goharbor-bitnami-redis-4.0.9.tar
echo ""

echo "==================================================================="
echo "Load Harbor for kubernetes images Finished."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"
echo "Install visit https://github.com/goharbor/harbor-helm"
echo "==================================================================="
echo ""
echo "Finished."

