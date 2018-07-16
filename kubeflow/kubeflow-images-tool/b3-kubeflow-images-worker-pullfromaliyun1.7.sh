## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings
MY_IMAGE_CPU=tensorflow-1.7.0-notebook-cpu:v20180711-4c0b6a5a
MY_IMAGE_GPU=tensorflow-1.7.0-notebook-gpu:v20180710-bf1c2f0a

## Push镜像
## Tag to original docker iamges name.

echo ""
echo "1. tensorflow-1.7.0-notebook-cpu"
docker pull ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU}
docker tag ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU} gcr.io/kubeflow-images-public/${MY_IMAGE_CPU} 

echo ""
echo "2. tensorflow-1.7.0-notebook-gpu"
docker pull ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU}
docker tag ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU} gcr.io/kubeflow-images-public/${MY_IMAGE_GPU}

echo ""
echo "FINISHED."
echo ""



