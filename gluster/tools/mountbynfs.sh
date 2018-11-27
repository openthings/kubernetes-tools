#mount -t nfs -o rw,nosuid,nodev,noexec,nouser,bg,soft,intr,rsize=1048576,wsize=1048576,timeo=10,acregmin=3,acregmax=10,acdirmin=1,acdirmax=5 storage-5:/public-share /mnt/log
mount -t nfs -o rw 10.1.1.201:/gvx /mnt/gvx
