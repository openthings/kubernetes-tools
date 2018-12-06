echo "==================================================================="
echo "Load Jupyterhub for Kubernetes images from tar."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"

echo "###################################################################"
echo "Jupyterhub for kubernetes system images."
echo "-------------------------------------------------------------------"

export  images_path=/home/supermap/jupyterhub-k8s-images/

echo "A1.<< jupyterhub/k8s-hub:774d36f"
sudo docker load -i ${images_path}A1-jupyterhub-k8s-hub-774d36f.tar
echo ""

echo "A2.<< jupyterhub/configurable-http-proxy:3.1.1"
sudo docker load -i ${images_path}A2-jupyterhub-configurable-http-proxy-3.1.1.tar
echo ""

echo "A3.<< quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.21.0"
sudo docker load -i ${images_path}A3-quay.io-kubernetes-ingress-controller-nginx-ingress-controller-0.21.0.tar
echo ""

echo "A4.<< jetstack/kube-lego:canary"
sudo docker load -i ${images_path}A4-jetstack-kube-lego-canary.tar
echo ""

echo "A5.<< jupyterhub/k8s-network-tools:cc865bd"
sudo docker load -i ${images_path}A5-jupyterhub-k8s-network-tools-cc865bd.tar
echo ""

echo "A6.<< jupyterhub/k8s-singleuser-sample:cc865bd"
sudo docker load -i ${images_path}A6-jupyterhub-k8s-singleuser-sample-cc865bd.tar
echo ""

echo "A7.<< jupyterhub/k8s-image-awaiter:cc865bd"
sudo docker load -i ${images_path}A7-jupyterhub-k8s-image-awaiter:cc865bd.tar
echo ""

echo "A8.<< jupyterhub/k8s-pod-culler:0.7.0"
sudo docker load -i ${images_path}A8-jupyterhub-k8s-pod-culler-0.7.0.tar
echo ""

#docker pull gcr.io/google_containers/pause:3.0

echo "==================================================================="
echo "Load JupyterHub for kubernetes images Finished."
echo "This tool created by https://my.oschina.net/u/2306127"
echo "Please visit https://github.com/openthings/kubernetes-tools"
echo "==================================================================="
echo ""

