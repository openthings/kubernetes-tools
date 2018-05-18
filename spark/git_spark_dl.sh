
echo "***************************************************"
echo "* Kubernetes-tools. https://github.com/openthings *"
echo "* Git clone spark-deep-learning                   *"
echo "***************************************************"

echo "cd ~/openthings"
cd ~/openthings

echo "===================================="
echo "==>> Get spark-deep-learning...     "

git clone https://github.com/openthings/spark-deep-learning.git

cd spark-deep-learning
git remote add upstream https://github.com/databricks/spark-deep-learning.git
git fetch upstream
git merge upstream/master
git push
cd ..


echo "===================================="
echo "Get spark-deep-learning Finished."
echo "Please run build/sbt assembly"
echo "===================================="


