kubectl port-forward tf-hub-0 -n kubeflow  8000:8081 &
kubectl port-forward jupyter-supermap -n kubeflow 8888:8888 &

