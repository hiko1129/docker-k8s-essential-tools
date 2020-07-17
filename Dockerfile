FROM alpine:3.12

RUN apk add --no-cache curl

COPY script script

RUN ./script/install_kubectl.sh
RUN ./script/install_kubectx.sh
RUN ./script/install_stern.sh
RUN ./script/install_helm.sh
