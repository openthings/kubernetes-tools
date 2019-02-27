echo "Create directory for harbor on glusterfs(volume:gvzr00) ..."
echo "Main path: /home/supermap/gvzr00/harbor"
echo ""

HARBO_PATH=/home/supermap/gvzr00/harbor 

echo "Create directory with GlusterFS..."
mkdir ${HARBO_PATH}
mkdir ${HARBO_PATH}/data-harbor-harbor-redis-0
mkdir ${HARBO_PATH}/database-data-harbor-harbor-database-0
mkdir ${HARBO_PATH}/harbor-harbor-chartmuseum
mkdir ${HARBO_PATH}/harbor-harbor-jobservice
mkdir ${HARBO_PATH}/harbor-harbor-registry
echo ""

echo "Change ACL with GlusterFS..."
setfacl -m g::rwx ${HARBO_PATH}
setfacl -m o::rwx ${HARBO_PATH}

setfacl -m g::rwx ${HARBO_PATH}/data-harbor-harbor-redis-0
setfacl -m o::rwx ${HARBO_PATH}/data-harbor-harbor-redis-0

setfacl -m g::rwx ${HARBO_PATH}/database-data-harbor-harbor-database-0
setfacl -m o::rwx ${HARBO_PATH}/database-data-harbor-harbor-database-0

setfacl -m g::rwx ${HARBO_PATH}/harbor-harbor-chartmuseum
setfacl -m o::rwx ${HARBO_PATH}/harbor-harbor-chartmuseum

setfacl -m g::rwx ${HARBO_PATH}/harbor-harbor-jobservice
setfacl -m o::rwx ${HARBO_PATH}/harbor-harbor-jobservice

setfacl -m g::rwx ${HARBO_PATH}/harbor-harbor-registry
setfacl -m o::rwx ${HARBO_PATH}/harbor-harbor-registry
echo ""

echo "Finished."

