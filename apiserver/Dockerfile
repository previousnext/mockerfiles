FROM debian:latest

ADD https://storage.googleapis.com/kubernetes-release/release/v1.9.2/bin/linux/amd64/hyperkube /usr/local/bin/hyperkube
RUN chmod a+x /usr/local/bin/hyperkube

ADD https://storage.googleapis.com/kubernetes-release/release/v1.9.2/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod a+x /usr/local/bin/kubectl

CMD ["/usr/local/bin/hyperkube", "apiserver", "--insecure-bind-address", "0.0.0.0", "--service-cluster-ip-range", "242.0.0.0/16", "--runtime-config", "batch/v2alpha1", "--etcd-servers", "http://127.0.0.1:4001", "--storage-backend", "etcd2", "--storage-media-type", "application/json"]