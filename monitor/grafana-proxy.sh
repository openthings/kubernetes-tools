export POD_NAME=$(kubectl get pods --namespace monitor -l "app=grafana,component=" -o jsonpath="{.items[0].metadata.name}")
     kubectl --namespace monitor port-forward $POD_NAME 3000
