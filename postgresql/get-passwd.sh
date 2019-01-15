echo "Get PGPASSWORD="

PGPASSWORD=$(kubectl get secret --namespace stolon waxen-seal-stolon -o jsonpath="{.data.pg_su_password}" | base64 --decode; echo)

echo $PGPASSWORD
