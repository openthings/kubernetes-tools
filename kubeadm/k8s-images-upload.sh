
echo "Uploading k8s-images-1.18.4.zip to node..."

K8S_VERSION="1.18.4"
IMAGES_PATH=/home/supermap/k8s-images-${K8S_VERSION}.zip

echo "Uploading 10.1.1.202"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.202:/home/supermap/

echo "Uploading 10.1.1.203"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.203:/home/supermap/

echo "Uploading 10.1.1.204"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.204:/home/supermap/

###############################################################
echo "Uploading 10.1.1.193"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.193:/home/supermap/

echo "Uploading 10.1.1.234"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.234:/home/supermap/

echo "Uploading 10.1.1.205"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.205:/home/supermap/

echo "Uploading 10.1.1.206"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.112:/home/supermap/

echo "Uploading 10.1.1.150"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.150:/home/supermap/

echo "Uploading 10.1.1.166"
sshpass -p SuperMap scp $IMAGES_PATH supermap@10.1.1.160:/home/supermap/

echo "Upload k8s-images-1.18.4.zip Finished."
