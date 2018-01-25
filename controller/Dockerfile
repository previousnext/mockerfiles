FROM debian:latest

ADD https://storage.googleapis.com/kubernetes-release/release/v1.9.2/bin/linux/amd64/hyperkube /usr/local/bin/hyperkube
RUN chmod a+x /usr/local/bin/hyperkube

CMD ["/usr/local/bin/hyperkube", "controller-manager", "--master", "http://localhost:8080", "--service-cluster-ip-range", "242.0.0.0/24"]