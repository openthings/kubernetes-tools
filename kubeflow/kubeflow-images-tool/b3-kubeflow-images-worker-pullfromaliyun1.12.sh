## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings
MY_IMAGE_CPU=tensorflow-1.12.0-notebook-cpu:v-base-76107ff-897
MY_IMAGE_GPU=tensorflow-1.12.0-notebook-gpu:v-base-76107ff-897

## Push镜像
## Tag to original docker iamges name.

echo ""
echo "1. tensorflow-1.12.0-notebook-cpu"
echo "PULL: ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU}"
docker pull ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU}
docker tag ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_CPU} gcr.io/kubeflow-images-public/${MY_IMAGE_CPU} 

echo ""
echo "2. tensorflow-1.12.0-notebook-gpu"
echo "PULL: ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU}"
docker pull ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU}
docker tag ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_GPU} gcr.io/kubeflow-images-public/${MY_IMAGE_GPU}

echo ""
echo "FINISHED."
echo ""




