## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

docker tag gcr.io/kubeflow-images-public/tensorflow-1.8.0-notebook-cpu:v20180607-476e150e ${MY_REGISTRY}/kubeflow-images-public-tensorflow-1.8.0-notebook-cpu:v20180619-c79194b3

docker tag gcr.io/kubeflow-images-public/tensorflow-1.8.0-notebook-gpu:v20180607-476e150e ${MY_REGISTRY}/kubeflow-images-public/tensorflow-1.8.0-notebook-gpu:v20180619-c79194b3

## Push镜像
echo ""
echo "1. tensorflow-1.8.0-notebook-cpu"
docker push ${MY_REGISTRY}/kubeflow-images-public-tensorflow-1.8.0-notebook-cpu:v20180619-c79194b3

echo ""
echo "2. tensorflow-1.8.0-notebook-gpu"
docker push ${MY_REGISTRY}/kubeflow-images-public-tensorflow-1.8.0-notebook-gpu:v20180619-c79194b3
