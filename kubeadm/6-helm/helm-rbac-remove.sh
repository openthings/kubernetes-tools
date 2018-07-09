echo "Remove RBAC for Helm,include:"
echo "	serviceaccount tiller"
echo "	ClusterRoleBinding tiller"
echo "	tiller-cluster-rule"

kubectl delete ClusterRoleBinding tiller-cluster-rule
kubectl delete ClusterRoleBinding tiller
kubectl delete serviceaccount tiller

echo "=============================="
echo ""

