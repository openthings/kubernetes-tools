echo ""
echo "================================================================="
echo "Create conda env for Tensorflow, python 3.6.5 ..."
conda create --yes -n tensorflow pip python=3.6.5
source activate tensorflow
echo ""

echo ""
echo "================================================================="
echo "Install Tensorflow 1.8.0 with GPU support."
pip install --ignore-installed --upgrade \
	https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.8.0-cp36-cp36m-linux_x86_64.whl
echo "================================================================="
echo "More practice at https://my.oschina.net/u/2306127/blog"
echo "More info,Visit https://www.tensorflow.org/install/install_linux "
echo "================================================================="
echo ""

