
echo "===================================================="
echo "Prepare ..."

apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

https_proxy=10.1.1.174:9999 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
   "deb https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"

echo "===================================================="
echo "Install docker-ce=18.06.1~ce~3-0~ubuntu ..."
apt update
apt install docker-ce=18.06.1~ce~3-0~ubuntu -y
echo "docker-ce hold" | sudo dpkg --set-selections

echo "===================================================="
echo "Change native.cgroupdriver=systemd ..."
cat << EOF > /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"]
}
EOF

echo "===================================================="
echo "Restart docker"
usermod -aG docker supermap
systemctl restart docker

echo "Finished install docker-ce=18.06.1~ce~3-0~ubuntu."
echo "Get info, Please use: sudo docker info"
echo "This tools builded by https://github.com/openthings"
echo "===================================================="

