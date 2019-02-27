#helm install --name gitlab --namespace gitlab gitlab/gitlab \
helm install --name gitlab --namespace gitlab ~/openthings/gitlab \
--set global.hosts.externalIP=10.1.1.202 \
--set global.hosts.domain=core.gitlab.zettariver \
--set certmanager-issuer.email=openthings@163.com
