# Create replica volume: gvzr01

gluster volume create gvzr01 replica 3 \
10.1.1.201:/zpool/gvzr01 \
10.1.1.202:/zpool/gvzr01 \
10.1.1.203:/zpool/gvzr01 

