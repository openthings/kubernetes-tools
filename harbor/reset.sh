helm del --purge harbor

cd harbor-helm
helm install --namespace harbor --name harbor .
