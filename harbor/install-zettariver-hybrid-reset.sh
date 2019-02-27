# =================================================
# Install a container registry server using harbor.
# https://github.com/goharbor/harbor-helm
# =================================================

echo  "Reset the Harbor Installation, All data will be lost!"

echo "Delete Harbor from helm..."
helm del --purge harbor

echo "Remove the pvc and pv..."
./pv-remove.sh

echo "Reinstall harbor by helm chart: harbor-helm-zettariver-hybrid"
helm install --namespace harbor --name harbor ./harbor-helm-zettariver-hybrid

echo "Recreate pvc and pv..."
cd hostpath-zettariver
./pv-install.sh

echo  "Finished."
echo ""

