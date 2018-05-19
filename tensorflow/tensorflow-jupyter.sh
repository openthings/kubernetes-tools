echo ""
echo "================================================================="
echo "Running Tensorflow in Docker with jupyter notebook."
echo "More practice at https://my.oschina.net/u/2306127/blog"
echo "Please Visit https://www.tensorflow.org/install/install_linux "
echo "================================================================="
echo ""

nvidia-docker run -it -p 8888:8888 tensorflow/tensorflow:latest-gpu
