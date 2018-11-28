## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings
MY_IMAGE_CPU=tensorflow-1.12.0-notebook-cpu:v-base-76107ff-897
MY_IMAGE_GPU=tensorflow-1.12.0-notebook-gpu:v-base-76107ff-897

## Push镜像

echo ""
echo "1. tensorflow-1.12.0-notebook-cpu"
docker tag gcr.io/kubeflow-images-public/${MY_IMAGE_CPU} ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU}
docker push ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU}

echo ""
echo "2. tensorflow-1.12.0-notebook-gpu"
docker tag gcr.io/kubeflow-images-public/${MY_IMAGE_GPU} ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU}
docker push ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU}

echo ""

