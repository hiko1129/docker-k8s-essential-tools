STERN_VERSION=1.11.0
wget https://github.com/wercker/stern/releases/download/${STERN_VERSION}/stern_linux_amd64 -O ./stern
chmod +x ./stern
mv ./stern /usr/local/bin/stern

