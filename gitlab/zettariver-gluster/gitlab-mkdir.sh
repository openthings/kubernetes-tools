echo "Create directory for GitLab on glusterfs(volume:gvzr00) ..."
echo "Main path: /home/supermap/gvzr00/gitlab"
echo ""

GITLAB_PATH=/home/supermap/gvzr00/gitlab

echo "Create directory with GlusterFS..."
mkdir ${GITLAB_PATH}
mkdir ${GITLAB_PATH}/gitlab-gitlab-ce-data
mkdir ${GITLAB_PATH}/gitlab-gitlab-ce-etc
echo ""

echo "Change ACL with GlusterFS..."
setfacl -m g::rwx ${GITLAB_PATH}
setfacl -m o::rwx ${GITLAB_PATH}

setfacl -m g::rwx ${GITLAB_PATH}/gitlab-gitlab-ce-data
setfacl -m o::rwx ${GITLAB_PATH}/gitlab-gitlab-ce-data

setfacl -m g::rwx ${GITLAB_PATH}/gitlab-gitlab-ce-etc
setfacl -m o::rwx ${GITLAB_PATH}/gitlab-gitlab-ce-etc
echo ""

echo "Finished."

