helm install  --namespace monitor --name grafana stable/grafana \
  --set persistence.storageClassName="nfs"
