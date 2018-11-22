#sudo apt install zfsutils-linux
#zpool create zpool /dev/sdb

#dd if=/dev/zero of=/home/supermap/zcachex.img bs=1M count=40960
#sudo zpool add zpool cache /home/supermap/zcachex.img -f

# dd if=/dev/zero of=/home/supermap/zlogx.img bs=1M count=40960
# sudo zpool add zpool log /home/supermap/zlogx.img -f
# sudo zfs create /zpool/data
# sudo zfs set quota=10G zpool/data
# sudo zfs set compression=on mypool/projects

#sudo dd if=/dev/zero of=/zpool/testx.img bs=1M count=20480
#sudo dd if=testx.img of=/zpool/test2.img bs=1M count=20480
#sudo dd if=/zpool/test2.img of=/dev/null bs=1M count=20480
#time sudo cp test2.img /zpool/test3.img
