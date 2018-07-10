
echo ""
echo "================================================================="
echo "Push kubeflow images for system to aliyun.com ..."
echo "This tools created by openthings, NO WARANTY. 2018.07.10."
echo "================================================================="

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

echo ""
echo "1. centraldashboard"
docker tag gcr.io/kubeflow-images-public/centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4 ${MY_REGISTRY}/kubeflow-images-public-centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4
docker push ${MY_REGISTRY}/kubeflow-images-public-centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4

echo ""
echo "2. jupyterhub-k8s"
docker tag gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1 ${MY_REGISTRY}/kubeflow-jupyterhub-k8s:v20180531-3bb991b1
docker push ${MY_REGISTRY}/kubeflow-jupyterhub-k8s:v20180531-3bb991b1

echo ""
echo "3. tf_operator"
docker tag gcr.io/kubeflow-images-public/tf_operator:v0.2.0 ${MY_REGISTRY}/kubeflow-images-public-tf_operator:v0.2.0
docker push ${MY_REGISTRY}/kubeflow-images-public-tf_operator:v0.2.0

echo ""
echo "4. ambassador"
docker tag quay.io/datawire/ambassador:0.30.1 ${MY_REGISTRY}/quay-io-datawire-ambassador:0.30.1
docker push ${MY_REGISTRY}/quay-io-datawire-ambassador:0.30.1

echo ""
echo "5. redis"
docker tag redis:4.0.1 ${MY_REGISTRY}/redis:4.0.1
docker push ${MY_REGISTRY}/redis:4.0.1

echo ""
echo "6. seldonio/cluster-manager"
docker tag seldonio/cluster-manager:0.1.6 ${MY_REGISTRY}/seldonio-cluster-manager:0.1.6
docker push ${MY_REGISTRY}/seldonio-cluster-manager:0.1.6

echo ""
echo "Finished."
echo ""

