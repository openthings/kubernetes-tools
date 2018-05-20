echo ""
echo "=========================================================================="
echo "Install guide in details, https://my.oschina.net/u/2306127/blog/1619818"
echo "To get helm, curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh"
echo "This tools made by https://github.com/openthings/kubernetes-tools"

echo "Prefetch helm docker image v2.8.1."
# docker pull gcr.io/kubernetes-helm/tiller:v2.8.1
docker pull gcr.io/kubernetes-helm/tiller:v2.9.1

echo "Create helm RBAC,tiller on namespace kube-system."
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

echo "Patch deployment..."
# for 2.8.1, kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'      
# for 2.9.1
kubectl -n kube-system patch deployment tiller-deploy -p '{"spec": {"template": {"spec": {"automountServiceAccountToken": true}}}}'

echo "helm init..."
helm init --service-account tiller --upgrade

echo ""
echo "helm status..."
echo ""
echo "Current helm version......"
helm version

echo ""
echo "Current helm repo list......"
helm  repo list

echo ""
echo "=========================================================================="
echo "More info, visit https://my.oschina.net/u/2306127/blog/1619818"
echo "=========================================================================="
echo ""
