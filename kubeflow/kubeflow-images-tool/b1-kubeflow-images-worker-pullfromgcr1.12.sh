MY_REGISTRY=gcr.io/kubeflow-images-public
#MY_IMAGE_CPU=tensorflow-1.12.0-notebook-cpu:v-base-76107ff-897
MY_IMAGE_CPU=tensorflow-1.12.0-notebook-cpu:v0.4.0
#MY_IMAGE_GPU=tensorflow-1.12.0-notebook-gpu:v-base-76107ff-897
MY_IMAGE_GPU=tensorflow-1.12.0-notebook-gpu:v0.4.0

echo ""

echo "Pull" ${MY_REGISTRY}/${MY_IMAGE_CPU}
echo ""
docker pull ${MY_REGISTRY}/${MY_IMAGE_CPU}

echo "Pull" ${MY_REGISTRY}/${MY_IMAGE_GPU}
echo ""
docker pull ${MY_REGISTRY}/${MY_IMAGE_GPU}

echo ""
