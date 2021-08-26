IMAGES_PATH=~/openthings/kubeflow/kfimgs1.2
#mkdir $IMAGES_PATH

#######deployent ########################
docker load -i $IMAGES_PATH/admission-webhook.tar
docker load -i $IMAGES_PATH/argoui.tar
docker load -i $IMAGES_PATH/cache-deployer.tar
docker load -i $IMAGES_PATH/cache-server.tar
docker load -i $IMAGES_PATH/centraldashboard.tar
docker load -i $IMAGES_PATH/jupyter-web-app.tar
docker load -i $IMAGES_PATH/katib-controller.tar
docker load -i $IMAGES_PATH/katib-db-manager.tar
docker load -i $IMAGES_PATH/mysql8.tar
docker load -i $IMAGES_PATH/katib-ui.tar
docker load -i $IMAGES_PATH/python3.7.tar
docker load -i $IMAGES_PATH/mysql8.0.3.tar
docker load -i $IMAGES_PATH/envoy.tar
docker load -i $IMAGES_PATH/ml_metadata_store_server.tar
docker load -i $IMAGES_PATH/metadata-writer.tar
docker load -i $IMAGES_PATH/minio.tar
docker load -i $IMAGES_PATH/api-server.tar
docker load -i $IMAGES_PATH/persistenceagent.tar
docker load -i $IMAGES_PATH/scheduledworkflow.tar
docker load -i $IMAGES_PATH/frontend.tar
docker load -i $IMAGES_PATH/viewer-crd-controller.tar
docker load -i $IMAGES_PATH/visualization-server.tar
docker load -i $IMAGES_PATH/mpi-iperator.tar
docker load -i $IMAGES_PATH/mxnet-iperator.tar
docker load -i $IMAGES_PATH/mysql5.6.tar
docker load -i $IMAGES_PATH/notebook-controller.tar
docker load -i $IMAGES_PATH/profile-controller.tar
docker load -i $IMAGES_PATH/pytorch-iperator.tar
docker load -i $IMAGES_PATH/seldon-core-iperator.tar
docker load -i $IMAGES_PATH/spark-iperator.tar
docker load -i $IMAGES_PATH/spartakus-amd64.tar
docker load -i $IMAGES_PATH/tf_operator.tar
docker load -i $IMAGES_PATH/workflow-controller.tar

#statefulset 
docker load -i $IMAGES_PATH/ingress-setup.tar
docker load -i $IMAGES_PATH/application.tar
docker load -i $IMAGES_PATH/kube-rbac-proxy.tar
docker load -i $IMAGES_PATH/metacontroller.tar