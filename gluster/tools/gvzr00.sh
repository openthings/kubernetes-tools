# Create replica volume: gvzr00

gluster volume create gvzr00 transport tcp replica 4 \
10.1.1.193:/zpool/gvzr00 \
10.1.1.234:/zpool/gvzr00 \
10.1.1.205:/zpool/gvzr00 \
10.1.1.112:/zpool/gvzr00 \
force

