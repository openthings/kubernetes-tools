export POD_NAME=$(kubectl get pods --namespace ks-dev -l "app=guestbook-ui" -o jsonpath="{.items[0].metadata.name}")

kubectl --namespace ks-dev port-forward $POD_NAME 8003:80
