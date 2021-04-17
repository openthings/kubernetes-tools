IMAGES_PATH=~/openthings/kubeflow/kfimgs1.2
mkdir $IMAGES_PATH

#######deployent ########################
docker pull gcr.io/kubeflow-images-public/admission-webhook:vmaster-ge5452b6f
docker save gcr.io/kubeflow-images-public/admission-webhook:vmaster-ge5452b6f -o $IMAGES_PATH/admission-webhook.tar

docker pull argoproj/argoui:v2.3.0 
docker save argoproj/argoui:v2.3.0 -o $IMAGES_PATH/argoui.tar

docker pull gcr.io/ml-pipeline/cache-deployer:1.0.4
docker save gcr.io/ml-pipeline/cache-deployer:1.0.4 -o $IMAGES_PATH/cache-deployer.tar

docker pull gcr.io/ml-pipeline/cache-server:1.0.4
docker save gcr.io/ml-pipeline/cache-server:1.0.4 -o $IMAGES_PATH/cache-server.tar

docker pull gcr.io/kubeflow-images-public/centraldashboard:vmaster-g8097cfeb
docker save gcr.io/kubeflow-images-public/centraldashboard:vmaster-g8097cfeb -o $IMAGES_PATH/centraldashboard.tar

docker pull gcr.io/kubeflow-images-public/jupyter-web-app:vmaster-g845af298
docker save gcr.io/kubeflow-images-public/jupyter-web-app:vmaster-g845af298 -o $IMAGES_PATH/jupyter-web-app.tar

docker pull docker.io/kubeflowkatib/katib-controller:v1beta1-a96ff59
docker save docker.io/kubeflowkatib/katib-controller:v1beta1-a96ff59 -o $IMAGES_PATH/katib-controller.tar

docker pull docker.io/kubeflowkatib/katib-db-manager:v1beta1-a96ff59
docker save docker.io/kubeflowkatib/katib-db-manager:v1beta1-a96ff59 -o $IMAGES_PATH/katib-db-manager.tar

docker pull mysql:8
docker save mysql:8 -o $IMAGES_PATH/mysql8.tar

docker pull docker.io/kubeflowkatib/katib-ui:v1beta1-a96ff59
docker save docker.io/kubeflowkatib/katib-ui:v1beta1-a96ff59 -o $IMAGES_PATH/katib-ui.tar

docker pull python:3.7
docker save python:3.7 -o $IMAGES_PATH/python3.7.tar

docker pull mysql:8.0.3
docker save mysql:8.0.3 -o $IMAGES_PATH/mysql8.0.3.tar

docker pull gcr.io/ml-pipeline/envoy:metadata-grpc
docker save gcr.io/ml-pipeline/envoy:metadata-grpc -o $IMAGES_PATH/envoy.tar

docker pull gcr.io/tfx-oss-public/ml_metadata_store_server:v0.21.1
docker save gcr.io/tfx-oss-public/ml_metadata_store_server:v0.21.1 -o $IMAGES_PATH/ml_metadata_store_server.tar

docker pull gcr.io/ml-pipeline/metadata-writer:1.0.4
docker save gcr.io/ml-pipeline/metadata-writer:1.0.4 -o $IMAGES_PATH/metadata-writer.tar

docker pull gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance
docker save gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance -o $IMAGES_PATH/minio.tar

docker pull gcr.io/ml-pipeline/api-server:1.0.4
docker save gcr.io/ml-pipeline/api-server:1.0.4 -o $IMAGES_PATH/api-server.tar

docker pull gcr.io/ml-pipeline/persistenceagent:1.0.4
docker save gcr.io/ml-pipeline/persistenceagent:1.0.4 -o $IMAGES_PATH/persistenceagent.tar

docker pull gcr.io/ml-pipeline/scheduledworkflow:1.0.4
docker save gcr.io/ml-pipeline/scheduledworkflow:1.0.4 -o $IMAGES_PATH/scheduledworkflow.tar

docker pull gcr.io/ml-pipeline/frontend:1.0.4
docker save gcr.io/ml-pipeline/frontend:1.0.4 -o $IMAGES_PATH/frontend.tar

docker pull gcr.io/ml-pipeline/viewer-crd-controller:1.0.4
docker save gcr.io/ml-pipeline/viewer-crd-controller:1.0.4 -o $IMAGES_PATH/viewer-crd-controller.tar

docker pull gcr.io/ml-pipeline/visualization-server:1.0.4
docker save gcr.io/ml-pipeline/visualization-server:1.0.4 -o $IMAGES_PATH/visualization-server.tar

docker pull mpioperator/mpi-operator:latest
docker save mpioperator/mpi-operator:latest -o $IMAGES_PATH/mpi-operator.tar

docker pull kubeflow/mxnet-operator:v1.0.0-20200625
docker save kubeflow/mxnet-operator:v1.0.0-20200625 -o $IMAGES_PATH/mxnet-operator.tar

docker pull gcr.io/ml-pipeline/mysql:5.6
docker save gcr.io/ml-pipeline/mysql:5.6 -o $IMAGES_PATH/mysql5.6.tar

docker pull gcr.io/kubeflow-images-public/notebook-controller:vmaster-g6eb007d0
docker save gcr.io/kubeflow-images-public/notebook-controller:vmaster-g6eb007d0 -o $IMAGES_PATH/notebook-controller.tar

docker pull gcr.io/kubeflow-images-public/profile-controller:vmaster-ga49f658f
docker save gcr.io/kubeflow-images-public/profile-controller:vmaster-ga49f658f -o $IMAGES_PATH/profile-controller.tar

docker pull gcr.io/kubeflow-images-public/pytorch-operator:vmaster-g518f9c76
docker save gcr.io/kubeflow-images-public/pytorch-operator:vmaster-g518f9c76 -o $IMAGES_PATH/pytorch-operator.tar

docker pull docker.io/seldonio/seldon-core-operator:1.4.0
docker save docker.io/seldonio/seldon-core-operator:1.4.0 -o $IMAGES_PATH/seldon-core-operator.tar

docker pull gcr.io/spark-operator/spark-operator:v1beta2-1.1.0-2.4.5
docker save gcr.io/spark-operator/spark-operator:v1beta2-1.1.0-2.4.5 -o $IMAGES_PATH/spark-operator.tar

docker pull gcr.io/google_containers/spartakus-amd64:v1.1.0
docker save gcr.io/google_containers/spartakus-amd64:v1.1.0 -o $IMAGES_PATH/spartakus-amd64.tar

docker pull gcr.io/kubeflow-images-public/tf_operator:vmaster-gda226016
docker save gcr.io/kubeflow-images-public/tf_operator:vmaster-gda226016 -o $IMAGES_PATH/tf_operator.tar

docker pull argoproj/workflow-controller:v2.3.0
docker save argoproj/workflow-controller:v2.3.0 -o $IMAGES_PATH/workflow-controller.tar

#statefulset 
docker pull gcr.io/kubeflow-images-public/ingress-setup:latest
docker save gcr.io/kubeflow-images-public/ingress-setup:latest -o $IMAGES_PATH/ingress-setup.tar

docker pull gcr.io/kubeflow-images-public/kubernetes-sigs/application:1.0-beta
docker save gcr.io/kubeflow-images-public/kubernetes-sigs/application:1.0-beta -o $IMAGES_PATH/application.tar
df -h

docker pull gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0
docker save gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0 -o $IMAGES_PATH/kube-rbac-proxy.tar

docker pull metacontroller/metacontroller:v0.3.0
docker save metacontroller/metacontroller:v0.3.0 -o $IMAGES_PATH/metacontroller.tar