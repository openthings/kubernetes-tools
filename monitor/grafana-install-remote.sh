helm install  --namespace monitor --name grafana stable/grafana \
  --set persistence.storageClassName="openthings-nfs"
