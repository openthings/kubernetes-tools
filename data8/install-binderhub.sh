#helm install ./jupyterhub  --name=binderhub --namespace=binderhub -f secret.yaml -f config.yaml
helm install ./jupyterhub  --name=binderhub --namespace=binderhub
