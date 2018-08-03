部署步骤：

1.根据k8s环境修改imanager-config.yaml里面的值：

a)iManager相关配置：（ConfigMap:imanager-config）

	k8s.master.url: https://192.168.17.139:6443		#k8s master的url
  	kibana.url: http://192.168.17.139:30003			#kibana的访问地址，这里只需要修改对应的ip即可
	kibana.port: "30003"							#kibana服务的端口，保持默认
  	access.entry.ip: 192.168.17.139					#外部访问服务的ip
  	image.pull.policy: Always						#镜像拉取策略.[Always|Never|IfNotPresent]
  	grafana.service.name: grafana					#保持默认
  	gateway.service.name: iserver-gateway			#保持默认
  	registry: registry.cn-beijing.aliyuncs.com		#镜像仓库地址
  	gis.application.limit.cpu: "1"					#微服务中gisApplication容器的cpu限制

b)k8s Token配置：（Secret:kubernetes-dashboard-token）

	token:填写自己k8s环境的token

c)告警配置：（ConfigMap:alertmanager-config）

	配置自己的企业微信或其他接收告警的信息

2.运行startup.sh    (默认namespace是supermap,数据存储目录默认是/tmp/nfsData)
或者 startup.sh --namespace supermap --volumePath /var/lib/docker/nfsData(数据存储目录，可自己指定)
 
---------------------

清除创建的资源，请执行 shutdown.sh
