# =================================================
# Install a container registry server using harbor.
# https://github.com/helm/charts/stable/mongodb
# =================================================

#helm install --name my-release \
#  --set mongodbRootPassword=secretpassword,mongodbUsername=my-user,mongodbPassword=my-password,mongodbDatabase=my-database \
#    stable/mongodb

helm install --namespace mongodb --name mongodb \
--set mongodbRootPassword=SuperMap,mongodbUsername=supermap,mongodbPassword=SuperMap,mongodbDatabase=supermap \
./mongo-helm
