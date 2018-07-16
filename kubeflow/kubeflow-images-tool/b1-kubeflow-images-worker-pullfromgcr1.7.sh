MY_REGISTRY=gcr.io/kubeflow-images-public
MY_IMAGE_CPU=tensorflow-1.7.0-notebook-cpu:v20180711-4c0b6a5a
MY_IMAGE_GPU=tensorflow-1.7.0-notebook-gpu:v20180710-bf1c2f0a


echo ""

echo "Pull" ${MY_REGISTRY}/${MY_IMAGE_CPU}
echo ""
docker pull ${MY_REGISTRY}/${MY_IMAGE_CPU}

echo "Pull" ${MY_REGISTRY}/${MY_IMAGE_GPU}
echo ""
docker pull ${MY_REGISTRY}/${MY_IMAGE_GPU}

echo ""
