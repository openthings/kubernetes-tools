## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

## Push镜像
echo ""
echo "1. tensorflow-1.8.0-notebook-cpu"
docker pull ${MY_REGISTRY}/kubeflow-images-public-tensorflow-1.7.0-notebook-cpu:v20180419-0ad94c4e

echo ""
echo "2. tensorflow-1.8.0-notebook-gpu"
docker pull ${MY_REGISTRY}/kubeflow-images-public-tensorflow-1.7.0-notebook-gpu:v20180419-0ad94c4e

## Tag to original docker iamges name.
docker tag ${MY_REGISTRY}/kubeflow-images-public-tensorflow-1.7.0-notebook-cpu:v20180419-0ad94c4e gcr.io/kubeflow-images-public/tensorflow-1.7.0-notebook-cpu:v20180419-0ad94c4e 

docker tag ${MY_REGISTRY}/kubeflow-images-public-tensorflow-1.7.0-notebook-gpu:v20180419-0ad94c4e gcr.io/kubeflow-images-public/tensorflow-1.8.0-notebook-gpu:v20180619-c79194b3

echo ""
echo "FINISHED."
echo ""



