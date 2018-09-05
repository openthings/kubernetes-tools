#/bin/dash

fatal() {
  echo "$1"
  exit 1
}

warn() {
  echo "$1"
}

# Find a source mirror near you which supports rsync on
# https://launchpad.net/ubuntu/+archivemirrors
# rsync://<iso-country-code>.rsync.archive.ubuntu.com/ubuntu should always work
#RSYNCSOURCE=rsync://archive.ubuntu.mirror.isp.com/ubuntu
# 实验发现rsync不通了，用下面这个：
RSYNCSOURCE=archive.ubuntu.com::ubuntu

# Define where you want the mirror-data to be on your mirror
#BASEDIR=/var/www/ubuntuarchive/ 
# 改成自己的目录：
#BASEDIR=/media/smw/Appdata/ipfs-export/mirrors/ubuntu
BASEDIR=/srv/pvc-208f84ad-b005-11e8-a684-3085a99c4bbf/data/mirrors/ubuntu

echo "From:" $RSYNCSOURCE
echo "To:" $BASEDIR

if [ ! -d ${BASEDIR} ]; then
  warn "${BASEDIR} does not exist yet, trying to create it..."
  mkdir -p ${BASEDIR} || fatal "Creation of ${BASEDIR} failed."
fi

rsync --recursive --times --links --safe-links --hard-links \
  --stats \
  --exclude "Packages*" --exclude "Sources*" \
  --exclude "Release*" --exclude "InRelease" \
  ${RSYNCSOURCE} ${BASEDIR} || fatal "First stage of sync failed."

rsync --recursive --times --links --safe-links --hard-links \
  --stats --delete --delete-after \
  ${RSYNCSOURCE} ${BASEDIR} || fatal "Second stage of sync failed."

date -u > ${BASEDIR}/project/trace/$(hostname -f)
