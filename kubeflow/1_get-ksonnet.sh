
echo ""
echo "============================================================"
echo "cd ~/openthings"
cd ~/openthings
echo ""

#https://github.com/ksonnet/ksonnet/releases/download/v0.13.1/ks_0.13.1_linux_amd64.tar.gz
echo "wget ksonnet 0.13.1 and untar......"
echo ""
wget -c https://github.com/ksonnet/ksonnet/releases/download/v0.13.1/ks_0.13.1_linux_amd64.tar.gz
tar -vxf ks_0.13.1_linux_amd64.tar.gz
cd ks_0.13.1_linux_amd64
echo ""

echo "Copy ks to /usr/local/bin......"
sudo cp ks /usr/local/bin
echo ""
echo "============================================================"
echo "Please visit https://my.oschina.net/u/2306127/blog/1808582"
echo "============================================================"
echo ""

