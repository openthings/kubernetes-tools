
echo ""
echo "============================================================"
echo "cd ~/openthings"
cd ~/openthings
echo ""

echo "wget ksonnet 0.10.2 and untar......"
wget -c https://github.com/ksonnet/ksonnet/releases/download/v0.10.2/ks_0.10.2_linux_amd64.tar.gz
tar -vxf ks_0.10.2_linux_amd64.tar.gz
cd ks_0.10.2_linux_amd64
echo ""

echo "Copy ks to /usr/local/bin......"
sudo cp ks /usr/local/bin
echo ""
echo "============================================================"
echo "Please visit https://my.oschina.net/u/2306127/blog/1808582"
echo "============================================================"
echo ""

