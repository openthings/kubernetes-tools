# Create simple volume: gvz00

gluster volume create gvz00 \
10.1.1.193:/zpool/gvz00 \
10.1.1.234:/zpool/gvz00 \
10.1.1.205:/zpool/gvz00 \
10.1.1.112:/zpool/gvz00 \
force
