sudo docker run --detach \
	--hostname podc01.zettariver \
	--publish 4443:443 --publish 880:80 --publish 222:22 \
	--name gitlab \
	--restart always \
        --volume /srv/gitlab/config:/etc/gitlab \
        --volume /srv/gitlab/logs:/var/log/gitlab \
        --volume /srv/gitlab/data:/var/opt/gitlab \
        gitlab/gitlab-ce:latest

#	--volume /home/supermap/gvz00/gitlab/config:/etc/gitlab \
#	--volume /home/supermap/gvz00/gitlab/logs:/var/log/gitlab \
#	--volume /home/supermap/gvz00/gitlab/data:/var/opt/gitlab \
#	gitlab/gitlab-ce:latest
