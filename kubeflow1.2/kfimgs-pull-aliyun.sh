MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings/kfimgs1.2-

#######deployent ########################
docker pull ${MY_REGISTRY}admission-webhook
docker tag ${MY_REGISTRY}admission-webhook gcr.io/kubeflow-images-public/admission-webhook:vmaster-ge5452b6f 

docker pull ${MY_REGISTRY}argoui 
docker tag ${MY_REGISTRY}argoui argoproj/argoui:v2.3.0

docker pull ${MY_REGISTRY}cache-deployer
docker tag ${MY_REGISTRY}cache-deployer gcr.io/ml-pipeline/cache-deployer:1.0.4

docker pull ${MY_REGISTRY}cache-server
docker tag ${MY_REGISTRY}cache-server gcr.io/ml-pipeline/cache-server:1.0.4

docker pull ${MY_REGISTRY}centraldashboard
docker tag ${MY_REGISTRY}centraldashboard gcr.io/kubeflow-images-public/centraldashboard:vmaster-g8097cfeb

docker pull ${MY_REGISTRY}jupyter-web-app
docker tag ${MY_REGISTRY}jupyter-web-app gcr.io/kubeflow-images-public/jupyter-web-app:vmaster-g845af298

###======
docker pull ${MY_REGISTRY}katib-controller
docker tag ${MY_REGISTRY}katib-controller docker.io/kubeflowkatib/katib-controller:v1beta1-a96ff59

docker pull ${MY_REGISTRY}katib-db-manager
docker tag ${MY_REGISTRY}katib-db-manager docker.io/kubeflowkatib/katib-db-manager:v1beta1-a96ff59

docker pull ${MY_REGISTRY}mysql8
docker tag ${MY_REGISTRY}mysql8 mysql:8

docker pull ${MY_REGISTRY}katib-ui
docker tag ${MY_REGISTRY}katib-ui docker.io/kubeflowkatib/katib-ui:v1beta1-a96ff59

docker pull ${MY_REGISTRY}python3.7
docker tag ${MY_REGISTRY}python3.7 python:3.7

docker pull ${MY_REGISTRY}mysql8.0.3
docker tag ${MY_REGISTRY}mysql8.0.3 mysql:8.0.3

docker pull ${MY_REGISTRY}envoy
docker tag ${MY_REGISTRY}envoy gcr.io/ml-pipeline/envoy:metadata-grpc

###
docker pull ${MY_REGISTRY}ml_metadata_store_server
docker tag ${MY_REGISTRY}ml_metadata_store_server gcr.io/tfx-oss-public/ml_metadata_store_server:v0.21.1 

docker pull ${MY_REGISTRY}metadata-writer
docker tag ${MY_REGISTRY}metadata-writer gcr.io/ml-pipeline/metadata-writer:1.0.4

docker pull ${MY_REGISTRY}minio
docker tag ${MY_REGISTRY}minio gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance

docker pull ${MY_REGISTRY}api-server
docker tag ${MY_REGISTRY}api-server gcr.io/ml-pipeline/api-server:1.0.4

docker pull ${MY_REGISTRY}persistenceagent
docker tag ${MY_REGISTRY}persistenceagent gcr.io/ml-pipeline/persistenceagent:1.0.4
##
docker pull ${MY_REGISTRY}scheduledworkflow
docker tag ${MY_REGISTRY}scheduledworkflow gcr.io/ml-pipeline/scheduledworkflow:1.0.4

docker pull ${MY_REGISTRY}frontend
docker tag ${MY_REGISTRY}frontend gcr.io/ml-pipeline/frontend:1.0.4

docker pull ${MY_REGISTRY}viewer-crd-controller
docker tag ${MY_REGISTRY}viewer-crd-controller gcr.io/ml-pipeline/viewer-crd-controller:1.0.4

docker pull ${MY_REGISTRY}visualization-server
docker tag ${MY_REGISTRY}visualization-server gcr.io/ml-pipeline/visualization-server:1.0.4

docker pull ${MY_REGISTRY}mpi-operator
docker tag ${MY_REGISTRY}mpi-operator mpioperator/mpi-operator:latest

docker pull ${MY_REGISTRY}mxnet-operator
docker tag ${MY_REGISTRY}mxnet-operator kubeflow/mxnet-operator:v1.0.0-20200625

docker pull ${MY_REGISTRY}mysql5.6
docker tag ${MY_REGISTRY}mysql5.6 gcr.io/ml-pipeline/mysql:5.6

##
docker pull ${MY_REGISTRY}notebook-controller
docker tag ${MY_REGISTRY}notebook-controller gcr.io/kubeflow-images-public/notebook-controller:vmaster-g6eb007d0

docker pull ${MY_REGISTRY}profile-controller
docker tag ${MY_REGISTRY}profile-controller gcr.io/kubeflow-images-public/profile-controller:vmaster-ga49f658f

docker pull ${MY_REGISTRY}pytorch-operator
docker tag ${MY_REGISTRY}pytorch-operator gcr.io/kubeflow-images-public/pytorch-operator:vmaster-g518f9c76

docker pull ${MY_REGISTRY}seldon-core-operator
docker tag ${MY_REGISTRY}seldon-core-operator docker.io/seldonio/seldon-core-operator:1.4.0

docker pull ${MY_REGISTRY}spark-operator
docker tag ${MY_REGISTRY}spark-operator gcr.io/spark-operator/spark-operator:v1beta2-1.1.0-2.4.5

docker pull ${MY_REGISTRY}spartakus-amd64
docker tag ${MY_REGISTRY}spartakus-amd64 gcr.io/google_containers/spartakus-amd64:v1.1.0

docker pull ${MY_REGISTRY}tf_operator
docker tag ${MY_REGISTRY}tf_operator gcr.io/kubeflow-images-public/tf_operator:vmaster-gda226016

docker pull ${MY_REGISTRY}workflow-controller
docker tag ${MY_REGISTRY}workflow-controller argoproj/workflow-controller:v2.3.0

#statefulset 
docker pull ${MY_REGISTRY}ingress-setup
docker tag ${MY_REGISTRY}ingress-setup gcr.io/kubeflow-images-public/ingress-setup:latest

docker pull ${MY_REGISTRY}application
docker tag ${MY_REGISTRY}application gcr.io/kubeflow-images-public/kubernetes-sigs/application:1.0-beta

docker pull ${MY_REGISTRY}kube-rbac-proxy
docker tag ${MY_REGISTRY}kube-rbac-proxy gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0

docker pull ${MY_REGISTRY}metacontroller
docker tag ${MY_REGISTRY}metacontroller metacontroller/metacontroller:v0.3.0