bin/spark-submit \
    --master k8s://https://192.168.199.249:6443 \
    --deploy-mode cluster \
    --name spark-pi \
    --class org.apache.spark.examples.SparkPi \
    --conf spark.executor.instances=3 \
    --conf spark.kubernetes.container.image=openthings/spark:2.3 \
    --conf spark.kubernetes.driver.pod.name=spark-pi-driver \
    --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
    local:///opt/spark/examples/jars/spark-examples_2.11-2.3.0.jar

