
echo ""
echo "================================================================="
echo "pull kubeflow images for system from gcr.io and hub.docker.com..."
echo "This tools created by openthings, NO WARANTY. 2018.07.10."
echo "================================================================="

echo ""
echo "1. centraldashboard"
docker pull gcr.io/kubeflow-images-public/centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4

echo ""
echo "2. jupyterhub-k8s"
docker pull gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1

echo ""
echo "3. tf_operator"
docker pull gcr.io/kubeflow-images-public/tf_operator:v0.2.0 

echo ""
echo "4. ambassador"
docker pull quay.io/datawire/ambassador:0.30.1

echo ""
echo "5. redis"
docker pull redis:4.0.1 

echo ""
echo "6. seldonio/cluster-manager"
docker pull seldonio/cluster-manager:0.1.6

echo ""
echo "Finished."
echo ""


