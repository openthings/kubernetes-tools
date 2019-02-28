export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace mongodb mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)
echo "MONGODB_ROOT_PASSWORD: "$MONGODB_ROOT_PASSWORD

#kubectl run --namespace mongodb mongodb-client --rm --tty -i --restart='Never' --image bitnami/mongodb --command -- mongo admin \
#--host 10.1.1.202 \
#--overrides='{"spec": {"nodeName": "podc02" }}' \
#--authenticationDatabase admin -u root -p $MONGODB_ROOT_PASSWORD

mongo --host 10.1.1.16 --authenticationDatabase admin -u root -p $MONGODB_ROOT_PASSWORD

kubectl run --namespace mongodb mongodb-client --tty -i --restart='always' --image bitnami/mongodb

#kubectl run hello-world --replicas=1 --labels="run=load-balancer-example" --image=gcr.io/google-samples/node-hello:1.0  --port=8080 --overrides='{"apiVersion":"v1","spec":{"affinity":{"nodeAffinity":{"requiredDuringSchedulingIgnoredDuringExecution":{"nodeSelectorTerms":[{"matchFields":[{"key":"metadata.name","operator":"In","values":["my-chosen-node-01"]}]}]}}}}}'
