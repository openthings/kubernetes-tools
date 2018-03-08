echo "=========================================================="
echo "Setup Spark pods on Kubernetes......"
echo "This tool is developing,not any warrants!"
echo "=========================================================="

echo "Create namespace spark-cluster..."
kubectl create -f namespace/namespace-spark-cluster.yaml
echo ""

echo "Create Spark master controller and service..."
kubectl create -f spark-master-controller.yaml --namespace=spark-cluster
kubectl create -f spark-master-service.yaml --namespace=spark-cluster
echo ""

echo "Create Spark WebUI controller and service..."
kubectl create -f spark-ui-proxy-controller.yaml --namespace=spark-cluster
kubectl create -f spark-ui-proxy-service.yaml --namespace=spark-cluster
echo ""

echo "Create Spark worker controller..."
kubectl create -f spark-worker-controller.yaml --namespace=spark-cluster
echo ""

echo "========================================"
kubectl create -f zeppelin-controller.yaml --namespace=spark-cluster
kubectl create -f zeppelin-service.yaml --namespace=spark-cluster

echo "=========================================================="
echo "This tool maked by openthings, not warrants."
echo "Source from https://github.com/openthings/kubernetes-tools"
echo "Please visit https://my.oschina.net/u/2306127/blog/1628082"
echo "=========================================================="
echo ""

kubectl get pod --namespace=spark-cluster -o wide
kubectl get service --namespace=spark-cluster -o wide
