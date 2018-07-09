echo ""
echo "pull and tag kubeflow images..."
docker pull openthings/kubeflow-images-public-tf_operator:v0.2.0
docker pull openthings/kubeflow-images-public-centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4

docker tag openthings/kubeflow-images-public-tf_operator:v0.2.0 gcr.io/kubeflow-images-public/tf_operator:v0.2.0 
docker tag openthings/kubeflow-images-public-centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4 gcr.io/kubeflow-images-public/centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4 

echo ""
echo "Finished."
echo ""


