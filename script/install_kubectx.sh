KUBECTX_VERSION=v0.9.1

KUBECTX_FILE_NAME=kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz
wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/${KUBECTX_FILE_NAME}
tar -zxvf ${KUBECTX_FILE_NAME}
chmod +x ./kubectx
mv ./kubectx /usr/local/bin/kubectx
rm ${KUBECTX_FILE_NAME}

KUBENS_FILE_NAME=kubens_${KUBECTX_VERSION}_linux_x86_64.tar.gz
wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/${KUBENS_FILE_NAME}
tar -zxvf ${KUBENS_FILE_NAME}
chmod +x ./kubens
mv ./kubens /usr/local/bin/kubens
rm ${KUBENS_FILE_NAME}

rm LICENSE
