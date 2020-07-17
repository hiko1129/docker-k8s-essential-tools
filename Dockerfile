FROM alpine:3.12

RUN apk add --no-cache curl

# install kubectl
ENV KUBECTL_VERSION v1.18.0
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

ENV KUBECTX_VERSION v0.9.1
# install kubectx
ENV KUBECTX_FILE_NAME kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz
RUN wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/${KUBECTX_FILE_NAME} && \
    tar -zxvf ${KUBECTX_FILE_NAME} && \
    chmod +x ./kubectx && \
    mv ./kubectx /usr/local/bin/kubectx && \
    rm ${KUBECTX_FILE_NAME}

# install kubens
ENV KUBENS_FILE_NAME kubens_${KUBECTX_VERSION}_linux_x86_64.tar.gz
RUN wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/${KUBENS_FILE_NAME} && \
    tar -zxvf ${KUBENS_FILE_NAME} && \
    chmod +x ./kubens && \
    mv ./kubens /usr/local/bin/kubens && \
    rm ${KUBENS_FILE_NAME}

# install stern
ENV STERN_VERSION 1.11.0
RUN wget https://github.com/wercker/stern/releases/download/${STERN_VERSION}/stern_linux_amd64 -O ./stern && \
    chmod +x ./stern && \
    mv ./stern /usr/local/bin/stern

# install helm
ENV HELM_VERSION v3.2.2
ENV HELM_FILE_NAME=helm-${HELM_VERSION}-linux-amd64.tar.gz
RUN wget https://get.helm.sh/${HELM_FILE_NAME} && \
    tar -zxvf ${HELM_FILE_NAME} && \
    chmod +x ./linux-amd64/helm && \
    mv ./linux-amd64/helm /usr/local/bin/helm && \
    rm ${HELM_FILE_NAME}
