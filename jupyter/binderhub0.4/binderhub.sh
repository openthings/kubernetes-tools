#helm install ./jupyterhub  --name=binderhub --namespace=binderhub -f secret.yaml -f config.yaml
#helm install jupyterhub/binderhub --version=v0.1.0-85ac189 --name=binderhub2 --namespace=binderhub2 -f secret.yaml -f config.yaml

helm install ./jupyterhub  --name=binderhub --namespace=binderhub
