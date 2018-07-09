
NAMESPACE=kubeflow020
API_SPEC=v1.11.0
APP_NAME=kubeflow020
KF_VERSION=v0.2.0

kubectl create namespace ${NAMESPACE}
ks init ${APP_NAME} --api-spec=version:${API_SPEC} --namespace=${NAMESPACE}

cd ${APP_NAME}
ks registry add kubeflow github.com/kubeflow/kubeflow/tree/${KF_VERSION}/kubeflow

ks pkg install kubeflow/core@${KF_VERSION}
ks pkg install kubeflow/tf-serving@${KF_VERSION}

ks generate kubeflow-core kubeflow-core

