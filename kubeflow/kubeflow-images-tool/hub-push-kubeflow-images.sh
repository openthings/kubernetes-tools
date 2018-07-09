docker tag gcr.io/kubeflow-images-public/tf_operator:v0.2.0 openthings/kubeflow-images-public-tf_operator:v0.2.0
docker tag gcr.io/kubeflow-images-public/centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4 openthings/kubeflow-images-public-centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4

docker push openthings/kubeflow-images-public-tf_operator:v0.2.0
docker push openthings/kubeflow-images-public-centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4

