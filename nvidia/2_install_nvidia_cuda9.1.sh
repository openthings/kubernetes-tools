
echo ""
echo "==========================================================="
echo "Ubuntu 16.04安装NVIDIA的Cuda9.1......"
echo "==========================================================="
echo ""

cd "~/openthings"
echo ""

echo "Get Cuda9.1 package..."
wget -c https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux
echo ""

echo "Get Cuda9.1 patch 2018.5.5..."
wget -c https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/3/cuda_9.1.85.3_linux
echo ""

echo "Run Cuda9.1 setup..."
sudo chmod +x cuda_9.1.85_387.26_linux
sudo ./cuda_9.1.85_387.26_linux
echo ""

echo "Run Cuda9.1 patch-2018.5.5 setup..."
sudo chmod +x cuda_9.1.85_387.26_linux
sudo ./cuda_9.1.85.3_linux
echo ""

echo ""
echo "==========================================================="
echo "More help, at https://my.oschina.net/u/2306127/blog/1801491"
echo "==========================================================="
echo ""



