FROM debian:latest

ADD https://storage.googleapis.com/kubernetes-release/release/v1.9.2/bin/linux/amd64/hyperkube /usr/local/bin/hyperkube
RUN chmod a+x /usr/local/bin/hyperkube

CMD ["/usr/local/bin/hyperkube", "scheduler", "--master", "http://localhost:8080"]