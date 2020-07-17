HELM_VERSION=v3.2.2
HELM_FILE_NAME=helm-${HELM_VERSION}-linux-amd64.tar.gz

wget https://get.helm.sh/${HELM_FILE_NAME}
tar -zxvf ${HELM_FILE_NAME}
chmod +x ./linux-amd64/helm
mv ./linux-amd64/helm /usr/local/bin/helm
rm ${HELM_FILE_NAME}
rm -rf linux-amd64
