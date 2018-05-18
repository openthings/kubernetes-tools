echo ""
echo "=========================================================="
echo "Kubeflow Application setting..."
echo "Please visit https://my.oschina.net/u/2306127/blog/1808582"
echo "=========================================================="
echo ""

ks generate core kubeflow-core --name=kubeflow-core

# Enable collection of anonymous usage metrics
# Skip this step if you don't want to enable collection.
# Or set reportUsage to false (the default).
ks param set kubeflow-core reportUsage true
ks param set kubeflow-core usageId $(uuidgen)

KF_ENV=nocloud
ks env add nocloud

ks param set kubeflow-core jupyterNotebookPVCMount /home/jovyan/work


NAMESPACE=kubeflow
kubectl create namespace ${NAMESPACE}
ks env set ${KF_ENV} --namespace ${NAMESPACE}


ks apply ${KF_ENV} -c kubeflow-core

ks show ${KF_ENV} -c kubeflow-core


