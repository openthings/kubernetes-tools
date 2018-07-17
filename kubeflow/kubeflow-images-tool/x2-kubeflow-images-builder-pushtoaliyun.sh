## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

MY_IMAGE_BOOT=bootstrapper:v0.2.0
MY_IMAGE_BOOT_URL=${MY_REGISTRY}/${MY_IMAGE_BOOT}

## Push镜像

echo ""
echo "1. bootstrapper"
docker tag gcr.io/kubeflow-images-public/${MY_IMAGE_BOOT} ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_BOOT}
docker push ${MY_REGISTRY}/kubeflow-images-public-${MY_IMAGE_BOOT}

echo ""

