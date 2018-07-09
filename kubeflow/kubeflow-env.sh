echo ""
echo "=========================================================="
echo "Kubeflow Application setting..."
echo "Please visit https://my.oschina.net/u/2306127/blog/1808582"
echo "=========================================================="
echo ""

NAMESPACE=kubeflow
kubectl create namespace ${NAMESPACE}

KF_ENV=nocloud
ks env add nocloud
ks env set ${KF_ENV} --namespace ${NAMESPACE}

ks param set kubeflow-core reportUsage true
ks param set kubeflow-core usageId $(uuidgen)
ks param set kubeflow-core jupyterNotebookPVCMount /home/jovyan/work

ks generate core kubeflow-core --name=kubeflow-core

ks apply ${KF_ENV} -c kubeflow-core
ks show ${KF_ENV} -c kubeflow-core


