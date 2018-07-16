## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings
MY_IMAGE_CPU=tensorflow-1.8.0-notebook-cpu:v20180711-4c0b6a5a
MY_IMAGE_GPU=tensorflow-1.8.0-notebook-gpu:v20180710-bf1c2f0a

## Push镜像

echo ""
echo "1. tensorflow-1.8.0-notebook-cpu"
docker tag gcr.io/kubeflow-images-public/${MY_IMAGE_CPU} ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU}
docker push ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU}

echo ""
echo "2. tensorflow-1.8.0-notebook-gpu"
docker tag gcr.io/kubeflow-images-public/${MY_IMAGE_GPU} ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU}
docker push ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU}

echo ""

