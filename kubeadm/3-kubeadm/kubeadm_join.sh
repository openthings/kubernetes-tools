# Create discovery-token-ca-cert-hash
#openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'

# 重新创建join的token.
#  kubeadm token create --print-join-command --ttl 0

sudo kubeadm join --token lnmxhl.ad2zwainbxmk4fuo 192.168.199.230:6443 --discovery-token-ca-cert-hash sha256:f2e040119cba13093383d65d41cfd216fb075b6424cc0e715143d2312d11578c
#  --discovery-token-unsafe-skip-ca-verification
