FROM busybox:latest
MAINTAINER Christophe Burki, christophe.burki@gmail.com

RUN mkdir -p /data
VOLUME ["/data"]

CMD ["/bin/tail", "-f", "/dev/null"]
