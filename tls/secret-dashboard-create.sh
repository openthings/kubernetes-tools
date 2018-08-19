#https://github.com/kubernetes/contrib/blob/master/ingress/controllers/nginx/examples/tls/README.md

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./tls.key -out ./tls.crt -subj "/CN=192.168.199.230"
