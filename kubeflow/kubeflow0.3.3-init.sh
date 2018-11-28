export KUBEFLOW_SRC=/home/supermap/openthings/kubeflow-src
export KFAPP=kubeflow
export KUBEFLOW_DOCKER_REGISTRY=registry.aliyuncs.com

${KUBEFLOW_SRC}/scripts/kfctl.sh init ${KFAPP} --platform none
cd ${KFAPP}
${KUBEFLOW_SRC}/scripts/kfctl.sh generate k8s
${KUBEFLOW_SRC}/scripts/kfctl.sh apply k8s


