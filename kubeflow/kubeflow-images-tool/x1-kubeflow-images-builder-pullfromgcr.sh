MY_REGISTRY=gcr.io/kubeflow-images-public
MY_IMAGE_BOOT=bootstrapper:v0.2.0

echo ""

echo "Pull" ${MY_REGISTRY}/${MY_IMAGE_BOOT}
echo ""
docker pull ${MY_REGISTRY}/${MY_IMAGE_BOOT}

echo ""
