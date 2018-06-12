export POD_NAME=$(kubectl get pods --namespace monitor -l "app=prometheus,component=node-exporter" -o jsonpath="{.items[0].metadata.name}")
  kubectl --namespace monitor port-forward $POD_NAME 9100
