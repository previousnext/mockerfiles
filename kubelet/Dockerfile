FROM alpine:latest

RUN apk --no-cache add ca-certificates

ADD config /root/.kube/config

ADD virtual-kubelet /usr/bin/virtual-kubelet
RUN chmod a+x /usr/bin/virtual-kubelet

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

CMD ["/entrypoint.sh"]