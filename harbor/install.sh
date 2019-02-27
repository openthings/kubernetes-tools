# =================================================
# Install a container registry server using harbor.
# https://github.com/goharbor/harbor-helm
# =================================================

git clone https://github.com/goharbor/harbor-helm

cd harbor-helm
git checkout master

helm dependency update
helm install --namespace harbor --name harbor .
