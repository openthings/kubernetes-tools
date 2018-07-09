
echo ""
echo "Pull tiller images......"
#docker pull gcr.io/kubernetes-helm/tiller:v2.8.1
docker pull gcr.io/kubernetes-helm/tiller:v2.9.1

kubectl create -f helm-rbac-config.yaml

echo ""
echo "helm init, will add tiller pod to k8s......"
# helm init
helm init --service-account tiller

echo "Patch deployment..."
# for 2.8.1, kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'      
# for 2.9.1
kubectl -n kube-system patch deployment tiller-deploy -p '{"spec": {"template": {"spec": {"automountServiceAccountToken": true}}}}'

echo ""
echo "Check tiller pod of kubernetes......"
kubectl -n kube-system get pods | grep tiller

echo ""
echo "Update helm repo......"
helm repo update

echo ""
echo "Current helm version......"
helm version
echo "More info, visit https://my.oschina.net/u/2306127/blog/1619818"
echo "Helm User Guide, https://docs.helm.sh/using_helm/#quickstart-guide"
echo ""

