echo "###################################################################"
echo "Jupyterhub for kubernetes images upload to nodes."
echo "-------------------------------------------------------------------"

export  images_path=/home/supermap/

echo "Uploading 10.1.1.201"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.201:/home/supermap/

echo "Uploading 10.1.1.202"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.202:/home/supermap/

echo "Uploading 10.1.1.203"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.203:/home/supermap/

echo "Uploading 10.1.1.142"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.142:/home/supermap/

echo "Uploading 10.1.1.193"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.193:/home/supermap/

echo "Uploading 10.1.1.234"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.234:/home/supermap/

echo "Uploading 10.1.1.205"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.205:/home/supermap/

echo "Uploading 10.1.1.112"
time sshpass -p SuperMap scp ${images_path}jupyterhub-k8s-images.zip supermap@10.1.1.112:/home/supermap/

echo "Upload jupyterhub-k8s-images.zip Finished."
