MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings/kfimgs1.2-

#######deployent ########################
docker tag gcr.io/kubeflow-images-public/admission-webhook:vmaster-ge5452b6f ${MY_REGISTRY}admission-webhook
docker push ${MY_REGISTRY}admission-webhook

docker tag argoproj/argoui:v2.3.0 ${MY_REGISTRY}argoui
docker push ${MY_REGISTRY}argoui 

docker tag gcr.io/ml-pipeline/cache-deployer:1.0.4 ${MY_REGISTRY}cache-deployer
docker push ${MY_REGISTRY}cache-deployer

docker tag gcr.io/ml-pipeline/cache-server:1.0.4 ${MY_REGISTRY}cache-server
docker push ${MY_REGISTRY}cache-server

docker tag gcr.io/kubeflow-images-public/centraldashboard:vmaster-g8097cfeb ${MY_REGISTRY}centraldashboard
docker push ${MY_REGISTRY}centraldashboard

docker tag gcr.io/kubeflow-images-public/jupyter-web-app:vmaster-g845af298 ${MY_REGISTRY}jupyter-web-app
docker push ${MY_REGISTRY}jupyter-web-app

docker tag docker.io/kubeflowkatib/katib-controller:v1beta1-a96ff59 ${MY_REGISTRY}katib-controller
docker push ${MY_REGISTRY}katib-controller

docker tag docker.io/kubeflowkatib/katib-db-manager:v1beta1-a96ff59 ${MY_REGISTRY}katib-db-manager
docker push ${MY_REGISTRY}katib-db-manager

docker tag mysql:8 ${MY_REGISTRY}mysql8
docker push ${MY_REGISTRY}mysql8

docker tag docker.io/kubeflowkatib/katib-ui:v1beta1-a96ff59 ${MY_REGISTRY}katib-ui
docker push ${MY_REGISTRY}katib-ui

docker tag python:3.7 ${MY_REGISTRY}python3.7
docker push ${MY_REGISTRY}python3.7

docker tag mysql:8.0.3 ${MY_REGISTRY}mysql8.0.3
docker push ${MY_REGISTRY}mysql8.0.3

docker tag gcr.io/ml-pipeline/envoy:metadata-grpc ${MY_REGISTRY}envoy
docker push ${MY_REGISTRY}envoy

docker tag gcr.io/tfx-oss-public/ml_metadata_store_server:v0.21.1 ${MY_REGISTRY}ml_metadata_store_server
docker push ${MY_REGISTRY}ml_metadata_store_server

docker tag gcr.io/ml-pipeline/metadata-writer:1.0.4 ${MY_REGISTRY}metadata-writer
docker push ${MY_REGISTRY}metadata-writer

docker tag gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance ${MY_REGISTRY}minio
docker push ${MY_REGISTRY}minio

docker tag gcr.io/ml-pipeline/api-server:1.0.4 ${MY_REGISTRY}api-server
docker push ${MY_REGISTRY}api-server

docker tag gcr.io/ml-pipeline/persistenceagent:1.0.4 ${MY_REGISTRY}persistenceagent
docker push ${MY_REGISTRY}persistenceagent

docker tag gcr.io/ml-pipeline/scheduledworkflow:1.0.4 ${MY_REGISTRY}scheduledworkflow
docker push ${MY_REGISTRY}scheduledworkflow

docker tag gcr.io/ml-pipeline/frontend:1.0.4 ${MY_REGISTRY}frontend
docker push ${MY_REGISTRY}frontend

docker tag gcr.io/ml-pipeline/viewer-crd-controller:1.0.4 ${MY_REGISTRY}viewer-crd-controller
docker push ${MY_REGISTRY}viewer-crd-controller

docker tag gcr.io/ml-pipeline/visualization-server:1.0.4 ${MY_REGISTRY}visualization-server
docker push ${MY_REGISTRY}visualization-server

docker tag mpioperator/mpi-operator:latest ${MY_REGISTRY}mpi-operator
docker push ${MY_REGISTRY}mpi-operator

docker tag kubeflow/mxnet-operator:v1.0.0-20200625 ${MY_REGISTRY}mxnet-operator
docker push ${MY_REGISTRY}mxnet-operator

docker tag gcr.io/ml-pipeline/mysql:5.6 ${MY_REGISTRY}mysql5.6
docker push ${MY_REGISTRY}mysql5.6

docker tag gcr.io/kubeflow-images-public/notebook-controller:vmaster-g6eb007d0 ${MY_REGISTRY}notebook-controller
docker push ${MY_REGISTRY}notebook-controller

docker tag gcr.io/kubeflow-images-public/profile-controller:vmaster-ga49f658f ${MY_REGISTRY}profile-controller
docker push ${MY_REGISTRY}profile-controller

docker tag gcr.io/kubeflow-images-public/pytorch-operator:vmaster-g518f9c76 ${MY_REGISTRY}pytorch-operator
docker push ${MY_REGISTRY}pytorch-operator

docker tag docker.io/seldonio/seldon-core-operator:1.4.0 ${MY_REGISTRY}seldon-core-operator
docker push ${MY_REGISTRY}seldon-core-operator

docker tag gcr.io/spark-operator/spark-operator:v1beta2-1.1.0-2.4.5 ${MY_REGISTRY}spark-operator
docker push ${MY_REGISTRY}spark-operator

docker tag gcr.io/google_containers/spartakus-amd64:v1.1.0 ${MY_REGISTRY}spartakus-amd64
docker push ${MY_REGISTRY}spartakus-amd64

docker tag gcr.io/kubeflow-images-public/tf_operator:vmaster-gda226016 ${MY_REGISTRY}tf_operator
docker push ${MY_REGISTRY}tf_operator

docker tag argoproj/workflow-controller:v2.3.0 ${MY_REGISTRY}workflow-controller
docker push ${MY_REGISTRY}workflow-controller

#statefulset 
docker tag gcr.io/kubeflow-images-public/ingress-setup:latest ${MY_REGISTRY}ingress-setup
docker push ${MY_REGISTRY}ingress-setup

docker tag gcr.io/kubeflow-images-public/kubernetes-sigs/application:1.0-beta ${MY_REGISTRY}application
docker push ${MY_REGISTRY}application

docker tag gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0 ${MY_REGISTRY}kube-rbac-proxy
docker push ${MY_REGISTRY}kube-rbac-proxy

docker tag metacontroller/metacontroller:v0.3.0 ${MY_REGISTRY}metacontroller
docker push ${MY_REGISTRY}metacontroller