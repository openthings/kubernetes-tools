mkdir -p /home/superwork/data/ipfs-data/ipfs-docker-export
mkdir -p /home/superwork/data/ipfs-data/ipfs-docker-data

docker run -d --restart=always --name ipfs-node \
  -v /home/superwork/data/ipfs-data/ipfs-docker-export:/export \
  -v /home/superwork/data/ipfs-data/ipfs-docker-data:/data/ipfs \
  -p 8080:8080 -p 4001:4001 -p 127.0.0.1:5001:5001 \
  ipfs/go-ipfs:latest

