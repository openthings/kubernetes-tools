wget https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 -O cfssl
wget https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 -O cfssljson 
sudo chmod +x cfssl cfssljson
sudo mv cfssl* /usr/local/bin
