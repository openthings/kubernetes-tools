echo ""
echo "============================================================"
echo "Get Docker images for Kubeflow......"
echo "============================================================"

docker pull quay.io/datawire/ambassador:0.30.1
docker pull gcr.io/google_containers/spartakus-amd64:v1.0.0
docker pull gcr.io/kubeflow/jupyterhub-k8s:1.0.1 
docker pull gcr.io/kubeflow-images-public/tf_operator:v20180329-a7511ff

echo ""
echo "============================================================"
echo "Please visit https://my.oschina.net/u/2306127/blog/1808582"
echo "============================================================"
echo ""

