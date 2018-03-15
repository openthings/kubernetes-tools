docker run -d --name ethereum-node \
	-v /media/smw/App/ethereum:/root \
        -p 8545:8545 -p 30303:30303 \
	ethereum/client-go --rpc --rpcaddr 0.0.0.0
#	--rpc --rpcaddr 0.0.0.0 \
#        openthings/go-ethereum
