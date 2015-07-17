FROM debian:jessie
MAINTAINER Christophe Burki, christophe.burki@gmail.com

RUN apt-get update && apt-get install -y \
    locales

# Configure locales and timezone
RUN locale-gen en_US.UTF-8
RUN locale-gen en_GB.UTF-8
RUN locale-gen fr_CH.UTF-8
RUN cp /usr/share/zoneinfo/Europe/Zurich /etc/localtime
RUN echo "Europe/Zurich" > /etc/timezone

RUN mkdir -p /data
VOLUME ["/data"]

CMD ["/usr/bin/tail", "-f", "/dev/null"]
