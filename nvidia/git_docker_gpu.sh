
echo "***************************************************"
echo "* Kubernetes-tools. https://github.com/openthings *"
echo "* Git clone Docker-NVIDIA project for GPU support *"
echo "***************************************************"

echo "cd ~/openthings"
cd ~/openthings

echo "===================================="
echo "==>> Get nvidia-container-runtime..."

git clone https://github.com/openthings/nvidia-container-runtime.git

cd nvidia-container-runtime
git remote add upstream https://github.com/NVIDIA/nvidia-container-runtime.git
git fetch upstream
git merge upstream/master
git push
cd ..

echo "===================================="
echo "==>> Get nvidia-docker..."

git clone https://github.com/openthings/nvidia-docker.git

cd nvidia-docker
git remote add upstream https://github.com/NVIDIA/nvidia-docker.git
git fetch upstream
git merge upstream/master
git push
cd ..

echo "===================================="
echo "==>> Get k8s-device-plugin..."

git clone https://github.com/openthings/k8s-device-plugin.git

cd k8s-device-plugin
git remote add upstream https://github.com/NVIDIA/k8s-device-plugin.git
git fetch upstream
git merge upstream/master
git push
cd ..

echo "===================================="
echo "Get NVIDIA Docker Projects Finished."
echo "===================================="


