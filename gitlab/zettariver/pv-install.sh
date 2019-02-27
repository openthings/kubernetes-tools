echo "Delete pvc..."
kubectl delete -n gitlab pvc/gitlab-gitlab-ce-data
kubectl delete -n gitlab pvc/gitlab-gitlab-ce-etc
echo ""

echo "Delete pv..."
kubectl delete -n gitlab pv/gitlab-gitlab-ce-data
kubectl delete -n gitlab pv/gitlab-gitlab-ce-etc
echo ""

echo "Create pv and pvc..."
kubectl apply -f 0a-glusterfs-gvzr00-endpoint.yaml
kubectl apply -f 0b-glusterfs-gvzr00-service.yaml

kubectl apply -f 1a-pv-gitlab-gitlab-ce-data.yaml
kubectl apply -f 1b-pvc-gitlab-gitlab-ce-data.yaml

kubectl apply -f 2a-pv-gitlab-gitlab-ce-etc.yaml
kubectl apply -f 2b-pvc-gitlab-gitlab-ce-etc.yaml

echo "Finished."
