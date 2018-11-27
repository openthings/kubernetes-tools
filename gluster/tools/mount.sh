sudo mkdir /home/supermap/gvxv
sudo mkdir /home/supermap/gvxrv
sudo mkdir /home/supermap/gvxsv

sudo mount -t glusterfs 10.1.1.201:/gvx /home/supermap/gvxv
sudo mount -t glusterfs 10.1.1.201:/gvxr /home/supermap/gvxrv
sudo mount -t glusterfs 10.1.1.201:/gvxs /home/supermap/gvxsv
