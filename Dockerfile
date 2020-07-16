FROM alpine:3.12

RUN apk add --no-cache curl

ENV KUBECTL_VERSION v1.18.0
ENV KUBECTX_VERSION v0.9.1
ENV STERN_VERSION 1.11.0

# install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# install kubectx
ENV KUBECTX_FILE_NAME kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz
RUN wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/${KUBECTX_FILE_NAME} && \
    tar -zxvf ${KUBECTX_FILE_NAME} && \
    chmod +x ./kubectx && \
    mv kubectx /usr/local/bin/kubectx

# install kubens
ENV KUBENS_FILE_NAME kubens_${KUBECTX_VERSION}_linux_x86_64.tar.gz
RUN wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/${KUBENS_FILE_NAME} && \
    tar -zxvf ${KUBENS_FILE_NAME} && \
    chmod +x ./kubens && \
    mv kubens /usr/local/bin/kubens

# install stern
RUN wget https://github.com/wercker/stern/releases/download/${STERN_VERSION}/stern_linux_amd64 -O ./stern && \
    chmod +x ./stern && \
    mv ./stern /usr/local/bin/stern
