echo ""
echo "Install certbot..."
echo "https://certbot.eff.org/lets-encrypt/ubuntuxenial-other"
echo ""

apt-get update
apt-get install software-properties-common
add-apt-repository ppa:certbot/certbot
apt-get update
apt-get install certbot 
