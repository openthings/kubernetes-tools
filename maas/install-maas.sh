echo ""
echo "MAAS is a bare metal install service for Ubuntu."
echo ""

echo "Setup MAAS for you..."
echo "Reference https://my.oschina.net/u/2306127/blog/2169463"
echo "MAAS provided by Ubuntu, these tool by openthings,2018.10."
echo ""

sudo apt update
sudo apt install maas
sudo maas init

echo "Please visit http://<your.maas.ip>:5240/MAAS/"
